"""
Generate UPDATE statements for GNM 1st Year students
Fills in missing data from Excel
"""

import pandas as pd

def clean_value(val):
    if pd.isna(val) or val == '':
        return 'NULL'
    return f"'{str(val).strip().replace(chr(39), chr(39)+chr(39))}'"

def format_date(date_val):
    if pd.isna(date_val):
        return 'NULL'
    try:
        return f"'{pd.to_datetime(date_val).strftime('%Y-%m-%d')}'"
    except:
        return 'NULL'

EXCEL_FILE = 'GNM 25-28 LIST 1st Year student.xlsx'
STARTING_ADM = 1062

df = pd.read_excel(f'D:/intern2/excel files/{EXCEL_FILE}', header=1)
df.columns = df.columns.str.strip()

with open('D:/intern2/database_queries/update_gnm1.sql', 'w', encoding='utf-8') as f:
    f.write('-- UPDATE GNM 1ST YEAR (2025-2028) - Fill missing data\n\n')
    f.write('BEGIN;\n\n')
    
    for idx, row in df.iterrows():
        adm_no = STARTING_ADM + idx
        
        f.write(f'-- Student {adm_no}: {row["NAME"]}\n')
        f.write('UPDATE "Acadix_studentregistration"\n')
        f.write('SET\n')
        
        updates = []
        
        # Registration number
        if pd.notna(row.get('Roll.no')):
            updates.append(f"  registration_no = {clean_value(row['Roll.no'])}")
        
        # Date of birth
        dob = format_date(row.get('Date of Birth'))
        if dob != 'NULL':
            updates.append(f"  date_of_birth = {dob}")
        
        # Date of admission
        doa = format_date(row.get('Date Of Admission'))
        if doa != 'NULL':
            updates.append(f"  date_of_admission = {doa}")
        
        # Blood group
        if pd.notna(row.get('BLOOD GROUP')):
            blood = str(row['BLOOD GROUP']).strip()
            updates.append(f"  blood_id = (SELECT id FROM \"Acadix_blood\" WHERE blood_code = '{blood}')")
        
        # Contact number
        if pd.notna(row.get('MOB.NO')):
            mob = str(int(float(row['MOB.NO'])))[:10]
            updates.append(f"  contact_no = '{mob}'")
        
        # Father name
        father_col = "Father's Name"
        if pd.notna(row.get(father_col)):
            updates.append(f"  father_name = {clean_value(row[father_col])}")
        
        # Nationality (default Indian since not in Excel)
        updates.append("  nationality_id = (SELECT id FROM \"Acadix_nationality\" WHERE nationality_code = 'Indian')")
        
        # Update timestamp
        updates.append("  updated_at = NOW()")
        
        f.write(',\n'.join(updates))
        f.write(f"\nWHERE admission_no = '{adm_no}';\n\n")
    
    f.write('COMMIT;\n\n')
    f.write('-- Verification\n')
    f.write('SELECT admission_no, first_name, registration_no, date_of_birth, father_name, contact_no\n')
    f.write('FROM "Acadix_studentregistration"\n')
    f.write('WHERE admission_no BETWEEN \'1062\' AND \'1087\'\n')
    f.write('ORDER BY admission_no::int\n')
    f.write('LIMIT 5;\n')

print('✅ UPDATE script created: D:/intern2/database_queries/update_gnm1.sql')
print('This updates: registration_no, DOB, admission date, blood group, contact, father name')
