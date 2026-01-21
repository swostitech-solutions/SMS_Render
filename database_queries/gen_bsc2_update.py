"""
Generate UPDATE statements for BSC 2nd Year students (2024-2028)
Fills in ALL missing data from Excel
Key difference: Date format is DD/MM/YYYY, Registration field is "ONMRC Registration No"
"""

import pandas as pd
from datetime import datetime

def clean_value(val):
    """Clean and escape values for SQL"""
    if pd.isna(val) or str(val).strip() == '' or str(val).strip().lower() == 'nan':
        return None
    return str(val).strip().replace("'", "''")

def format_date_dd_mm_yyyy(date_val):
    """Format date from DD/MM/YYYY string to YYYY-MM-DD"""
    if pd.isna(date_val):
        return None
    try:
        # If it's already a datetime object
        if isinstance(date_val, datetime):
            return date_val.strftime('%Y-%m-%d')
        # If it's a string in DD/MM/YYYY format
        date_str = str(date_val).strip()
        if '/' in date_str:
            parts = date_str.split('/')
            if len(parts) == 3:
                day, month, year = parts
                return f'{year}-{month.zfill(2)}-{day.zfill(2)}'
        return None
    except:
        return None

def format_phone(phone_val):
    """Format phone number (10 digits)"""
    if pd.isna(phone_val):
        return None
    try:
        phone = str(int(float(phone_val)))
        return phone[:10] if len(phone) >= 10 else phone
    except:
        return None

EXCEL_FILE = 'BSC Nursing 2024-28 2nd year.xlsx'
STARTING_ADM = 1135

df = pd.read_excel(f'D:/intern2/excel files/{EXCEL_FILE}')
df.columns = df.columns.str.strip()

with open('D:/intern2/database_queries/update_bsc2.sql', 'w', encoding='utf-8') as f:
    f.write('-- UPDATE BSC 2ND YEAR (2024-2028) - Fill ALL missing data from Excel\n\n')
    f.write('BEGIN;\n\n')
    
    for idx, row in df.iterrows():
        adm_no = STARTING_ADM + idx
        first_name = clean_value(row.get('First Name'))
        
        f.write(f'-- Student {adm_no}: {first_name}\n')
        f.write('UPDATE "Acadix_studentregistration"\n')
        f.write('SET\n')
        
        updates = []
        
        # Names (middle, last)
        middle = clean_value(row.get('Middle Name'))
        if middle:
            updates.append(f"  middle_name = '{middle}'")
        
        last = clean_value(row.get('Last Name'))
        if last:
            updates.append(f"  last_name = '{last}'")
        
        # Registration number - DIFFERENT COLUMN NAME!
        reg_no = clean_value(row.get('ONMRC Registration No'))
        if reg_no:
            updates.append(f"  registration_no = '{reg_no}'")
        
        # Date of birth - DIFFERENT FORMAT (DD/MM/YYYY)
        dob = format_date_dd_mm_yyyy(row.get('Date of Birth'))
        if dob:
            updates.append(f"  date_of_birth = '{dob}'")
        
        # Religion
        religion = clean_value(row.get('Religion'))
        if religion:
            updates.append(f"  religion_id = (SELECT id FROM \"Acadix_religion\" WHERE religion_name = '{religion}')")
        
        # Category
        category = clean_value(row.get('Category'))
        if category:
            updates.append(f"  category_id = (SELECT id FROM \"Acadix_category\" WHERE category_name = '{category}')")
        
        # Nationality
        nationality = clean_value(row.get('Nationality'))
        if nationality:
            updates.append(f"  nationality_id = (SELECT id FROM \"Acadix_nationality\" WHERE nationality_code = '{nationality}')")
        
        # Blood group
        blood = clean_value(row.get('Blood Group'))
        if blood:
            updates.append(f"  blood_id = (SELECT id FROM \"Acadix_blood\" WHERE blood_code = '{blood}')")
        
        # Mother tongue
        mtongue = clean_value(row.get('Mother Tongue'))
        if mtongue:
            updates.append(f"  mother_tongue_id = (SELECT id FROM \"Acadix_mothertongue\" WHERE mother_tongue_name = '{mtongue}')")
        
        # Student contact
        phone = format_phone(row.get('Student Phone No'))
        if phone:
            updates.append(f"  contact_no = '{phone}'")
        
        # Student email (has duplicate header in Excel, use try/except)
        try:
            email = clean_value(row['Student Email Id'])
            if email and str(email) != 'Student Email Id':
                updates.append(f"  email = '{email}'")
        except:
            pass  # Skip if email column causes issues
        
        # Student aadhaar (max 12 chars)
        aadhaar = clean_value(row.get('Student Aadhar No'))
        if aadhaar:
            aadhaar = aadhaar[:12]
            updates.append(f"  student_aadhaar_no = '{aadhaar}'")
        
        # Father details
        fname = clean_value(row.get('Father Name'))
        if fname:
            updates.append(f"  father_name = '{fname}'")
        
        fprof = clean_value(row.get('Father Profession'))
        if fprof:
            updates.append(f"  father_profession = '{fprof}'")
        
        fphone = format_phone(row.get('Father Phone No'))
        if fphone:
            updates.append(f"  father_contact_number = '{fphone}'")
        
        femail = clean_value(row.get('Father Email Id'))
        if femail:
            updates.append(f"  father_email = '{femail}'")
        
        faadhaar = clean_value(row.get('Father Aadhar No'))
        if faadhaar:
            faadhaar = faadhaar[:12]
            updates.append(f"  father_aadhaar_no = '{faadhaar}'")
        
        # Mother details
        mname = clean_value(row.get('Mother Name'))
        if mname:
            updates.append(f"  mother_name = '{mname}'")
        
        mprof = clean_value(row.get('Mother Profession'))
        if mprof:
            updates.append(f"  mother_profession = '{mprof}'")
        
        mphone = format_phone(row.get('Mother Phone No'))
        if mphone:
            updates.append(f"  mother_contact_number = '{mphone}'")
        
        memail = clean_value(row.get('Mother Email Id'))
        if memail:
            updates.append(f"  mother_email = '{memail}'")
        
        maadhaar = clean_value(row.get('Mother Aadhar No'))
        if maadhaar:
            maadhaar = maadhaar[:12]
            updates.append(f"  mother_aadhaar_no = '{maadhaar}'")
        
        # Update timestamp
        updates.append("  updated_at = NOW()")
        
        if updates:
            f.write(',\n'.join(updates))
            f.write(f"\nWHERE admission_no = '{adm_no}';\n\n")
    
    f.write('COMMIT;\n\n')
    
    # Verification query
    f.write('-- Verification - Show first 5 students with details\n')
    f.write('SELECT \n')
    f.write('  admission_no, first_name, middle_name, last_name,\n')
    f.write('  registration_no, date_of_birth, email, contact_no,\n')
    f.write('  father_name, mother_name\n')
    f.write('FROM "Acadix_studentregistration"\n')
    f.write('WHERE admission_no BETWEEN \'1135\' AND \'1188\'\n')
    f.write('ORDER BY admission_no::int\n')
    f.write('LIMIT 5;\n')

print('✅ UPDATE script created: D:/intern2/database_queries/update_bsc2.sql')
print('Updates: ONMRC registration_no, middle/last names, DOB (DD/MM/YYYY format),')
print('         religion, category, nationality, blood group, mother tongue,')
print('         student contact/email/aadhaar,')
print('         father (name, profession, phone, email, aadhaar),')
print('         mother (name, profession, phone, email, aadhaar)')
