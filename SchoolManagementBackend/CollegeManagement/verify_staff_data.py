
# Script run via manage.py shell


from Acadix.models import EmployeeMaster, Address, Gender, Religion, Nationality, Blood, MotherTongue, EmployeeType
from STAFF.models import (
    EmployeeFamilyDetail, 
    EmployeeQualification, 
    EmployeeCourse, 
    EmployeeLanguage, 
    EmployeeExperience, 
    EmployeeDocument
)

def check_employee_data(emp_code):
    print(f"\n{'='*50}")
    print(f"Checking Data for Employee Code: {emp_code}")
    print(f"{'='*50}")

    try:
        emp = EmployeeMaster.objects.filter(employee_code=emp_code).first()
        if not emp:
            print(f"❌ Employee with code {emp_code} NOT FOUND.")
            return

        print(f"✅ Employee Found: ID={emp.id}")
        print(f"   Name: {emp.title} {emp.first_name} {emp.middle_name or ''} {emp.last_name}")
        print(f"   DOB: {emp.date_of_birth}")
        print(f"   Gender: {emp.gender}")
        print(f"   Mobile: {emp.phone_number}")
        print(f"   Email: {emp.email}")
        print(f"   Type: {emp.employee_type}")

        # Check Address
        # Assuming usertype is 'Employee' based on common patterns, if not found will check logic
        address = Address.objects.filter(reference_id=emp.id, usertype__iexact='STAFF').first() 
        # Note: usertype might be 'STAFF' or 'Employee', checking generalized.
        if not address:
             address = Address.objects.filter(reference_id=emp.id).first()
        
        if address:
             print(f"\n✅ Address Found:")
             print(f"   Present: {address.present_address}, {address.present_city}, {address.present_state}, {address.present_pincode}")
             print(f"   Permanent: {address.permanent_address}, {address.permanent_city}, {address.permanent_state}, {address.permanent_pincode}")
        else:
             print("\n❌ Address Details NOT FOUND.")

        # Check Documents
        docs = EmployeeDocument.objects.filter(employee=emp)
        print(f"\n{'✅' if docs.exists() else '❌'} Documents Found: {docs.count()}")
        for d in docs:
            print(f"   - {d.document_type} ({d.document_number})")

        # Check Family
        family = EmployeeFamilyDetail.objects.filter(employee=emp)
        print(f"\n{'✅' if family.exists() else '❌'} Family Details Found: {family.count()}")
        for f in family:
            print(f"   - {f.relation_first_name} ({f.employee_relation})")

        # Check Qualifications
        edu = EmployeeQualification.objects.filter(employee=emp)
        print(f"\n{'✅' if edu.exists() else '❌'} Qualifications Found: {edu.count()}")
        for e in edu:
            print(f"   - {e.qualification} from {e.university}")

        # Check Courses
        courses = EmployeeCourse.objects.filter(employee=emp)
        print(f"\n{'✅' if courses.exists() else '❌'} Courses Found: {courses.count()}")
        for c in courses:
            print(f"   - {c.course_name}")

        # Check Languages
        langs = EmployeeLanguage.objects.filter(employee=emp)
        print(f"\n{'✅' if langs.exists() else '❌'} Languages Found: {langs.count()}")
        for l in langs:
            print(f"   - Codes: {l.language_code}")

        # Check Experience
        exps = EmployeeExperience.objects.filter(employee=emp)
        print(f"\n{'✅' if exps.exists() else '❌'} Experience Found: {exps.count()}")
        for ex in exps:
            print(f"   - {ex.previous_company_worked} ({ex.date_from} to {ex.date_to})")

    except Exception as e:
        print(f"\n❌ Error occurred: {str(e)}")

if __name__ == "__main__":
    check_employee_data("5434")
