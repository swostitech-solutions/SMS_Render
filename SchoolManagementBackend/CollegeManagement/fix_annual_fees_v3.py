import os
import django
import sys
from django.db import transaction

# Setup Django
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import (
    StudentCourse, StudentFeeDetail, FeeStructureDetail, 
    AcademicYear
)

def fix_annual_fees_v3():
    print("Starting Fee Generation (Fix v3 - No Batch Field)...")

    # CONFIG
    FEE_CONFIG = {
        "2023": {
            1: {"Course Fee": 102000, "Hostel Fee": 48000},
            2: {"Course Fee": 102000, "Hostel Fee": 60000},
            3: {"Course Fee": 102000, "Hostel Fee": 60000},
        },
        "2024": {
            1: {"Course Fee": 165000, "Hostel Fee": 60000},
            2: {"Course Fee": 165000, "Hostel Fee": 60000},
        },
        "2025": {
            1: {"Course Fee": 105000, "Hostel Fee": 60000},
        },
    }

    students_query = StudentCourse.objects.filter(
        semester__semester_description__iexact="Default Semester",
        is_active=True,
        course__course_name__icontains="GNM"
    ).select_related('student', 'academic_year', 'batch', 'course', 'fee_group')
    
    print(f"  Found {students_query.count()} students to process.")

    with transaction.atomic():
        for sc in students_query:
            try:
                batch_code = sc.batch.batch_code 
                start_year = batch_code.split('-')[0].strip()

                if start_year not in FEE_CONFIG: continue

                fees_map = FEE_CONFIG[start_year]
                ay_code = sc.academic_year.academic_year_code.lower()
                
                current_year = 0
                if "1st" in ay_code: current_year = 1
                elif "2nd" in ay_code: current_year = 2
                elif "3rd" in ay_code: current_year = 3
                
                if current_year <= 1: continue

                # Find previous year AcademicYear object
                for prev_year_idx in range(1, current_year):
                    # We search for "1st year", "2nd year" in DB
                    found_ay = None
                    candidates = AcademicYear.objects.filter(academic_year_code__icontains=str(prev_year_idx))
                    for ay in candidates:
                        if "year" in ay.academic_year_code.lower():
                            found_ay = ay
                            break
                    
                    if not found_ay: continue

                    # Check existence
                    fees_exist = StudentFeeDetail.objects.filter(student=sc.student, academic_year=found_ay, semester=sc.semester).exists()
                    
                    if fees_exist:
                         continue

                    # Generate Fees
                    fee_values = fees_map.get(prev_year_idx, {})
                    rules = FeeStructureDetail.objects.filter(fee_structure_master=sc.fee_group)
                    
                    if not rules.exists():
                        print(f"Skipping {sc.student.first_name}: No fee rules found.")
                        continue
                    
                    for el_name, amount in fee_values.items():
                        rule_obj = rules.first()
                        for r in rules:
                            if r.element_type.element_name.lower() in el_name.lower():
                                rule_obj = r
                                break

                        # Create (NO BATCH FIELD)
                        StudentFeeDetail.objects.create(
                            student=sc.student,
                            student_course=sc,
                            organization=sc.organization,
                            branch=sc.branch,
                            department=sc.department, # removed batch
                            academic_year=found_ay,
                            semester=sc.semester,
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
                    print(f"  -> {sc.student.first_name}: Generated Year {prev_year_idx} fee.")

            except Exception as e:
                print(f"Error {sc.student.first_name}: {e}")

    print("Done v3.")

if __name__ == "__main__":
    fix_annual_fees_v3()
