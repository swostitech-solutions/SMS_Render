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
    AcademicYear, Semester
)

def fix_annual_fees():
    print("Starting Fee Generation for 'Default Semester' (Annual) Students...")

    FEE_CONFIG = {
        # Using string matching for batch code (e.g. starts with "2023", "2024")
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
        course__course_name__icontains="GNM" # Target GNM specifically
    ).select_related('student', 'academic_year', 'batch', 'course', 'fee_group')

    print(f"Found {students_query.count()} active GNM students (Annual System).")

    with transaction.atomic():
        for sc in students_query:
            try:
                batch_code = sc.batch.batch_code # e.g. "2024-2027"
                start_year = batch_code.split('-')[0].strip() # "2024"
                
                if start_year not in FEE_CONFIG:
                    # Try fallback? Or just skip
                    continue
                    
                fees_map = FEE_CONFIG[start_year]
                
                # Determine current year based on Academic Year Code (e.g. "2nd year")
                ay_code = sc.academic_year.academic_year_code.lower()
                current_year = 0
                if "1st" in ay_code: current_year = 1
                elif "2nd" in ay_code: current_year = 2
                elif "3rd" in ay_code: current_year = 3
                
                if current_year <= 1: 
                    continue # No past years to fill
                    
                print(f"Checking {sc.student.first_name} (Batch {start_year}, Year {current_year})...")
                
                # Find Fee Rules once to reuse
                rules = FeeStructureDetail.objects.filter(fee_structure_master=sc.fee_group)
                if not rules.exists():
                    print("  No fee structure details found. Skipping.")
                    continue

                # Iterate previous years
                for prev_year_idx in range(1, current_year):
                    # We need the AcademicYear object for "1st year", "2nd year" etc.
                    # Search for something like "1st year"
                    target_ay_str = f"{prev_year_idx}"
                    # Simple fuzzy match: find academic year containing the number logic
                    # This relies on your DB having "1st year" or "20XX-20XX" that we can identify.
                    # Best attempt: Find any Active AcademicYear that looks like "{N}st/nd/rd year"
                    
                    found_ay = None
                    candidates = AcademicYear.objects.filter(academic_year_code__icontains="year")
                    for ay in candidates:
                        code = ay.academic_year_code.lower()
                        # check if it matches "1st", "2nd", etc
                        prefix = f"{prev_year_idx}" 
                        if prefix in code and ("year" in code):
                            found_ay = ay
                            break
                    
                    if not found_ay:
                        print(f"  Could not find Academic Year object for Year {prev_year_idx}. Skipping.")
                        continue
                        
                    # Check existence
                    exists = StudentFeeDetail.objects.filter(
                        student=sc.student,
                        semester=sc.semester,
                        academic_year=found_ay
                    ).exists()
                    
                    if exists:
                        # print(f"  Year {prev_year_idx} already exists.")
                        continue
                        
                    # GENERATE
                    fee_values = fees_map.get(prev_year_idx, {})
                    
                    for el_name, amount in fee_values.items():
                        # Link to a rule if possible
                        rule_obj = rules.first() # Default fallback
                        for r in rules:
                            if r.element_type.element_name.lower() in el_name.lower():
                                rule_obj = r
                                break

                        StudentFeeDetail.objects.create(
                            student=sc.student,
                            student_course=sc,
                            organization=sc.organization,
                            branch=sc.branch,
                            batch=sc.batch,
                            department=sc.department,
                            
                            academic_year=found_ay, # PREVIOUS YEAR
                            semester=sc.semester,   # Default (Annual)
                            
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
                    print(f"  -> Generated Year {prev_year_idx} fees.")

            except Exception as e:
                print(f"Error processing {sc.student.first_name}: {e}")

    print("Success. Script completed.")

if __name__ == "__main__":
    fix_annual_fees()
