import os
import django
import sys

# Set up Django environment
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Swostitech_Acadix.settings')
django.setup()

from Acadix.models import FeeStructureMaster, FeeStructureDetail

def inspect_fee_structure(fee_group_name):
    print(f"Inspecting Fee Group: {fee_group_name}")
    
    # Find the Fee Structure Master
    # Note: trying partial match as user screenshot might be slighty different from exact DB string
    fsm_list = FeeStructureMaster.objects.filter(fee_structure_description__icontains=fee_group_name)
    
    if not fsm_list.exists():
        print("No Fee Structure Master found with that name.")
        return

    for fsm in fsm_list:
        print(f"\n--- Fee Structure Master: {fsm.fee_structure_description} (ID: {fsm.id}) ---")
        
        details = FeeStructureDetail.objects.filter(fee_structure_master=fsm)
        
        if not details.exists():
            print("No details found.")
            continue
            
        print(f"{'Element':<20} | {'Sem 1':<10} | {'Sem 2':<10} | {'Sem 3':<10} | {'Sem 4':<10} | {'Sem 5':<10} | {'Sem 6':<10}")
        print("-" * 90)
        
        for d in details:
            print(f"{d.element_type.element_name:<20} | {d.semester_1:<10} | {d.semester_2:<10} | {d.semester_3:<10} | {d.semester_4:<10} | {d.semester_5:<10} | {d.semester_6:<10}")

if __name__ == "__main__":
    # logic to get the name from command line or hardcode based on screenshot
    # Screenshot says "2023-2027 BSC 3rd Year"
    inspect_fee_structure("2023-2027 BSC 3rd Year")
