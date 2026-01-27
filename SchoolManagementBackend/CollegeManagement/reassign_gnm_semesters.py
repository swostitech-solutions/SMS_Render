import os
import django
import sys
from django.db import transaction

# Setup Django
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import StudentFeeDetail, Semester, AcademicYear

def reassign_gnm_semesters():
    print("Starting Semester Re-assignment for GNM (Splitting Consolidated Fees)...")

    # 1. ANALYZE IDs
    # Based on your previous check script:
    # 2024-2027: ID 29 (1st year), ID 30 (2nd year)
    # 2023-2026: ID 27 (1st year), ID 26 (2nd year), ID 28 (3rd year)
    # 2025-2028: ID 17 (1st year)
    
    # We will build a dynamic map to be safe, querying them fresh.
    # Map: Batch -> { YearNum: SemesterID }
    
    BATCH_SEM_MAP = {}
    
    # Retrieve all GNM-related semesters (Assuming they are Default Sem or similar)
    # Note: You might have renamed them, so we search generically by Batch + Academic Year
    all_gnm_sems = Semester.objects.filter(course__course_name__icontains="GNM")
    
    print("\n[Analysis] Mapping Semesters...")
    for s in all_gnm_sems:
        if not s.batch or not s.academic_year: continue
        
        batch_code = s.batch.batch_code # e.g. "2024-2027"
        ay_code = s.academic_year.academic_year_code.lower() # e.g. "1st year"
        
        year_num = 0
        if "1st" in ay_code: year_num = 1
        elif "2nd" in ay_code: year_num = 2
        elif "3rd" in ay_code: year_num = 3
        
        if year_num == 0: continue
        
        if batch_code not in BATCH_SEM_MAP: BATCH_SEM_MAP[batch_code] = {}
        
        # Priority: If specific Semester exists, use it.
        BATCH_SEM_MAP[batch_code][year_num] = s.id
        print(f"  -> Batch {batch_code} | Year {year_num} : ID {s.id} ({s.semester_description})")

    print(f"\n[Execution] Re-assigning Fee Records...")
    
    total_updated = 0
    
    with transaction.atomic():
        # Iterate through all GNM fee details
        # We process by Batch to apply the correct Semester ID map
        
        for batch_code, sem_map in BATCH_SEM_MAP.items():
            print(f"  Processing Batch {batch_code}...")
            
            # Find all GNM Fee Details for this batch
            # We filter by Course GNM + Batch Code
            # We only touch records where the ID is NOT already correct (optimization)
            
            fees = StudentFeeDetail.objects.filter(
                student_course__course__course_name__icontains="GNM",
                student_course__batch__batch_code=batch_code,
                # We can also rely on the 'batch' field if you have it? Ah wait, StudentFeeDetail removed 'batch' in creation
                # but we can filter via student_course relationship which is robust.
            ).select_related('academic_year')
            
            batch_updates = 0
            
            for f in fees:
                # Determine Year of this record
                ay_code = f.academic_year.academic_year_code.lower()
                rec_year = 0
                if "1st" in ay_code: rec_year = 1
                elif "2nd" in ay_code: rec_year = 2
                elif "3rd" in ay_code: rec_year = 3
                
                if rec_year == 0: continue
                
                # Get Correct Target Semester ID
                target_sem_id = sem_map.get(rec_year)
                
                if not target_sem_id:
                    # Should not happens if map analysis is correct
                    # print(f"    Warning: No Semester ID found for Year {rec_year} in {batch_code}")
                    continue
                
                # If currently pointing to wrong semester, move it!
                if f.semester_id != target_sem_id:
                    f.semester_id = target_sem_id
                    f.save()
                    batch_updates += 1
            
            print(f"    -> Re-assigned {batch_updates} records.")
            total_updated += batch_updates

    print(f"\n[Success] Total records moved to correct buckets: {total_updated}")

if __name__ == "__main__":
    reassign_gnm_semesters()
