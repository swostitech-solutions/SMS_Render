import os
import django
import sys

# Set up Django environment
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import (
    StudentRegistration, StudentCourse, StudentFeeDetail, 
    FeeStructureMaster, FeeStructureDetail, Semester, AcademicYear
)
from django.db import transaction
from django.db.models import Q

def generate_missing_fees_for_all():
    print("Starting bulk fee generation for all students...")
    
    # Get all active students
    # You might want to filter this further (e.g., only students in specific batches) if needed
    # For now, we process all active students who have a course assigned.
    student_courses = StudentCourse.objects.filter(is_active=True).select_related('student', 'fee_group')
    
    count_processed = 0
    count_skipped = 0

    print(f"Found {student_courses.count()} active students to check.")

    for sc in student_courses:
        student = sc.student
        
        # Skip if no fee group assigned
        if not sc.fee_group:
            print(f"Skipping {student.first_name}: No Fee Group assigned.")
            count_skipped += 1
            continue

        fee_group = sc.fee_group
        
        # Logic to determine which semesters are "missing"
        # If a student is in 4th sem, they should have 1, 2, 3.
        # If a student is in 2nd sem, they should have 1.
        # We need to map the current semester to "previous" semesters.
        
        current_sem_name = sc.semester.semester_description
        
        # Define the target semesters based on current semester
        # This is a simple heuristic. Adjust mapping if your semester names differ.
        target_sem_names = []
        
        if "4th" in current_sem_name:
            target_sem_names = ["1st Semester", "2nd Semester", "3rd Semester"]
        elif "3rd" in current_sem_name:
            target_sem_names = ["1st Semester", "2nd Semester"]
        elif "2nd" in current_sem_name:
            target_sem_names = ["1st Semester"]
        elif "6th" in current_sem_name:
            target_sem_names = ["1st Semester", "2nd Semester", "3rd Semester", "4th Semester", "5th Semester"]
        elif "5th" in current_sem_name:
            target_sem_names = ["1st Semester", "2nd Semester", "3rd Semester", "4th Semester"]
        else:
            # If 1st semester or unknown, nothing to generate
            continue

        # Fetch the fee structure details (rules) once for this fee group
        structure_details = FeeStructureDetail.objects.filter(fee_structure_master=fee_group)
        if not structure_details.exists():
            print(f"Skipping {student.first_name}: Fee Structure has no details defined.")
            continue

        print(f"Processing {student.first_name} {student.last_name} ({current_sem_name})...")
        
        fees_added_for_student = False

        with transaction.atomic():
            for sem_name in target_sem_names:
                # Find the Semester Object
                # Assuming simple name matching. 
                # Ideally, we should filter by the student's Course/Batch to get the exact Semester ID,
                # but semester_description is often unique enough per batch structure.
                # To be safer, we can try to find a semester that matches the description AND the batch.
                semester_obj = Semester.objects.filter(
                    semester_description__iexact=sem_name,
                    batch=sc.batch, # Ensure it belongs to the student's batch
                    course=sc.course 
                ).first()
                
                # Fallback: if specific batch semester not found, try generic name match (less safe, but might be needed)
                if not semester_obj:
                    semester_obj = Semester.objects.filter(semester_description__iexact=sem_name).first()

                if not semester_obj:
                    print(f"  WARNING: Semester '{sem_name}' not found for Batch {sc.batch}. Skipping.")
                    continue

                # CHECK: Do fees already exist for this semester?
                if StudentFeeDetail.objects.filter(student=student, semester=semester_obj).exists():
                    continue 

                # Generate Fees
                for rule in structure_details:
                    amount = 0
                    if "1st" in sem_name: amount = rule.semester_1
                    elif "2nd" in sem_name: amount = rule.semester_2
                    elif "3rd" in sem_name: amount = rule.semester_3
                    elif "4th" in sem_name: amount = rule.semester_4
                    elif "5th" in sem_name: amount = rule.semester_5
                    elif "6th" in sem_name: amount = rule.semester_6
                    elif "7th" in sem_name: amount = rule.semester_7
                    elif "8th" in sem_name: amount = rule.semester_8
                    
                    if amount is None or amount == 0:
                        continue 

                    StudentFeeDetail.objects.create(
                        student=student,
                        student_course=sc,
                        organization=sc.organization,
                        branch=sc.branch,
                        # Note: We must supply a Batch/Dept. Using current student data.
                        # Academic Year: Ideally should be the year they DID that semester.
                        # Since we don't know that history, we are using the semester's linked academic_year
                        # or falling back to the student's current year. 
                        # Using semester_obj.academic_year is the safest "guess" for historial data if your semesters are linked to years.
                        academic_year=semester_obj.academic_year if semester_obj.academic_year else sc.academic_year,
                        department=sc.department,
                        
                        semester=semester_obj,
                        fee_group=fee_group,
                        fee_structure_details=rule,
                        element_name=rule.element_type.element_name,
                        
                        element_amount=amount,
                        total_element_period_amount=amount,
                        paid_amount=0, 
                        paid='N',
                        
                        is_active=True,
                        created_by=1
                    )
                    fees_added_for_student = True
        
        if fees_added_for_student:
            count_processed += 1
            print(f"  -> Generated missing fees for {student.first_name}")

    print("------------------------------------------------")
    print(f"Completed. Processed {count_processed} students. Skipped {count_skipped}.")

if __name__ == "__main__":
    generate_missing_fees_for_all()
