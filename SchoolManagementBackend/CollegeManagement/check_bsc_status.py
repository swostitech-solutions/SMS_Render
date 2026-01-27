import os
import django
import sys
from django.db.models import Count

# Setup Django
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import StudentCourse, Semester

def check_bsc_2024_status():
    print("Checking '2024-2028 BSC' Student Status...")

    # Filter for active students in this batch
    students = StudentCourse.objects.filter(
        batch__batch_code="2024-2028",
        course__course_name__icontains="BSC",
        is_active=True
    )
    
    total = students.count()
    print(f"Total Active Students found: {total}")
    
    if total == 0:
        print("No students found. Check batch code string.")
        return

    # Group by Semester
    stats = students.values('semester__semester_description').annotate(count=Count('id'))
    
    print("\nCurrent Distribution:")
    for stat in stats:
        print(f" - {stat['semester__semester_description']}: {stat['count']} students")
        
    # Check if 3rd Semester exists in DB to migrate to
    sem3 = Semester.objects.filter(
        batch__batch_code="2024-2028", 
        course__course_name__icontains="BSC",
        semester_description__iexact="3rd Semester"
    ).first()
    
    if sem3:
        print(f"\nTarget '3rd Semester' found (ID: {sem3.id}). Ready for migration.")
    else:
        print("\nCRITICAL: Target '3rd Semester' NOT FOUND for this batch/course!")

if __name__ == "__main__":
    check_bsc_2024_status()
