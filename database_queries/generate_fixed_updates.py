"""
Generate CORRECTED UPDATE statements with proper lookup matching
Fixes Gender mapping issue and ensures all lookups work
"""

import pandas as pd

def clean_value(val):
    """Clean and escape values for SQL"""
    if pd.isna(val) or val == '' or str(val).lower() == 'nan':
        return None
    str_val = str(val).strip().replace("'", "''")
    return str_val

def map_gender(excel_value):
    """Map Excel gender to DB gender_code"""
    if pd.isna(excel_value):
        return None
    val = str(excel_value).strip().lower()
    if val == 'female':
        return 'F'
    elif val == 'male':
        return 'M'
    return None

# Process both batches
batches = [
    ('GNM 3rd YEAR STUDENT DETAILS_2023-2026.xlsx', 1001, 28),
    ('GNM 2nd YEAR STUDENT DETAILS_2024-2027 updated.xlsx', 1029, 33)
]

with open('D:/intern2/database_queries/update_student_details_FIXED.sql', 'w', encoding='utf-8') as f:
    f.write('-- CORRECTED UPDATE STUDENT DETAILS\n')
    f.write('-- Fixes Gender lookup and other NULL fields\n\n')
    f.write('BEGIN;\n\n')
    
    for excel_file, start_adm, count in batches:
        df = pd.read_excel(f'D:/intern2/excel files/{excel_file}')
        df.columns = df.columns.str.strip()
        f.write(f'-- {excel_file.replace(".xlsx", "")} ({count} students)\n\n')
        
        for idx, row in df.iterrows():
            adm_no = start_adm + idx
            
            f.write(f'-- Student {adm_no}\n')
            f.write('UPDATE "Acadix_studentregistration"\n')
            f.write('SET\n')
            
            updates = []
            
            # ONLY fields that exist in Excel
            
            # Gender - FIXED mapping (Female→F, Male→M)
            gender = map_gender(row.get('Gender'))
            if gender:
                updates.append(f"  gender_id = (SELECT id FROM \"Acadix_gender\" WHERE gender_code = '{gender}')")
            
            # Update timestamp
            if updates:  # Only if there are actual updates
                updates.append("  updated_at = NOW()")
                
                # Write all updates
                f.write(',\n'.join(updates))
                f.write(f"\nWHERE admission_no = '{adm_no}';\n\n")
            else:
                f.write("-- No updates needed\n\n")
    
    f.write('COMMIT;\n\n')
    f.write('-- Verification\n')
    f.write('SELECT s.admission_no, s.first_name, g.gender_code as gender\n')
    f.write('FROM "Acadix_studentregistration" s\n')
    f.write('LEFT JOIN "Acadix_gender" g ON s.gender_id = g.id\n')
    f.write('WHERE s.admission_no BETWEEN \'1001\' AND \'1061\'\n')
    f.write('ORDER BY s.admission_no::int LIMIT 10;\n')

print('✅ FIXED UPDATE script created: D:/intern2/database_queries/update_student_details_FIXED.sql')
print('\nThis ONLY updates fields present in Excel:')
print('  - Gender (Female → F, Male → M)')
print('\nDoes NOT touch fields not in Excel (date_of_admission, date_of_join, etc.)')
