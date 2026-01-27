import os
import django
import sys

# Set up Django environment
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import StudentFeeDetail, Semester, FeeStructureMaster, FeeStructureDetail, StudentCourse, FeeElementType

def update_student_fees():
    print("Starting Bulk Fee Update for Previous Semesters...")

    # --- CONFIGURATION (Based on your notes) ---
    # format: "Semester Name": {"Element Name": Amount}
    # Note: Ensure element names match exactly what is in your DB (e.g. "Course Fee", "Hostel Fee")
    
    # 1. BSC Nursing (2023-2027 Batch)
    # 1st Year (1st & 2nd Sem) -> 1.12L Course + 48K Hostel
    # 2nd Year (3rd & 4th Sem) -> 1.12L Course + 53K Hostel
    # 3rd Year (5th & 6th Sem) -> 1.12L Course + 53K Hostel
    
    # We will set the FULL amount in the EVEN semesters (2nd, 4th, 6th) 
    # because your data showed 4th semester having the full amount.
    # If you prefer ODD semesters (1st, 3rd, 5th), change the mapping below.
    
    fee_updates = {
        # Year 1
        "1st Semester": {"Course Fee": 0, "Hostel Fee": 0},      # Assuming 0 if full amount is in 2nd
        "2nd Semester": {"Course Fee": 112000, "Hostel Fee": 48000}, # FULL YEAR 1 FEE
        
        # Year 2
        "3rd Semester": {"Course Fee": 0, "Hostel Fee": 0},      # Assuming 0 if full amount is in 4th
        "4th Semester": {"Course Fee": 112000, "Hostel Fee": 53000}, # FULL YEAR 2 FEE
        
        # Year 3
        "5th Semester": {"Course Fee": 0, "Hostel Fee": 0}, 
        "6th Semester": {"Course Fee": 112000, "Hostel Fee": 53000}, # FULL YEAR 3 FEE
    }
    
    # Alternatively, if you want SPLIT fees (50% in each sem), change values accordingly.
    # Currently implementing: FULL YEAR FEE in 2nd, 4th, 6th sem. 1st, 3rd, 5th get 0. 
    # This matches the pattern of your 4th semester having the full 1.65L.

    # -------------------------------------------

    # Get all fee details for active students
    # We filter for students in the relevant batch/course if needed, or apply globally if names match generic semesters.
    # For safety, let's target the exact batch "2023-2027 BSC" if possible, or just apply logic to all "BSC" students.
    
    # Let's find students in BSC Nursing
    print("Fetching BSC Nursing students...")
    # Adjust filter based on your exact Course Name in DB, e.g. "Nursing(BSC)" or "BSC"
    target_students = StudentCourse.objects.filter(
        course__course_name__icontains="BSC", 
        is_active=True
    ).values_list('student', flat=True)
    
    print(f"Found {len(target_students)} students.")
    
    updated_count = 0
    
    for semester_name, fees in fee_updates.items():
        print(f"\nUpdating {semester_name} fees...")
        
        # Find the Semester ID(s)
        semesters = Semester.objects.filter(semester_description__iexact=semester_name)
        if not semesters.exists():
            print(f"Warning: Semester '{semester_name}' not found in DB.")
            continue
            
        semester_ids = semesters.values_list('id', flat=True)

        for element_name, amount in fees.items():
            # Find the Element ID (optional check, but good for logging)
            # element = FeeElementType.objects.filter(element_name__iexact=element_name).first()
            
            # Update the records
            # We filter by: Student is in generated list, Semester is correct, Element Name matches
            count = StudentFeeDetail.objects.filter(
                student__in=target_students,
                semester__in=semester_ids,
                element_name__iexact=element_name
            ).update(
                element_amount=amount, 
                total_element_period_amount=amount,
                # If you want to reset 'paid' status or amount, uncomment:
                # paid_amount=0,
                # paid='N'
            )
            
            print(f"  -> Set {element_name} to {amount} for {count} records.")
            updated_count += count

    print(f"\nSuccess! Updated {updated_count} fee detail records.")

if __name__ == "__main__":
    update_student_fees()
