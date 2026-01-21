"""
Generate INSERT statements for Address table
Uses Address column from Excel for both present and permanent address
"""

import pandas as pd

def clean_value(val):
    """Clean and escape values for SQL"""
    if pd.isna(val) or val == '' or str(val).lower() == 'nan':
        return None
    str_val = str(val).strip().replace("'", "''")
    return str_val

# Process both batches
batches = [
    ('GNM 3rd YEAR STUDENT DETAILS_2023-2026.xlsx', 1001, 28),
    ('GNM 2nd YEAR STUDENT DETAILS_2024-2027 updated.xlsx', 1029, 33)
]

with open('D:/intern2/database_queries/insert_student_addresses.sql', 'w', encoding='utf-8') as f:
    f.write('-- INSERT STUDENT ADDRESSES\n')
    f.write('-- Creates address records for 61 students\n\n')
    f.write('BEGIN;\n\n')
    
    for excel_file, start_adm, count in batches:
        df = pd.read_excel(f'D:/intern2/excel files/{excel_file}')
        # Strip trailing spaces from column names
        df.columns = df.columns.str.strip()
        f.write(f'-- {excel_file.replace(".xlsx", "")} ({count} students)\n\n')
        
        for idx, row in df.iterrows():
            adm_no = start_adm + idx
            
            # Get address from Excel
            address = clean_value(row.get('Address') or row.get('Permanent Address'))
            
            if address:  # Only insert if address exists
                f.write(f'-- Student {adm_no}\n')
                f.write('INSERT INTO "Acadix_address" (\n')
                f.write('  reference_id, organization_id, branch_id, usertype,\n')
                f.write('  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,\n')
                f.write('  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,\n')
                f.write('  is_active, created_by, created_at, updated_at\n')
                f.write(') VALUES (\n')
                f.write(f"  (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no='{adm_no}'),\n")
                f.write("  1, 1, 'STUDENT',\n")
                
                # Present address (use Excel address + defaults)
                f.write(f"  '{address}', '000000', 'Not Specified', 'Not Specified', 'India',\n")
                f.write(f"  (SELECT contact_no FROM \"Acadix_studentregistration\" WHERE admission_no='{adm_no}'),\n")
                
                # Permanent address (same as present)
                f.write(f"  '{address}', '000000', 'Not Specified', 'Not Specified', 'India',\n")
                f.write(f"  (SELECT contact_no FROM \"Acadix_studentregistration\" WHERE admission_no='{adm_no}'),\n")
                
                f.write("  true, 1, NOW(), NOW()\n")
                f.write(');\n\n')
    
    f.write('COMMIT;\n\n')
    f.write('-- Verification\n')
    f.write('SELECT COUNT(*) as address_count FROM "Acadix_address" WHERE usertype=\'STUDENT\';\n')
    f.write('\n-- Sample addresses\n')
    f.write('SELECT a.reference_id, s.first_name, s.last_name, a.present_address\n')
    f.write('FROM "Acadix_address" a\n')
    f.write('JOIN "Acadix_studentregistration" s ON a.reference_id=s.id\n')
    f.write('WHERE a.usertype=\'STUDENT\'\n')
    f.write('LIMIT 5;\n')

print('✅ Address INSERT script created: D:/intern2/database_queries/insert_student_addresses.sql')
print('This will create address records for all students who have address data in Excel')
print('\nNote: Using default values for pincode (000000), city, state since Excel only has full address string')
print('Run this SQL file in pgAdmin!')
