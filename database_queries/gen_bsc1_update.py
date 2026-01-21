"""
Generate UPDATE statements for BSC 1st Year students (2025-2029)
Fills in missing data from Excel
SIMPLER than BSC 2nd/3rd - only has: registration_no, DOB, blood, mobile, father name
"""

import pandas as pd

def clean_value(val):
    """Clean and escape values for SQL"""
    if pd.isna(val) or str(val).strip() == '' or str(val).strip().lower() == 'nan':
        return None
    return str(val).strip().replace("'", "''")

def format_date(date_val):
    """Format date for SQL"""
    if pd.isna(date_val):
        return None
    try:
        return pd.to_datetime(date_val).strftime('%Y-%m-%d')
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

EXCEL_FILE = 'B.Sc Nursing 1st year 2025 - 2029.xlsx'
STARTING_ADM = 1189

df = pd.read_excel(f'D:/intern2/excel files/{EXCEL_FILE}', header=1)
df.columns = df.columns.str.strip()

with open('D:/intern2/database_queries/update_bsc1.sql', 'w', encoding='utf-8') as f:
    f.write('-- UPDATE BSC 1ST YEAR (2025-2029) - Fill missing data from Excel\n\n')
    f.write('BEGIN;\n\n')
    
    for idx, row in df.iterrows():
        adm_no = STARTING_ADM + idx
        first_name = clean_value(row.get('NAME STUDENTS'))
        
        f.write(f'-- Student {adm_no}: {first_name}\n')
        f.write('UPDATE "Acadix_studentregistration"\n')
        f.write('SET\n')
        
        updates = []
        
        # Registration number
        reg_no = clean_value(row.get('ONMRC Registration no'))
        if reg_no:
            updates.append(f"  registration_no = '{reg_no}'")
        
        # Date of birth
        dob = format_date(row.get('Date Of Birth'))
        if dob:
            updates.append(f"  date_of_birth = '{dob}'")
        
        # Blood group
        blood = clean_value(row.get('BLOOD GROUP'))
        if blood:
            updates.append(f"  blood_id = (SELECT id FROM \"Acadix_blood\" WHERE blood_code = '{blood}')")
        
        # Student contact
        phone = format_phone(row.get('MOBILE NO.'))
        if phone:
            updates.append(f"  contact_no = '{phone}'")
        
        # Father name
        fname = clean_value(row.get('FATHER NAME'))
        if fname:
            updates.append(f"  father_name = '{fname}'")
        
        # Nationality (default to Indian)
        updates.append("  nationality_id = (SELECT id FROM \"Acadix_nationality\" WHERE nationality_code = 'Indian')")
        
        # Update timestamp
        updates.append("  updated_at = NOW()")
        
        if updates:
            f.write(',\n'.join(updates))
            f.write(f"\nWHERE admission_no = '{adm_no}';\n\n")
    
    f.write('COMMIT;\n\n')
    
    # Verification query
    f.write('-- Verification - Show first 5 students with details\n')
    f.write('SELECT \n')
    f.write('  admission_no, first_name,\n')
    f.write('  registration_no, date_of_birth, contact_no,\n')
    f.write('  father_name\n')
    f.write('FROM "Acadix_studentregistration"\n')
    f.write('WHERE admission_no BETWEEN \'1189\' AND \'1248\'\n')
    f.write('ORDER BY admission_no::int\n')
    f.write('LIMIT 5;\n')

print('✅ UPDATE script created: D:/intern2/database_queries/update_bsc1.sql')
print('Updates: ONMRC registration_no, DOB, blood group, mobile, father name, nationality')
print('Note: This Excel is simpler - no middle/last name, mother, religion, email, aadhaar')
