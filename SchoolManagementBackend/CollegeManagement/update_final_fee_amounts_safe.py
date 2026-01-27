import os
import django
import sys
from django.db import transaction

# Setup Django
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import StudentFeeDetail, StudentCourse, AcademicYear, Semester

def update_final_amounts_safe():
    print("Starting FINAL Master Fee Update (Safe Mode - Chunked)...")

    # ==========================================
    # CONFIGURATION (Same as before)
    # ==========================================
    gnm_config = {
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
        }
    }

    bsc_config = {
        "2023": {
            "1st Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "2nd Semester": {"Course Fee": 112000, "Hostel Fee": 48000},
            "3rd Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "4th Semester": {"Course Fee": 112000, "Hostel Fee": 53000},
            "5th Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "6th Semester": {"Course Fee": 112000, "Hostel Fee": 53000},
        },
        "2024": {
            "1st Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "2nd Semester": {"Course Fee": 115000, "Hostel Fee": 60000},
            "3rd Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "4th Semester": {"Course Fee": 115000, "Hostel Fee": 60000},
        },
        "2025": {
            "1st Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "2nd Semester": {"Course Fee": 115000, "Hostel Fee": 66000},
        }
    }

    # Cache Academic Years
    print("Caching Academic Years...")
    ay_cache = {1: [], 2: [], 3: []}
    for ay in AcademicYear.objects.all():
        code = ay.academic_year_code.lower()
        if "year" in code:
            if "1st" in code: ay_cache[1].append(ay.id)
            elif "2nd" in code: ay_cache[2].append(ay.id)
            elif "3rd" in code: ay_cache[3].append(ay.id)

    # Cache Semesters
    print("Caching Semesters...")
    sem_cache = {}
    for s in Semester.objects.all():
        desc = s.semester_description.strip().lower()
        if desc not in sem_cache: sem_cache[desc] = []
        sem_cache[desc].append(s.id)

    total_updates = 0

    # --- PROCESS GNM ---
    print("\nProcessing GNM (Annual)...")
    gnm_students = StudentCourse.objects.filter(
        course__course_name__icontains="GNM",
        is_active=True
    ).select_related('batch')

    # Process one student at a time (or small batches) to avoid timeout elsewhere
    count = 0
    for sc in gnm_students:
        try:
            batch_code = sc.batch.batch_code
            start_year = batch_code.split('-')[0].strip()
            
            if start_year in gnm_config:
                fees = gnm_config[start_year]
                
                # Small atomic block per student
                with transaction.atomic():
                    for year_num, amounts in fees.items():
                        target_ay_ids = ay_cache.get(year_num, [])
                        if not target_ay_ids: continue
                        
                        for el_name, amount in amounts.items():
                            cnt = StudentFeeDetail.objects.filter(
                                student=sc.student,
                                academic_year__id__in=target_ay_ids,
                                element_name__icontains=el_name
                            ).update(
                                element_amount=amount,
                                total_element_period_amount=amount
                            )
                            total_updates += cnt
                            
            count += 1
            if count % 10 == 0: sum_print = print(f"  Processed {count} GNM students...", end='\r')

        except Exception as e:
            print(f"Error processing GNM student {sc.student.id}: {e}")

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
    update_final_amounts_safe()
