import os
import django
import sys
from django.db.models import Sum, Count

# Setup Django
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import StudentCourse, StudentFeeDetail, AcademicYear, Semester

def verify_fees_report():
    print("==================================================================================")
    print("                             FEE VERIFICATION REPORT                               ")
    print("==================================================================================")

    # 1. GNM VALIDATION
    # Expected: 2 records per year (Course Fee, Hostel Fee) for previous years.
    # Check Amounts.
    
    gnm_expected = {
        "2023": { 
            1: {"Course Fee": 102000, "Hostel Fee": 48000},
            2: {"Course Fee": 102000, "Hostel Fee": 60000}, 
            # 3rd year might not be generated yet if they are currently in 2nd year? 
            # Or if they are in 3rd year, they have 1 & 2 history.
        },
        "2024": {
            1: {"Course Fee": 165000, "Hostel Fee": 60000},
        },
    }

    print("\n--- GNM BATCHES (Annual) ---")
    
    # Iterate through batches we care about
    for start_year, rules in gnm_expected.items():
        print(f"\nBATCH {start_year}:")
        
        # Find students in this batch
        students = StudentCourse.objects.filter(
            course__course_name__icontains="GNM",
            batch__batch_code__startswith=start_year,
            is_active=True
        )
        
        if not students.exists():
            print("  No students found.")
            continue
            
        print(f"  Students Found: {students.count()}")
        
        # Verify a sample student (the first one)
        sample_student = students.first().student
        print(f"  Verifying Sample Student: {sample_student.first_name} (ID: {sample_student.id})")
        
        fees = StudentFeeDetail.objects.filter(student=sample_student, is_active=True)
        
        # Group by Academic Year
        for year_num, expected_amounts in rules.items():
            # Find fee records for this "Year"
            # Logic: Match "1st", "2nd" in Academic Year Code
            year_fees = []
            year_name = f"Year {year_num}" # Placeholder label
            
            for f in fees:
                if f"{year_num}" in f.academic_year.academic_year_code and "year" in f.academic_year.academic_year_code.lower():
                    year_fees.append(f)
                    
            if not year_fees:
                print(f"    [FAIL] {year_name}: No records found (Expected history not generated?)")
                continue
                
            # Check Amounts
            match = True
            for el_name, amount in expected_amounts.items():
                found = False
                found_val = 0
                for f in year_fees:
                    if el_name.lower() in f.element_name.lower():
                        found = True
                        found_val = f.element_amount
                        break
                
                if not found:
                    print(f"    [FAIL] {year_name}: Missing {el_name}")
                    match = False
                elif found_val != amount:
                    print(f"    [FAIL] {year_name}: {el_name} Mismatch! Found {found_val}, Expected {amount}")
                    match = False
                else:
                    # print(f"    [OK] {year_name}: {el_name} = {found_val}")
                    pass
            
            if match:
                print(f"    [PASS] {year_name} Verified.")


    # 2. BSC VALIDATION
    # Expected: Even semesters have full fee, Odd have 0.
    
    bsc_expected = {
        "2023": {
            "2nd Semester": {"Course Fee": 112000, "Hostel Fee": 48000},
            "4th Semester": {"Course Fee": 112000, "Hostel Fee": 53000},
        },
        "2024": {
            "2nd Semester": {"Course Fee": 115000, "Hostel Fee": 60000},
        }
    }
    
    print("\n--- BSC BATCHES (Semester) ---")
    
    for start_year, rules in bsc_expected.items():
        print(f"\nBATCH {start_year}:")
        
        students = StudentCourse.objects.filter(
            course__course_name__icontains="BSC",
            batch__batch_code__startswith=start_year,
            is_active=True
        )
        
        if not students.exists():
            print("  No students found.")
            continue
            
        print(f"  Students Found: {students.count()}")
        
        sample_student = students.first().student
        print(f"  Verifying Sample Student: {sample_student.first_name} (ID: {sample_student.id})")
        
        fees = StudentFeeDetail.objects.filter(student=sample_student, is_active=True)
        
        for sem_name, expected_amounts in rules.items():
            # Find fees for this semester
            sem_fees = []
            for f in fees:
                if f.semester.semester_description.strip().lower() == sem_name.lower():
                    sem_fees.append(f)
            
            if not sem_fees:
                 print(f"    [FAIL] {sem_name}: No records found.")
                 continue

            match = True
            for el_name, amount in expected_amounts.items():
                found = False
                found_val = 0
                for f in sem_fees:
                    if el_name.lower() in f.element_name.lower():
                        found = True
                        found_val = f.element_amount
                        break
                
                if not found:
                    print(f"    [FAIL] {sem_name}: Missing {el_name}")
                    match = False
                elif found_val != amount:
                    print(f"    [FAIL] {sem_name}: {el_name} Mismatch! Found {found_val}, Expected {amount}")
                    match = False
            
            if match:
                print(f"    [PASS] {sem_name} Verified.")

if __name__ == "__main__":
    verify_fees_report()
