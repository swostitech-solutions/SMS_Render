import os
import sys
from decimal import Decimal

import django
from django.db import transaction


sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "Swostitech_Acadix.settings")
django.setup()

from Acadix.models import FeeStructureDetail, FeeStructureMaster, Semester, StudentCourse, StudentFeeDetail


TARGET_ORGANIZATION_ID = 1
TARGET_BRANCH_ID = 1
TARGET_FEE_GROUP_ID = 9


def semester_slots(detail, frequency_period):
    slots = [
        detail.semester_1,
        detail.semester_2,
        detail.semester_3,
        detail.semester_4,
        detail.semester_5,
        detail.semester_6,
        detail.semester_7,
        detail.semester_8,
    ]
    if frequency_period and 0 < frequency_period < 12:
        slots = slots[:frequency_period]
    return [semester_id for semester_id in slots if semester_id]


def get_target_students():
    zero_fee_students = []
    student_courses = (
        StudentCourse.objects.filter(
            organization_id=TARGET_ORGANIZATION_ID,
            branch_id=TARGET_BRANCH_ID,
            fee_group_id=TARGET_FEE_GROUP_ID,
            is_active=True,
        )
        .select_related(
            "student",
            "organization",
            "branch",
            "department",
            "academic_year",
            "fee_group",
        )
        .order_by("student_id")
    )

    for sc in student_courses:
        active_fee_count = StudentFeeDetail.objects.filter(
            student=sc.student,
            is_active=True,
        ).count()
        if active_fee_count == 0:
            zero_fee_students.append(sc)

    return zero_fee_students


def build_missing_rows(student_course, fee_group, fee_details):
    rows_to_create = []

    for detail in fee_details:
        frequency_period = detail.element_frequency.frequency_period
        sem_ids = semester_slots(detail, frequency_period)
        if not sem_ids:
            continue

        fee_applied_from_instance = Semester.objects.filter(id=sem_ids[0], is_active=True).first()
        if not fee_applied_from_instance:
            continue

        for semester_id in sem_ids:
            semester_instance = Semester.objects.filter(id=semester_id, is_active=True).first()
            if not semester_instance:
                continue

            already_exists = StudentFeeDetail.objects.filter(
                student=student_course.student,
                student_course=student_course,
                fee_group=fee_group,
                fee_structure_details=detail,
                semester=semester_instance,
                is_active=True,
            ).exists()
            if already_exists:
                continue

            rows_to_create.append(
                StudentFeeDetail(
                    student=student_course.student,
                    student_course=student_course,
                    fee_group=fee_group,
                    fee_structure_details=detail,
                    element_name=detail.element_type.element_name,
                    fee_applied_from=fee_applied_from_instance,
                    semester=semester_instance,
                    paid="N",
                    academic_year=student_course.academic_year,
                    organization=student_course.organization,
                    branch=student_course.branch,
                    department=student_course.department,
                    multiplying_factor=1,
                    element_amount=detail.amount or Decimal("0.00"),
                    total_element_period_amount=detail.amount or Decimal("0.00"),
                    paid_amount=Decimal("0.00"),
                    created_by=student_course.student.created_by or 1,
                    updated_by=student_course.student.updated_by or student_course.student.created_by or 1,
                    is_active=True,
                )
            )

    return rows_to_create


def main(apply_changes=False):
    fee_group = FeeStructureMaster.objects.select_related(
        "organization", "branch", "department", "academic_year", "semester"
    ).get(id=TARGET_FEE_GROUP_ID, is_active=True)
    fee_details = list(
        FeeStructureDetail.objects.filter(
            fee_structure_master=fee_group,
            is_active=True,
        ).select_related("element_type", "element_frequency")
    )

    target_students = get_target_students()
    print(f"Fee group: {fee_group.id} - {fee_group.fee_structure_description}")
    print(f"Students with no active StudentFeeDetail rows: {len(target_students)}")
    print(f"Active fee structure detail rows in fee group: {len(fee_details)}")

    total_missing_rows = 0
    sample_preview = []
    per_student_rows = []

    for sc in target_students:
        missing_rows = build_missing_rows(sc, fee_group, fee_details)
        total_missing_rows += len(missing_rows)
        per_student_rows.append((sc, missing_rows))
        if len(sample_preview) < 5:
            sample_preview.append(
                {
                    "student_id": sc.student_id,
                    "student_name": " ".join(
                        part for part in [sc.student.first_name, sc.student.middle_name, sc.student.last_name] if part
                    ),
                    "barcode": sc.student.barcode,
                    "rows_to_create": len(missing_rows),
                }
            )

    print(f"Total missing StudentFeeDetail rows to create: {total_missing_rows}")
    print("Sample preview:")
    for item in sample_preview:
        print(item)

    if not apply_changes:
        print("Dry run only. No changes applied.")
        return

    created_count = 0
    with transaction.atomic():
        for _, missing_rows in per_student_rows:
            if missing_rows:
                StudentFeeDetail.objects.bulk_create(missing_rows, batch_size=200)
                created_count += len(missing_rows)

    print(f"Created StudentFeeDetail rows: {created_count}")


if __name__ == "__main__":
    apply_changes = "--apply" in sys.argv
    main(apply_changes=apply_changes)
