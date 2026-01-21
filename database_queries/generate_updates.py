"""
Generate UPDATE statements to add complete Excel data to existing students
Updates StudentRegistration with all missing fields
"""

import pandas as pd

def clean_value(val):
    """Clean and escape values for SQL"""
    if pd.isna(val) or val == '' or str(val).lower() == 'nan':
        return 'NULL'
    str_val = str(val).strip().replace("'", "''")
    return f"'{str_val}'"

def clean_number(val, max_length=None):
    """Clean numeric values"""
    if pd.isna(val) or val == '' or str(val).lower() == 'nan':
        return 'NULL'
    try:
        num_str = str(int(float(val)))
        if max_length and len(num_str) > max_length:
            num_str = num_str[:max_length]
        return f"'{num_str}'"
    except:
        return 'NULL'

def format_date(date_val):
    """Format date for SQL"""
    if pd.isna(date_val):
        return 'NULL'
    try:
        if isinstance(date_val, str):
            dt = pd.to_datetime(date_val)
        else:
            dt = date_val
        return f"'{dt.strftime('%Y-%m-%d')}'"
    except:
        return 'NULL'

# Process both batches
batches = [
    ('GNM 3rd YEAR STUDENT DETAILS_2023-2026.xlsx', 1001, 28),
    ('GNM 2nd YEAR STUDENT DETAILS_2024-2027 updated.xlsx', 1029, 33)
]

with open('D:/intern2/database_queries/update_student_details.sql', 'w', encoding='utf-8') as f:
    f.write('-- UPDATE STUDENT DETAILS WITH COMPLETE EXCEL DATA\n')
    f.write('-- Updates all missing fields for 61 students\n\n')
    f.write('BEGIN;\n\n')
    
    for excel_file, start_adm, count in batches:
        df = pd.read_excel(f'D:/intern2/excel files/{excel_file}')
        # Strip trailing spaces from column names
        df.columns = df.columns.str.strip()
        f.write(f'-- {excel_file.replace(".xlsx", "")} ({count} students)\n\n')
        
        for idx, row in df.iterrows():
            adm_no = start_adm + idx
            
            f.write(f'-- Student {adm_no}: {row.get("First Name", "")}\n')
            f.write('UPDATE "Acadix_studentregistration"\n')
            f.write('SET\n')
            
            # Basic info
            f.write(f'  middle_name = {clean_value(row.get("Middle Name"))},\n')
            f.write(f'  last_name = {clean_value(row.get("Last Name"))},\n')
            f.write(f'  registration_no = {clean_value(row.get("RegNo.") or row.get("ONMRC Registration No"))},\n')
            
            # Personal details
            f.write(f'  date_of_birth = {format_date(row.get("Date of Birth") or row.get("Date Of Birth"))},\n')
            
            # Lookup fields
            gender = row.get('Gender')
            if pd.notna(gender):
                f.write(f"  gender_id = (SELECT id FROM \"Acadix_gender\" WHERE gender_code = {clean_value(gender)}),\n")
            
            religion = row.get('Religion')
            if pd.notna(religion):
                f.write(f"  religion_id = (SELECT id FROM \"Acadix_religion\" WHERE religion_code = {clean_value(religion)}),\n")
            
            nationality = row.get('Nationality')
            if pd.notna(nationality):
                f.write(f"  nationality_id = (SELECT id FROM \"Acadix_nationality\" WHERE nationality_code = {clean_value(nationality)}),\n")
            
            blood = row.get('Blood group') or row.get('Blood Group')
            if pd.notna(blood):
                f.write(f"  blood_id = (SELECT id FROM \"Acadix_blood\" WHERE blood_code = {clean_value(blood)}),\n")
            
            category = row.get('Category')
            if pd.notna(category):
                f.write(f"  category_id = (SELECT id FROM \"Acadix_category\" WHERE category_code = {clean_value(category)}),\n")
            
            mother_tongue = row.get('Mother Tongue')
            if pd.notna(mother_tongue):
                f.write(f"  mother_tongue_id = (SELECT id FROM \"Acadix_mothertongue\" WHERE mother_tongue_code = {clean_value(mother_tongue)}),\n")
            
            # Contact info
            f.write(f'  student_aadhaar_no = {clean_number(row.get("Student Aadhar number") or row.get("Student Aadhar No"), 12)},\n')
            f.write(f'  contact_no = {clean_number(row.get("Student contact number") or row.get("Student Phone No"), 10)},\n')
            f.write(f'  email = {clean_value(row.get("Student email id") or row.get("Email"))},\n')
            
            # Father details
            father_name_col = "Father's name" if "Father's name" in row else "Father Name"
            father_contact_col = "Father's contact No" if "Father's contact No" in row else "Father Phone No"
            father_prof_col = "Father's profession" if "Father's profession" in row else "Father Profession"
            father_email_col = "Father's email id" if "Father's email id" in row else "Father Email Id"
            father_aadhar_col = "Father's adhar number" if "Father's adhar number" in row else "Father Aadhar No"
            
            f.write(f"  father_name = {clean_value(row.get(father_name_col))},\n")
            f.write(f"  father_contact_number = {clean_number(row.get(father_contact_col), 10)},\n")
            f.write(f"  father_profession = {clean_value(row.get(father_prof_col))},\n")
            f.write(f"  father_email = {clean_value(row.get(father_email_col))},\n")
            f.write(f"  father_aadhaar_no = {clean_number(row.get(father_aadhar_col), 12)},\n")
            
            # Mother details
            mother_name_col = "Mother's name" if "Mother's name" in row else "Mother Name"
            mother_contact_col = "Mother's contact" if "Mother's contact" in row else "Mother Phone No"
            mother_email_col = "Mother's Email id" if "Mother's Email id" in row else "Mother Email Id"
            mother_prof_col = "Mother's profession" if "Mother's profession" in row else "Mother Professional"
            mother_aadhar_col = "Mother's adhar number" if "Mother's adhar number" in row else "Mother Aadhar No"
            
            f.write(f"  mother_name = {clean_value(row.get(mother_name_col))},\n")
            f.write(f"  mother_contact_number = {clean_number(row.get(mother_contact_col), 10)},\n")
            f.write(f"  mother_email = {clean_value(row.get(mother_email_col))},\n")
            f.write(f"  mother_profession = {clean_value(row.get(mother_prof_col))},\n")
            f.write(f"  mother_aadhaar_no = {clean_number(row.get(mother_aadhar_col), 12)},\n")
            
            # Update timestamp
            f.write(f'  updated_at = NOW()\n')
            f.write(f"WHERE admission_no = '{adm_no}';\n\n")
    
    f.write('COMMIT;\n\n')
    f.write('-- Verification: Check updated fields\n')
    f.write('SELECT admission_no, first_name, middle_name, last_name, email, father_name, mother_name\n')
    f.write('FROM "Acadix_studentregistration"\n')
    f.write('WHERE admission_no BETWEEN \'1001\' AND \'1061\'\n')
    f.write('ORDER BY admission_no::int\n')
    f.write('LIMIT 5;\n')

print('✅ UPDATE script created: D:/intern2/database_queries/update_student_details.sql')
print('This will update all 61 students with complete Excel data')
print('\nRun this SQL file in pgAdmin to fill in all missing fields!')
