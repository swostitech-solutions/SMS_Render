import os
import django
import sys
from django.db import transaction

# Setup Django
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import (
    StudentCourse, StudentRegistration, Semester, 
    StudentFeeDetail, FeeStructureDetail, AcademicYear
)

def fix_bsc_2023_consistency():
    print("Starting Consistency Fix for BSC 2023-2027 (Enforcing 5th Semester)...")

    # 1. FIND TARGETS
    target_sem = Semester.objects.filter(
        batch__batch_code="2023-2027",
        course__course_name__icontains="BSC",
        semester_description__iexact="5th Semester"
    ).first()
    
    if not target_sem:
        print("Error: '5th Semester' object not found.")
        return

    target_ay = AcademicYear.objects.filter(
        batch__batch_code="2023-2027",
        academic_year_code__icontains="3rd"
    ).first()
    
    if not target_ay:
         print("Error: '3rd Year' Academic Year object not found.")
         return

    print(f"Targeting: {target_sem.semester_description} (ID: {target_sem.id}) | {target_ay.academic_year_code}")

    # 2. FIND STUDENTS
    students_course = StudentCourse.objects.filter(
        batch__batch_code="2023-2027",
        course__course_name__icontains="BSC",
        is_active=True
    ).select_related('student', 'fee_group')
    
    print(f"Found {students_course.count()} active students.")

    updated_count = 0
    fees_created_count = 0
    
    with transaction.atomic():
        for sc in students_course:
            student = sc.student
            is_updated = False
            
            # --- A. ENFORCE SEMESTER / ACADEMIC YEAR ---
            if sc.semester_id != target_sem.id:
                print(f"  Updating {student.first_name}: StudentCourse {sc.semester.semester_description} -> 5th Sem")
                sc.semester = target_sem
                sc.academic_year = target_ay
                sc.save()
                is_updated = True
                
            if student.semester_id != target_sem.id:
                print(f"  Updating {student.first_name}: Registration {student.semester.semester_description} -> 5th Sem")
                student.semester = target_sem
                student.academic_year = target_ay
                student.save()
                is_updated = True
                
            if is_updated: updated_count += 1
            
            # --- B. ENSURE 5TH SEMESTER FEES EXIST ---
            # Rule: Year 3 Fee (1.12L + 53K)
            fees_to_add = {"Course Fee": 112000, "Hostel Fee": 53000}
            
            exists = StudentFeeDetail.objects.filter(student=student, semester=target_sem).exists()
            
            if not exists:
                rules = FeeStructureDetail.objects.filter(fee_structure_master=sc.fee_group)
                if not rules.exists(): continue
                
                for el_name, amount in fees_to_add.items():
                    rule_obj = rules.first()
                    for r in rules:
                        if r.element_type.element_name.lower() in el_name.lower():
                            rule_obj = r
                            break
                            
                    StudentFeeDetail.objects.create(
                        student=student,
                        student_course=sc,
                        organization=sc.organization,
                        branch=sc.branch,
                        department=sc.department,
                        academic_year=target_ay, # 3rd Year
                        semester=target_sem,     # 5th Sem
                        fee_group=sc.fee_group,
                        fee_structure_details=rule_obj,
                        element_name=el_name,
                        element_amount=amount,
                        total_element_period_amount=amount,
                        paid_amount=0,
                        paid='N',
                        is_active=True,
                        created_by=1
                    )
                fees_created_count += 1
                
    print(f"\nSummary:")
    print(f" - Fixed Consistency for {updated_count} students.")
    print(f" - Generated 5th Sem Fees for {fees_created_count} students.")

if __name__ == "__main__":
    fix_bsc_2023_consistency()
