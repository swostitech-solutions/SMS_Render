import pandas as pd

df = pd.read_excel('D:/intern2/excel files/GNM 3rd YEAR STUDENT DETAILS_2023-2026.xlsx')

with open('D:/intern2/database_queries/gnm_3rd_insert.sql', 'w', encoding='utf-8') as f:
    f.write('-- GNM 3RD YEAR (2023-2026) - 28 STUDENTS\n')
    f.write('BEGIN;\n\n')
    
    for idx, row in df.iterrows():
        adm_no = 1001 + idx
        parent_id = 101 + idx
        first_name = str(row['First Name']).strip()
        username = first_name.lower() + str(adm_no)
        
        # Student Registration
        f.write(f'-- Student {idx+1}: {first_name}\n')
        f.write('INSERT INTO "Acadix_studentregistration" (\n')
        f.write('  first_name, organization_id, branch_id,\n')
        f.write('  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,\n')
        f.write('  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at\n')
        f.write(') VALUES (\n')
        f.write(f"  '{first_name}', 1, 1,\n")
        f.write("  (SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026'),\n")
        f.write("  (SELECT id FROM \"Acadix_course\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026')),\n")
        f.write("  (SELECT id FROM \"Acadix_department\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026')),\n")
        f.write("  (SELECT id FROM \"Acadix_academicyear\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),\n")
        f.write("  (SELECT id FROM \"Acadix_semester\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') LIMIT 1),\n")
        f.write("  (SELECT id FROM \"Acadix_section\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') LIMIT 1),\n")
        f.write(f"  'Regular', '{adm_no}', '{username}', 'ACTIVE', true, 1, NOW(), NOW()\n")
        f.write(');\n\n')
        
        # Parent
        f.write('INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (\n')
        f.write(f"  {parent_id}, (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no='{adm_no}'), true\n")
        f.write(');\n\n')
        
        # UserLogin
        f.write('INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (\n')
        f.write(f"  '{username}', '{first_name}', '{first_name}', (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no='{adm_no}'), 2, 1, 1, true, false, false, NOW()\n")
        f.write(');\n\n')
        
        # StudentCourse
        f.write('INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (\n')
        f.write(f"  (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no='{adm_no}'),\n")
        f.write("  (SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026'),\n")
        f.write("  (SELECT id FROM \"Acadix_course\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026')),\n")
        f.write("  (SELECT id FROM \"Acadix_department\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026')),\n")
        f.write("  (SELECT id FROM \"Acadix_academicyear\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),\n")
        f.write("  (SELECT id FROM \"Acadix_semester\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') LIMIT 1),\n")
        f.write("  (SELECT id FROM \"Acadix_section\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') LIMIT 1),\n")
        f.write("  (SELECT id FROM \"Acadix_feestructuremaster\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026')),\n")
        f.write("  (SELECT id FROM \"Acadix_semester\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') LIMIT 1),\n")
        f.write("  1, 1, false, 'active', true, false, 1, NOW(), NOW()\n")
        f.write(');\n\n')
        
        # StudentFeeDetail
        f.write('INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)\n')
        f.write('SELECT\n')
        f.write(f"  (SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no='{adm_no}'),\n")
        f.write(f"  (SELECT id FROM \"Acadix_studentcourse\" WHERE student_id=(SELECT id FROM \"Acadix_studentregistration\" WHERE admission_no='{adm_no}')),\n")
        f.write("  fsm.id, fsd.id, fet.element_name,\n")
        f.write("  (SELECT id FROM \"Acadix_semester\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') LIMIT 1),\n")
        f.write("  (SELECT id FROM \"Acadix_semester\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') LIMIT 1),\n")
        f.write("  'N', 1, 1,\n")
        f.write("  (SELECT id FROM \"Acadix_academicyear\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),\n")
        f.write("  (SELECT id FROM \"Acadix_department\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026')),\n")
        f.write("  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()\n")
        f.write("FROM \"Acadix_feestructuremaster\" fsm\n")
        f.write("JOIN \"Acadix_feestructuredetail\" fsd ON fsm.id=fsd.fee_structure_master_id\n")
        f.write("JOIN \"Acadix_feeelementtype\" fet ON fsd.element_type_id=fet.id\n")
        f.write("WHERE fsm.batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026');\n\n")
    
    f.write('COMMIT;\n\n')
    f.write('-- Verification\n')
    f.write("SELECT COUNT(*) as students FROM \"Acadix_studentregistration\" WHERE batch_id=(SELECT id FROM \"Acadix_batch\" WHERE batch_code='2023-2026');\n")

print('SQL file created: D:/intern2/database_queries/gnm_3rd_insert.sql')
print(f'Generated {len(df)} student records')
