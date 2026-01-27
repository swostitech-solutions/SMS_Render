import os
import django
import sys
from django.db import transaction

# Setup Django
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import StudentFeeDetail, StudentCourse, Semester

def move_fees_to_odd_sem():
    print("Migrating Fees to Start of Year (ODD Semesters)...")

    # ==========================================
    # BSC CONFIGURATION (Swapped to ODD Semesters)
    # 1st, 3rd, 5th get the Annual Fee.
    # 2nd, 4th, 6th get 0.
    # ==========================================
    bsc_config = {
        "2023": {
            # Year 1
            "1st Semester": {"Course Fee": 112000, "Hostel Fee": 48000},
            "2nd Semester": {"Course Fee": 0, "Hostel Fee": 0},
            # Year 2
            "3rd Semester": {"Course Fee": 112000, "Hostel Fee": 53000},
            "4th Semester": {"Course Fee": 0, "Hostel Fee": 0},
            # Year 3
            "5th Semester": {"Course Fee": 112000, "Hostel Fee": 53000},
            "6th Semester": {"Course Fee": 0, "Hostel Fee": 0},
        },
        "2024": {
            # Year 1
            "1st Semester": {"Course Fee": 115000, "Hostel Fee": 60000},
            "2nd Semester": {"Course Fee": 0, "Hostel Fee": 0},
            # Year 2
            "3rd Semester": {"Course Fee": 115000, "Hostel Fee": 60000},
            "4th Semester": {"Course Fee": 0, "Hostel Fee": 0},
        },
        "2025": {
            # Year 1
            "1st Semester": {"Course Fee": 115000, "Hostel Fee": 66000},
            "2nd Semester": {"Course Fee": 0, "Hostel Fee": 0},
        }
    }

    # Cache Semesters
    print("Caching Semesters...")
    sem_cache = {}
    for s in Semester.objects.all():
        desc = s.semester_description.strip().lower()
        if desc not in sem_cache: sem_cache[desc] = []
        sem_cache[desc].append(s.id)

    total_updates = 0

    print("\nProcessing BSC (Semester)...")
    bsc_students = StudentCourse.objects.filter(
        course__course_name__icontains="BSC",
        is_active=True
    ).select_related('batch')
    
    count = 0
    for sc in bsc_students:
        try:
            batch_code = sc.batch.batch_code
            start_year = batch_code.split('-')[0].strip()
             
            if start_year in bsc_config:
                fees = bsc_config[start_year]
                
                with transaction.atomic():
                    for sem_name, amounts in fees.items():
                        target_sem_ids = sem_cache.get(sem_name.lower(), [])
                        if not target_sem_ids: continue
                        
                        for el_name, amount in amounts.items():
                            cnt = StudentFeeDetail.objects.filter(
                                student=sc.student,
                                semester__id__in=target_sem_ids,
                                element_name__icontains=el_name
                            ).update(
                                element_amount=amount,
                                total_element_period_amount=amount
                            )
                            total_updates += cnt
            
            count += 1
            if count % 10 == 0: print(f"  Processed {count} BSC students...", end='\r')

        except Exception as e:
           print(f"Error processing BSC student {sc.student.id}: {e}")

    print(f"\nCOMPLETED! Total records updated: {total_updates}")

if __name__ == "__main__":
    move_fees_to_odd_sem()
