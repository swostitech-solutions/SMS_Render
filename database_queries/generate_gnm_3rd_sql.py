"""
Generate SQL INSERT statements for GNM 3rd Year (2023-2026)
Reads from Excel and creates complete SQL matching backend logic
"""

import pandas as pd
from datetime import datetime

# Configuration
EXCEL_FILE = 'GNM 3rd YEAR STUDENT DETAILS_2023-2026.xlsx'
BATCH_CODE = '2023-2026'
DEPT_CODE = 'GNM'
ACADEMIC_YEAR = '3rd year'
STARTING_ADMISSION_NO = 1001
STARTING_PARENT_ID = 101

def clean_value(val):
    """Clean and escape values for SQL"""
    if pd.isna(val) or val == '' or str(val).lower() == 'nan':
        return 'NULL'
    
    # Convert to string and escape single quotes
    str_val = str(val).strip().replace("'", "''")
    return f"'{str_val}'"

def clean_number(val, max_length=None):
    """Clean numeric values"""
    if pd.isna(val) or val == '' or str(val).lower() == 'nan':
        return 'NULL'
    
    # Remove decimals and convert to string
    num_str = str(int(float(val)))
    
    if max_length and len(num_str) > max_length:
        num_str = num_str[:max_length]
    
    return f"'{num_str}'"

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

# Read Excel file
print(f"Reading {EXCEL_FILE}...")
df = pd.read_excel(f'D:/intern2/excel files/{EXCEL_FILE}')
print(f"Found {len(df)} students\n")

# Generate SQL file
output_file = f'D:/intern2/database_queries/student_imports/{BATCH_CODE.replace("-", "_")}_gnm_students.sql'
import os
os.makedirs(os.path.dirname(output_file), exist_ok=True)

with open(output_file, 'w', encoding='utf-8') as f:
    f.write("-- =====================================================\n")
    f.write(f"-- GNM 3RD YEAR ({BATCH_CODE}) - STUDENT IMPORT\n")
    f.write(f"-- {len(df)} Students\n")
    f.write(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
    f.write("-- =====================================================\n\n")
    
    f.write("-- IMPORTANT: Run these verification queries first!\n")
    f.write("-- Ensure batch, course, dept, academic year, semester, section all exist\n\n")
    
    f.write("BEGIN;\n\n")
    
    # Process each student
    for idx, row in df.iterrows():
        admission_no = STARTING_ADMISSION_NO + idx
        parent_id = STARTING_PARENT_ID + idx
        
        first_name = str(row['First Name']).strip() if pd.notna(row['First Name']) else 'Student'
        user_name = f"{first_name.lower()}{admission_no}"
        
        f.write(f"-- =====================================================\n")
        f.write(f"-- Student {idx+1}/{len(df)}: {first_name} {row.get('Last Name', '')}\n")
        f.write(f"-- =====================================================\n\n")
        
        # 1. INSERT INTO StudentRegistration
        f.write("-- 1. StudentRegistration\n")
        f.write("INSERT INTO \"Acadix_studentregistration\" (\n")
        f.write("    first_name, middle_name, last_name,\n")
        f.write("    organization_id, branch_id, batch_id, course_id, department_id,\n")
        f.write("    academic_year_id, semester_id, section_id,\n")
        f.write("    admission_type, admission_no, registration_no, user_name,\n")
        f.write("    date_of_admission, date_of_join, date_of_birth,\n")
        f.write("    gender_id, religion_id, nationality_id, blood_id, category_id, mother_tongue_id,\n")
        f.write("    student_aadhaar_no, contact_no, email,\n")
        f.write("    father_name, father_contact_number, father_profession, father_email, father_aadhaar_no,\n")
        f.write("    mother_name, mother_contact_number, mother_email, mother_profession, mother_aadhaar_no,\n")
        f.write("    status, primary_guardian, is_active, created_by, created_at, updated_at\n")
        f.write(") VALUES (\n")
        
        # Basic info
        f.write(f"    {clean_value(row['First Name'])}, {clean_value(row.get('Middle Name'))}, {clean_value(row.get('Last Name'))},\n")
        f.write(f"    1, 1,\n")  # organization_id, branch_id
        
        # Batch, Course, Dept lookups
        f.write(f"    (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}'),\n")
        f.write(f"    (SELECT id FROM \"Acadix_course\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}')),\n")
        f.write(f"    (SELECT id FROM \"Acadix_department\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}')),\n")
        
        # Academic Year, Semester, Section lookups
        f.write(f"    (SELECT id FROM \"Acadix_academicyear\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') AND academic_year_code = '{ACADEMIC_YEAR}'),\n")
        f.write(f"    (SELECT id FROM \"Acadix_semester\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') LIMIT 1),\n")
        f.write(f"    (SELECT id FROM \"Acadix_section\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') LIMIT 1),\n")
        
        # Admission details
        f.write(f"    {clean_value(row.get('Admission type', 'Regular'))}, '{admission_no}', {clean_value(row.get('RegNo.'))}, '{user_name}',\n")
        f.write(f"    CURRENT_DATE, CURRENT_DATE, {format_date(row.get('Date of Birth'))},\n")
        
        # Lookup values (Gender, Religion, etc.)
        f.write(f"    (SELECT id FROM \"Acadix_gender\" WHERE gender_code = {clean_value(row.get('Gender'))}),\n")
        f.write(f"    (SELECT id FROM \"Acadix_religion\" WHERE religion_code = {clean_value(row.get('Religion'))}),\n")
        f.write(f"    (SELECT id FROM \"Acadix_nationality\" WHERE nationality_code = {clean_value(row.get('Nationality'))}),\n")
        f.write(f"    (SELECT id FROM \"Acadix_blood\" WHERE blood_group = {clean_value(row.get('Blood group'))}),\n")
        f.write(f"    (SELECT id FROM \"Acadix_category\" WHERE category_code = {clean_value(row.get('Category'))}),\n")
        f.write(f"    (SELECT id FROM \"Acadix_mothertongue\" WHERE mother_tongue_code = {clean_value(row.get('Mother Tongue'))}),\n")
        
        # Contact info
        f.write(f"    {clean_number(row.get('Student Aadhar number'), 12)}, {clean_number(row.get('Student contact number'), 10)}, {clean_value(row.get('Student email id'))},\n")
        
        # Father info
        f.write(f"    {clean_value(row.get('Father\\'s name'))}, {clean_number(row.get('Father\\'s contact No'), 10)}, {clean_value(row.get('Father\\'s profession'))}, {clean_value(row.get('Father\\'s email id'))}, {clean_number(row.get('Father\\'s adhar number'), 12)},\n")
        
        # Mother info
        f.write(f"    {clean_value(row.get('Mother\\'s name'))}, {clean_number(row.get('Mother\\'s contact'), 10)}, {clean_value(row.get('Mother\\'s Email id'))}, {clean_value(row.get('Mother\\'s profession'))}, {clean_number(row.get('Mother\\'s adhar number'), 12)},\n")
        
        # Status fields
        f.write(f"    'ACTIVE', 'FATHER', true, 1, NOW(), NOW()\n")
        f.write(");\n\n")
        
        # 2. INSERT INTO Parent
        f.write("-- 2. Parent\n")
        f.write("INSERT INTO \"Acadix_parent\" (parent_id, student_id, is_active)\n")
        f.write("VALUES (\n")
        f.write(f"    {parent_id},\n")
        f.write(f"    (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no = '{admission_no}'),\n")
        f.write(f"    true\n")
        f.write(");\n\n")
        
        # 3. INSERT INTO UserLogin
        f.write("-- 3. UserLogin\n")
        f.write("INSERT INTO \"Acadix_userlogin\" (\n")
        f.write("    user_name, password, plain_password, reference_id, user_type_id,\n")
        f.write("    organization_id, branch_id, is_active, is_staff, is_superuser, date_joined\n")
        f.write(") VALUES (\n")
        f.write(f"    '{user_name}', '{first_name}', '{first_name}',\n")
        f.write(f"    (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no = '{admission_no}'),\n")
        f.write(f"    2, 1, 1, true, false, false, NOW()\n")
        f.write(");\n\n")
        
        # 4. INSERT INTO StudentCourse
        f.write("-- 4. StudentCourse\n")
        f.write("INSERT INTO \"Acadix_studentcourse\" (\n")
        f.write("    student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id,\n")
        f.write("    fee_group_id, fee_applied_from_id, organization_id, branch_id, is_active, created_by, created_at, updated_at\n")
        f.write(") VALUES (\n")
        f.write(f"    (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no = '{admission_no}'),\n")
        f.write(f"    (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}'),\n")
        f.write(f"    (SELECT id FROM \"Acadix_course\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}')),\n")
        f.write(f"    (SELECT id FROM \"Acadix_department\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}')),\n")
        f.write(f"    (SELECT id FROM \"Acadix_academicyear\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') AND academic_year_code = '{ACADEMIC_YEAR}'),\n")
        f.write(f"    (SELECT id FROM \"Acadix_semester\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') LIMIT 1),\n")
        f.write(f"    (SELECT id FROM \"Acadix_section\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') LIMIT 1),\n")
        f.write(f"    (SELECT id FROM \"Acadix_feestructuremaster\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}')),\n")
        f.write(f"    (SELECT id FROM \"Acadix_semester\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') LIMIT 1),\n")
        f.write(f"    1, 1, true, 1, NOW(), NOW()\n")
        f.write(");\n\n")
        
        # 5. INSERT INTO StudentFeeDetail (based on FeeStructureDetail)
        f.write("-- 5. StudentFeeDetail (for each fee element)\n")
        f.write("INSERT INTO \"Acadix_studentfeedetail\" (\n")
        f.write("    student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name,\n")
        f.write("    fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id,\n")
        f.write("    department_id, multiplying_factor, element_amount, element_discount_amount,\n")
        f.write("    total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at\n")
        f.write(")\n")
        f.write("SELECT\n")
        f.write(f"    (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no = '{admission_no}'),\n")
        f.write(f"    (SELECT id FROM \"Acadix_studentcourse\" WHERE student_id = (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no = '{admission_no}')),\n")
        f.write(f"    fsm.id,\n")
        f.write(f"    fsd.id,\n")
        f.write(f"    fet.element_name,\n")
        f.write(f"    (SELECT id FROM \"Acadix_semester\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') LIMIT 1),\n")
        f.write(f"    (SELECT id FROM \"Acadix_semester\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') LIMIT 1),\n")
        f.write(f"    'N', 1, 1,\n")
        f.write(f"    (SELECT id FROM \"Acadix_academicyear\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}') AND academic_year_code = '{ACADEMIC_YEAR}'),\n")
        f.write(f"    (SELECT id FROM \"Acadix_department\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}')),\n")
        f.write(f"    1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()\n")
        f.write(f"FROM \"Acadix_feestructuremaster\" fsm\n")
        f.write(f"JOIN \"Acadix_feestructuredetail\" fsd ON fsm.id = fsd.fee_structure_master_id\n")
        f.write(f"JOIN \"Acadix_feeelementtype\" fet ON fsd.element_type_id = fet.id\n")
        f.write(f"WHERE fsm.batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}');\n\n")
    
    f.write("COMMIT;\n\n")
    
    # Add verification
    f.write("-- =====================================================\n")
    f.write("-- VERIFICATION\n")
    f.write("-- =====================================================\n\n")
    f.write(f"SELECT 'StudentRegistration' as table_name, COUNT(*) as count \n")
    f.write(f"FROM \"Acadix_studentregistration\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}')\n")
    f.write("UNION ALL\n")
    f.write(f"SELECT 'StudentCourse', COUNT(*) FROM \"Acadix_studentcourse\" \n")
    f.write(f"WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}')\n")
    f.write("UNION ALL\n")
    f.write("SELECT 'Parent', COUNT(*) FROM \"Acadix_parent\" WHERE parent_id BETWEEN 101 AND 128\n")
    f.write("UNION ALL\n")
    f.write("SELECT 'UserLogin', COUNT(*) FROM \"Acadix_userlogin\" WHERE user_type_id = 2 AND reference_id IN \n")
    f.write(f"  (SELECT id FROM \"Acadix_studentregistration\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}'))\n")
    f.write("UNION ALL\n")
    f.write("SELECT 'StudentFeeDetail', COUNT(*) FROM \"Acadix_studentfeedetail\" WHERE student_id IN \n")
    f.write(f"  (SELECT id FROM \"Acadix_studentregistration\" WHERE batch_id = (SELECT id FROM \"Acadix_batch\" WHERE batch_code = '{BATCH_CODE}'));\n")

print(f"\n✅ SQL file generated: {output_file}")
print(f"\nGenerated {len(df)} student records")
print(f"Admission numbers: {STARTING_ADMISSION_NO} - {STARTING_ADMISSION_NO + len(df) - 1}")
print(f"Parent IDs: {STARTING_PARENT_ID} - {STARTING_PARENT_ID + len(df) - 1}")
print(f"\nNext batch should start:")
print(f"  admission_no: {STARTING_ADMISSION_NO + len(df)}")
print(f"  parent_id: {STARTING_PARENT_ID + len(df)}")
