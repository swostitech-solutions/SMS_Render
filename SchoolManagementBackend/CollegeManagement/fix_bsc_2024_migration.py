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

def fix_bsc_2024_migration():
    print("Starting Fix for BSC 2024-2028 (Migrate to 3rd Semester + Add Fees)...")

    # 1. FIND TARGET SEMESTER (3rd Semester)
    # We must ensure we pick the "3rd Semester" belonging to THIS batch/course
    target_sem = Semester.objects.filter(
        batch__batch_code="2024-2028",
        course__course_name__icontains="BSC",
        semester_description__iexact="3rd Semester"
    ).first()
    
    if not target_sem:
        print("Error: '3rd Semester' object not found for BSC 2024-2028. Cannot migrate.")
        return
        
    print(f"Target Semester Found: {target_sem.semester_description} (ID: {target_sem.id})")

    # 2. FIND TARGET ACADEMIC YEAR (2nd Year)
    # 3rd Semester usually belongs to 2nd Year.
    target_ay = AcademicYear.objects.filter(
        batch__batch_code="2024-2028",
        academic_year_code__icontains="2nd"
    ).first()
    
    if not target_ay:
         print("Error: '2nd Year' Academic Year object not found.")
         return
         
    print(f"Target Academic Year Found: {target_ay.academic_year_code} (ID: {target_ay.id})")

    # 3. FIND STUDENTS
    # Active students in 2024-2028 BSC
    students_course = StudentCourse.objects.filter(
        batch__batch_code="2024-2028",
        course__course_name__icontains="BSC",
        is_active=True
    ).select_related('student', 'fee_group')
    
    print(f"Found {students_course.count()} active students to update.")

    updated_count = 0
    fees_created_count = 0
    
    with transaction.atomic():
        for sc in students_course:
            student = sc.student
            
            # --- A. UPDATE STUDENT STATUS (MIGRATE) ---
            # Update StudentCourse
            if sc.semester_id != target_sem.id:
                sc.semester = target_sem
                sc.academic_year = target_ay # Also update Acad Year to 2nd Year
                sc.save()
                
            # Update StudentRegistration
            if student.semester_id != target_sem.id:
                student.semester = target_sem
                student.academic_year = target_ay
                student.save()
            
            updated_count += 1
            
            # --- B. GENERATE 3RD SEMESTER FEES ---
            # Rule: 1.15L + 60k
            fees_to_add = {"Course Fee": 115000, "Hostel Fee": 60000}
            
            # Check if exists
            exists = StudentFeeDetail.objects.filter(
                student=student,
                semester=target_sem
            ).exists()
            
            if exists:
                # print(f"  Fees for 3rd Sem already exist for {student.first_name}")
                pass
            else:
                # Get Fee Rules (to link FK)
                rules = FeeStructureDetail.objects.filter(fee_structure_master=sc.fee_group)
                if not rules.exists():
                     print(f"  Warning: No fee rules for {student.first_name}. Skipping fee gen.")
                     continue
                
                for el_name, amount in fees_to_add.items():
                    # Find matching rule
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
                        academic_year=target_ay, # 2nd Year
                        semester=target_sem,     # 3rd Sem
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
                
    print(f"Success! Migrated {updated_count} students to 3rd Semester.")
    print(f"Generated 3rd Semester fees for {fees_created_count} students.")

if __name__ == "__main__":
    fix_bsc_2024_migration()
