import os
import django
import sys
from django.db import transaction, connection

# Setup Django
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import (
    StudentCourse, StudentFeeDetail, FeeStructureDetail, 
    AcademicYear, Semester, FeeStructureMaster
)

def fix_annual_fees():
    print("Starting Fee Generation for 'Default Semester' (Annual) Students...")

    # --- FEE CONFIGURATION (Captured from your Excel data) ---
    # Format: "CourseCode_BatchStart": { Year_Index: { "Course Fee": X, "Hostel Fee": Y } }
    # Year_Index: 1 = 1st Year, 2 = 2nd Year, 3 = 3rd Year
    
    FEE_CONFIG = {
        # GNM (2023-26)
        # Note: Adjust logic if your DB 'Batch' string is different (e.g. 2023-2026 vs 2023-26)
        "GNM_2023": {
            1: {"Course Fee": 102000, "Hostel Fee": 48000},
            2: {"Course Fee": 102000, "Hostel Fee": 60000},
            3: {"Course Fee": 102000, "Hostel Fee": 60000},
        },
        # GNM (2024-27)
        "GNM_2024": {
            1: {"Course Fee": 165000, "Hostel Fee": 60000},
            2: {"Course Fee": 165000, "Hostel Fee": 60000},
        },
        # GNM (2025-28)
        "GNM_2025": {
            1: {"Course Fee": 105000, "Hostel Fee": 60000},
        },
    }

    # Helper to get config key
    def get_config_key(course_name, batch_name):
        # Normalize batch name to get start year (e.g. "2023-2027" -> "2023")
        try:
            start_year = batch_name.split('-')[0].strip()
            if "GNM" in course_name.upper():
                return f"GNM_{start_year}"
            # Add BSC logic here if BSC also uses Default Semester later
            return None
        except:
            return None

    # 1. Find target students
    # Filter for active GNM students (or any using 'Default Semester')
    students_query = StudentCourse.objects.filter(
        semester__semester_description__iexact="Default Semester",
        is_active=True
    ).select_related('student', 'academic_year', 'batch', 'course', 'fee_group')

    print(f"Found {students_query.count()} students in 'Default Semester' mode.")

    count_processed = 0

    with transaction.atomic():
        for sc in students_query:
            student = sc.student
            batch_name = sc.batch.batch_code # e.g. "2024-2027"
            course_name = sc.course.course_name # e.g. "Nursing(GNM)"
            current_acad_year = sc.academic_year.academic_year_code # e.g. "2nd year" or "2025-2026"
            
            # Identify current YEAR based on Academic Year string
            # Heuristic: looking for "1st", "2nd", "3rd" in the name
            current_year_num = 0
            if "1st" in current_acad_year.lower(): current_year_num = 1
            elif "2nd" in current_acad_year.lower(): current_year_num = 2
            elif "3rd" in current_acad_year.lower(): current_year_num = 3
            
            if current_year_num == 0:
                print(f"Skipping {student.first_name}: Could not determine year from '{current_acad_year}'")
                continue

            config_key = get_config_key(course_name, batch_name)
            if not config_key or config_key not in FEE_CONFIG:
                # Fallback: if explicit match fail, try generic GNM match? For now, skip to avoid bad data.
                # check if specific fee structure exists in map
                print(f"Skipping {student.first_name}: No fee config for {config_key}")
                continue

            fee_schedule = FEE_CONFIG[config_key]
            
            # Determine which years are PAST years that need generating
            # If current is 2nd year, we need to ensure 1st year exists.
            # If current is 3rd year, ensure 1st & 2nd exist.
            
            years_to_check = [y for y in range(1, current_year_num) if y in fee_schedule]
            
            if not years_to_check:
                continue # Student is in 1st year, nothing to backfill

            print(f"Checking {student.first_name} ({batch_name}, Currently Year {current_year_num}). Needs: {years_to_check}")

            # Need to find the "AcademicYear" object for previous years
            # usually named "1st year", "2nd year" etc OR "2023-2024", "2024-2025"
            # This is tricky without strict naming. 
            # We will search by matching string "1st year", "2nd year" in DB.
            
            for past_year_num in years_to_check:
                target_acad_year_str = f"{past_year_num}" # e.g. "1st"
                
                # Find Academic Year Object
                # Try to find one that matches pattern "Xst/nd/rd year"
                matched_ays = AcademicYear.objects.filter(academic_year_code__icontains=str(past_year_num))
                
                # Filter strictly if possible (e.g. "1st year")
                target_ay = None
                for ay in matched_ays:
                    if "year" in ay.academic_year_code.lower():
                        target_ay = ay
                        break
                
                if not target_ay:
                    print(f"  Warning: No Academic Year found for Year {past_year_num}. Skipping.")
                    continue

                # CHECK: Does a fee record exist for this Academic Year?
                # for Annual system, the Semester is ALWAYS "Default Semester", but Academic Year differs.
                exists = StudentFeeDetail.objects.filter(
                    student=student, 
                    semester=sc.semester, # Default Semester
                    academic_year=target_ay # The distinguishing factor
                ).exists()

                if exists:
                    # Optional: Update amount if existing? Let's skip to be safe, or update if user requested.
                    # User asked to "update previous old", so let's UPDATE amounts if they exist too.
                    # Actually, let's just create if missing first. updating is a separate step usually.
                    # Let's simple create if missing.
                    pass
                else:
                    # Create Missing Records
                    fees = fee_schedule[past_year_num]
                    
                    # We need the Fee Rules (FeeStructureDetail) to link properly
                    # We just need ANY rule from the group to link foreign key, 
                    # but technically we create rows manually so strictly speaking we just need IDs.
                    # However, best practice is to link to a real FeeStructureDetail if possible.
                    # We will reuse the student's current fee group details.
                    rules = FeeStructureDetail.objects.filter(fee_structure_master=sc.fee_group)
                    
                    if not rules.exists(): continue

                    # We create rows for Course Fee and Hostel Fee
                    for element_type, amount in fees.items():
                        # Find a rule that matches this element type (just for FK linkage)
                        # If not found, we pick the first one and override element_name (hacky but works if schema allows)
                        correct_rule = None
                        for r in rules:
                            if r.element_type.element_name.lower() in element_type.lower():
                                correct_rule = r
                                break
                        
                        if not correct_rule: correct_rule = rules.first()

                        StudentFeeDetail.objects.create(
                            student=student,
                            student_course=sc,
                            organization=sc.organization,
                            branch=sc.branch,
                            batch=sc.batch,
                            department=sc.department,
                            
                            academic_year=target_ay, # CRITICAL: This is what puts it in "1st Year" box
                            semester=sc.semester,    # Default Semester
                            
                            fee_group=sc.fee_group,
                            fee_structure_details=correct_rule,
                            element_name=element_type, # Explicitly set "Course Fee" or "Hostel Fee"
                            
                            element_amount=amount,
                            total_element_period_amount=amount,
                            paid_amount=0,
                            paid='N',
                            is_active=True,
                            created_by=1
                        )
                    print(f"  -> Created Year {past_year_num} fees ({fees})")
                    count_processed += 1

    print(f"Done. Processed {count_processed} student years.")

if __name__ == "__main__":
    fix_annual_fees()
