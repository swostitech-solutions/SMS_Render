import os
import django
import sys
from django.db import transaction
from django.db.models import Q

# Setup Django
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import StudentFeeDetail, StudentCourse, AcademicYear, Semester

def update_final_amounts():
    print("Starting FINAL Master Fee Update (Enforcing Excel Amounts)...")

    # ==========================================
    # 1. GNM (Annual System) Configuration
    # Uses "academic_year" text matching (1st, 2nd, 3rd)
    # ==========================================
    gnm_config = {
        "2023": { # Batch starts with 2023
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

    # ==========================================
    # 2. BSC (Semester System) Configuration
    # Uses "semester" text matching.
    # Logic: Full Year Amount goes into EVEN semester. ODD semester gets 0.
    # ==========================================
    bsc_config = {
        "2023": {
            # Year 1
            "1st Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "2nd Semester": {"Course Fee": 112000, "Hostel Fee": 48000},
            # Year 2
            "3rd Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "4th Semester": {"Course Fee": 112000, "Hostel Fee": 53000},
            # Year 3
            "5th Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "6th Semester": {"Course Fee": 112000, "Hostel Fee": 53000},
        },
        "2024": {
            # Year 1 (1.15L + 60k)
            "1st Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "2nd Semester": {"Course Fee": 115000, "Hostel Fee": 60000},
            # Year 2 (1.15L + 60k)
            "3rd Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "4th Semester": {"Course Fee": 115000, "Hostel Fee": 60000},
        },
        "2025": {
            # Year 1 (1.15L + 66k)
            "1st Semester": {"Course Fee": 0, "Hostel Fee": 0},
            "2nd Semester": {"Course Fee": 115000, "Hostel Fee": 66000},
        }
    }

    total_updates = 0

    with transaction.atomic():
        
        # --- PROCESS GNM ---
        print("\nProcessing GNM (Annual)...")
        gnm_students = StudentCourse.objects.filter(
            course__course_name__icontains="GNM",
            is_active=True
        ).select_related('batch')

        # Cache Academic Years to avoid repeated string matching queries
        # Map: year_number -> list of AcademicYear IDs
        ay_cache = {1: [], 2: [], 3: []}
        all_ays = AcademicYear.objects.all()
        for ay in all_ays:
            code = ay.academic_year_code.lower()
            if "year" in code:
                if "1st" in code: ay_cache[1].append(ay.id)
                elif "2nd" in code: ay_cache[2].append(ay.id)
                elif "3rd" in code: ay_cache[3].append(ay.id)

        for sc in gnm_students:
            batch_code = sc.batch.batch_code
            start_year = batch_code.split('-')[0].strip()
            
            if start_year not in gnm_config: continue
            
            fees = gnm_config[start_year]
            
            for year_num, amounts in fees.items():
                target_ay_ids = ay_cache.get(year_num, [])
                if not target_ay_ids: continue
                
                for el_name, amount in amounts.items():
                    # Update matching records
                    # Note: We match by Student AND AcademicYear (because it's annual)
                    cnt = StudentFeeDetail.objects.filter(
                        student=sc.student,
                        academic_year__id__in=target_ay_ids,
                        element_name__icontains=el_name  # Flexible match "Course Fee" / "Course"
                    ).update(
                        element_amount=amount,
                        total_element_period_amount=amount
                    )
                    total_updates += cnt

        # --- PROCESS BSC ---
        print("\nProcessing BSC (Semester)...")
        bsc_students = StudentCourse.objects.filter(
            course__course_name__icontains="BSC",
            is_active=True
        ).select_related('batch')
        
        # Cache Semesters
        # Map: "1st Semester" -> ID list
        sem_cache = {}
        all_sems = Semester.objects.all()
        for s in all_sems:
            desc = s.semester_description.strip().lower() # e.g. "1st semester"
            if desc not in sem_cache: sem_cache[desc] = []
            sem_cache[desc].append(s.id)

        for sc in bsc_students:
            batch_code = sc.batch.batch_code
            start_year = batch_code.split('-')[0].strip()
            
            if start_year not in bsc_config: continue
            
            fees = bsc_config[start_year]
            
            for sem_name, amounts in fees.items():
                target_sem_ids = sem_cache.get(sem_name.lower(), [])
                if not target_sem_ids: continue
                
                for el_name, amount in amounts.items():
                    # Update matching records
                    # Note: We match by Student AND Semester
                    cnt = StudentFeeDetail.objects.filter(
                        student=sc.student,
                        semester__id__in=target_sem_ids,
                        element_name__icontains=el_name
                    ).update(
                        element_amount=amount,
                        total_element_period_amount=amount
                    )
                    total_updates += cnt

    print(f"\nCompleted! Total records updated: {total_updates}")

if __name__ == "__main__":
    update_final_amounts()
