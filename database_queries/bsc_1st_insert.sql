-- BSC 1ST YEAR (2025-2029) - 60 STUDENTS
BEGIN;

-- Student 1189: ABHISHEK NAYAK
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'ABHISHEK NAYAK', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1189', 'abhisheknayak1189', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  289, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1189'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'abhisheknayak1189', 'ABHISHEK NAYAK', 'ABHISHEK NAYAK', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1189'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1189'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1189'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1189')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1190: ADITYA JENA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'ADITYA JENA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1190', 'adityajena1190', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  290, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1190'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'adityajena1190', 'ADITYA JENA', 'ADITYA JENA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1190'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1190'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1190'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1190')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1191: AKRUTI MAHARANA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'AKRUTI MAHARANA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1191', 'akrutimaharana1191', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  291, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1191'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'akrutimaharana1191', 'AKRUTI MAHARANA', 'AKRUTI MAHARANA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1191'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1191'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1191'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1191')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1192: ANJALI PRIYADARSHINI SAHOO
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'ANJALI PRIYADARSHINI SAHOO', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1192', 'anjalipriyadarshinisahoo1192', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  292, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1192'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'anjalipriyadarshinisahoo1192', 'ANJALI PRIYADARSHINI SAHOO', 'ANJALI PRIYADARSHINI SAHOO', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1192'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1192'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1192'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1192')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1193: ARCHITA PRIYADARSHINI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'ARCHITA PRIYADARSHINI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1193', 'architapriyadarshini1193', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  293, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1193'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'architapriyadarshini1193', 'ARCHITA PRIYADARSHINI', 'ARCHITA PRIYADARSHINI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1193'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1193'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1193'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1193')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1194: BALARAM BARIK
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'BALARAM BARIK', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1194', 'balarambarik1194', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  294, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1194'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'balarambarik1194', 'BALARAM BARIK', 'BALARAM BARIK', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1194'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1194'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1194'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1194')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1195: BARSARANI MAHAPATRA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'BARSARANI MAHAPATRA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1195', 'barsaranimahapatra1195', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  295, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1195'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'barsaranimahapatra1195', 'BARSARANI MAHAPATRA', 'BARSARANI MAHAPATRA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1195'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1195'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1195'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1195')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1196: BARSHARANI SWAIN
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'BARSHARANI SWAIN', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1196', 'barsharaniswain1196', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  296, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1196'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'barsharaniswain1196', 'BARSHARANI SWAIN', 'BARSHARANI SWAIN', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1196'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1196'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1196'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1196')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1197: BHABANI SANKAR PARIDA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'BHABANI SANKAR PARIDA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1197', 'bhabanisankarparida1197', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  297, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1197'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'bhabanisankarparida1197', 'BHABANI SANKAR PARIDA', 'BHABANI SANKAR PARIDA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1197'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1197'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1197'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1197')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1198: BIKASH SWAIN
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'BIKASH SWAIN', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1198', 'bikashswain1198', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  298, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1198'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'bikashswain1198', 'BIKASH SWAIN', 'BIKASH SWAIN', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1198'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1198'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1198'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1198')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1199: BISWAJIT BEHERA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'BISWAJIT BEHERA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1199', 'biswajitbehera1199', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  299, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1199'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'biswajitbehera1199', 'BISWAJIT BEHERA', 'BISWAJIT BEHERA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1199'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1199'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1199'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1199')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1200: CHINMAYA MAJHI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'CHINMAYA MAJHI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1200', 'chinmayamajhi1200', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  300, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1200'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'chinmayamajhi1200', 'CHINMAYA MAJHI', 'CHINMAYA MAJHI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1200'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1200'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1200'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1200')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1201: DEBAJANI DAS
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'DEBAJANI DAS', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1201', 'debajanidas1201', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  301, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1201'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'debajanidas1201', 'DEBAJANI DAS', 'DEBAJANI DAS', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1201'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1201'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1201'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1201')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1202: DEEPANKAR SINGHA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'DEEPANKAR SINGHA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1202', 'deepankarsingha1202', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  302, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1202'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'deepankarsingha1202', 'DEEPANKAR SINGHA', 'DEEPANKAR SINGHA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1202'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1202'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1202'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1202')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1203: DIBYAJYOTI PATRA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'DIBYAJYOTI PATRA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1203', 'dibyajyotipatra1203', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  303, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1203'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'dibyajyotipatra1203', 'DIBYAJYOTI PATRA', 'DIBYAJYOTI PATRA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1203'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1203'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1203'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1203')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1204: DIPTIMAYEE SWAIN
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'DIPTIMAYEE SWAIN', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1204', 'diptimayeeswain1204', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  304, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1204'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'diptimayeeswain1204', 'DIPTIMAYEE SWAIN', 'DIPTIMAYEE SWAIN', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1204'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1204'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1204'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1204')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1205: GOUTAM JENA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'GOUTAM JENA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1205', 'goutamjena1205', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  305, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1205'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'goutamjena1205', 'GOUTAM JENA', 'GOUTAM JENA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1205'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1205'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1205'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1205')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1206: GYANENDRA PRASAD SAHOO
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'GYANENDRA PRASAD SAHOO', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1206', 'gyanendraprasadsahoo1206', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  306, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1206'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'gyanendraprasadsahoo1206', 'GYANENDRA PRASAD SAHOO', 'GYANENDRA PRASAD SAHOO', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1206'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1206'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1206'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1206')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1207: HIMANSHU BEHERA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'HIMANSHU BEHERA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1207', 'himanshubehera1207', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  307, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1207'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'himanshubehera1207', 'HIMANSHU BEHERA', 'HIMANSHU BEHERA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1207'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1207'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1207'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1207')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1208: IPSITA NANDA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'IPSITA NANDA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1208', 'ipsitananda1208', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  308, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1208'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ipsitananda1208', 'IPSITA NANDA', 'IPSITA NANDA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1208'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1208'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1208'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1208')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1209: KANCHAN DIGAL
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'KANCHAN DIGAL', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1209', 'kanchandigal1209', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  309, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1209'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'kanchandigal1209', 'KANCHAN DIGAL', 'KANCHAN DIGAL', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1209'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1209'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1209'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1209')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1210: KHUSI SAHU
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'KHUSI SAHU', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1210', 'khusisahu1210', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  310, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1210'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'khusisahu1210', 'KHUSI SAHU', 'KHUSI SAHU', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1210'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1210'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1210'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1210')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1211: LAXMIPRIYA SETHI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'LAXMIPRIYA SETHI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1211', 'laxmipriyasethi1211', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  311, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1211'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'laxmipriyasethi1211', 'LAXMIPRIYA SETHI', 'LAXMIPRIYA SETHI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1211'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1211'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1211'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1211')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1212: LITURANJAN DALEI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'LITURANJAN DALEI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1212', 'lituranjandalei1212', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  312, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1212'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'lituranjandalei1212', 'LITURANJAN DALEI', 'LITURANJAN DALEI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1212'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1212'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1212'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1212')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1213: MAHAPRASAD DAS
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'MAHAPRASAD DAS', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1213', 'mahaprasaddas1213', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  313, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1213'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'mahaprasaddas1213', 'MAHAPRASAD DAS', 'MAHAPRASAD DAS', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1213'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1213'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1213'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1213')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1214: MOUSUMI SATAPATHY
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'MOUSUMI SATAPATHY', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1214', 'mousumisatapathy1214', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  314, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1214'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'mousumisatapathy1214', 'MOUSUMI SATAPATHY', 'MOUSUMI SATAPATHY', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1214'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1214'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1214'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1214')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1215: NIKITA SUBHADARSINI SAHOO
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'NIKITA SUBHADARSINI SAHOO', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1215', 'nikitasubhadarsinisahoo1215', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  315, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1215'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'nikitasubhadarsinisahoo1215', 'NIKITA SUBHADARSINI SAHOO', 'NIKITA SUBHADARSINI SAHOO', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1215'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1215'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1215'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1215')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1216: PAYAL PRIYADARSHINI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'PAYAL PRIYADARSHINI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1216', 'payalpriyadarshini1216', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  316, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1216'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'payalpriyadarshini1216', 'PAYAL PRIYADARSHINI', 'PAYAL PRIYADARSHINI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1216'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1216'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1216'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1216')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1217: PRANGYA PRIYADARSANI MISHRA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'PRANGYA PRIYADARSANI MISHRA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1217', 'prangyapriyadarsanimishra1217', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  317, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1217'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'prangyapriyadarsanimishra1217', 'PRANGYA PRIYADARSANI MISHRA', 'PRANGYA PRIYADARSANI MISHRA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1217'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1217'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1217'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1217')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1218: PRIYADARSHANI JAMUDA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'PRIYADARSHANI JAMUDA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1218', 'priyadarshanijamuda1218', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  318, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1218'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'priyadarshanijamuda1218', 'PRIYADARSHANI JAMUDA', 'PRIYADARSHANI JAMUDA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1218'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1218'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1218'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1218')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1219: PUJA BHOI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'PUJA BHOI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1219', 'pujabhoi1219', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  319, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1219'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'pujabhoi1219', 'PUJA BHOI', 'PUJA BHOI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1219'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1219'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1219'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1219')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1220: PUSPALATA MOHANTA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'PUSPALATA MOHANTA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1220', 'puspalatamohanta1220', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  320, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1220'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'puspalatamohanta1220', 'PUSPALATA MOHANTA', 'PUSPALATA MOHANTA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1220'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1220'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1220'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1220')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1221: RAJKUMAR ROUT
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'RAJKUMAR ROUT', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1221', 'rajkumarrout1221', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  321, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1221'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rajkumarrout1221', 'RAJKUMAR ROUT', 'RAJKUMAR ROUT', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1221'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1221'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1221'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1221')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1222: RITUSHRI GHORAI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'RITUSHRI GHORAI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1222', 'ritushrighorai1222', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  322, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1222'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ritushrighorai1222', 'RITUSHRI GHORAI', 'RITUSHRI GHORAI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1222'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1222'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1222'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1222')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1223: RUDRANARAYAN SAHOO
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'RUDRANARAYAN SAHOO', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1223', 'rudranarayansahoo1223', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  323, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1223'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rudranarayansahoo1223', 'RUDRANARAYAN SAHOO', 'RUDRANARAYAN SAHOO', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1223'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1223'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1223'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1223')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1224: SAISMITA BISWAL
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SAISMITA BISWAL', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1224', 'saismitabiswal1224', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  324, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1224'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'saismitabiswal1224', 'SAISMITA BISWAL', 'SAISMITA BISWAL', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1224'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1224'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1224'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1224')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1225: SANCHITA BEHERA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SANCHITA BEHERA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1225', 'sanchitabehera1225', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  325, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1225'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sanchitabehera1225', 'SANCHITA BEHERA', 'SANCHITA BEHERA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1225'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1225'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1225'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1225')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1226: SAUMYA RANJAN SAHOO
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SAUMYA RANJAN SAHOO', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1226', 'saumyaranjansahoo1226', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  326, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1226'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'saumyaranjansahoo1226', 'SAUMYA RANJAN SAHOO', 'SAUMYA RANJAN SAHOO', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1226'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1226'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1226'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1226')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1227: SIBANI SAHOO
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SIBANI SAHOO', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1227', 'sibanisahoo1227', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  327, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1227'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sibanisahoo1227', 'SIBANI SAHOO', 'SIBANI SAHOO', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1227'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1227'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1227'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1227')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1228: SMITANJAY MOHAPATRA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SMITANJAY MOHAPATRA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1228', 'smitanjaymohapatra1228', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  328, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1228'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'smitanjaymohapatra1228', 'SMITANJAY MOHAPATRA', 'SMITANJAY MOHAPATRA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1228'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1228'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1228'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1228')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1229: SMRUTIPARNA DAS
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SMRUTIPARNA DAS', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1229', 'smrutiparnadas1229', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  329, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1229'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'smrutiparnadas1229', 'SMRUTIPARNA DAS', 'SMRUTIPARNA DAS', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1229'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1229'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1229'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1229')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1230: SMRUTIREKHA DALAI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SMRUTIREKHA DALAI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1230', 'smrutirekhadalai1230', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  330, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1230'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'smrutirekhadalai1230', 'SMRUTIREKHA DALAI', 'SMRUTIREKHA DALAI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1230'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1230'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1230'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1230')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1231: SMRUTIREKHA DUTTA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SMRUTIREKHA DUTTA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1231', 'smrutirekhadutta1231', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  331, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1231'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'smrutirekhadutta1231', 'SMRUTIREKHA DUTTA', 'SMRUTIREKHA DUTTA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1231'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1231'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1231'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1231')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1232: SNIGDHA MISHRA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SNIGDHA MISHRA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1232', 'snigdhamishra1232', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  332, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1232'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'snigdhamishra1232', 'SNIGDHA MISHRA', 'SNIGDHA MISHRA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1232'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1232'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1232'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1232')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1233: SOMANATHA MOHANTA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SOMANATHA MOHANTA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1233', 'somanathamohanta1233', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  333, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1233'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'somanathamohanta1233', 'SOMANATHA MOHANTA', 'SOMANATHA MOHANTA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1233'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1233'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1233'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1233')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1234: SOUMENDRA NATH NANDA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SOUMENDRA NATH NANDA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1234', 'soumendranathnanda1234', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  334, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1234'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'soumendranathnanda1234', 'SOUMENDRA NATH NANDA', 'SOUMENDRA NATH NANDA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1234'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1234'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1234'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1234')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1235: SOUMYA RANJAN DAS
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SOUMYA RANJAN DAS', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1235', 'soumyaranjandas1235', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  335, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1235'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'soumyaranjandas1235', 'SOUMYA RANJAN DAS', 'SOUMYA RANJAN DAS', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1235'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1235'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1235'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1235')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1236: SUBHALAXMI BARIKI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SUBHALAXMI BARIKI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1236', 'subhalaxmibariki1236', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  336, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1236'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhalaxmibariki1236', 'SUBHALAXMI BARIKI', 'SUBHALAXMI BARIKI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1236'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1236'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1236'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1236')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1237: SUBHALAXMI SAHU
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SUBHALAXMI SAHU', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1237', 'subhalaxmisahu1237', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  337, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1237'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhalaxmisahu1237', 'SUBHALAXMI SAHU', 'SUBHALAXMI SAHU', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1237'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1237'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1237'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1237')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1238: SUBHALIN PANDA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SUBHALIN PANDA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1238', 'subhalinpanda1238', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  338, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1238'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhalinpanda1238', 'SUBHALIN PANDA', 'SUBHALIN PANDA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1238'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1238'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1238'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1238')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1239: SUBHAM KUMAR
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SUBHAM KUMAR', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1239', 'subhamkumar1239', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  339, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1239'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhamkumar1239', 'SUBHAM KUMAR', 'SUBHAM KUMAR', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1239'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1239'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1239'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1239')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1240: SUBHASHREE SWAIN
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SUBHASHREE SWAIN', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1240', 'subhashreeswain1240', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  340, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1240'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhashreeswain1240', 'SUBHASHREE SWAIN', 'SUBHASHREE SWAIN', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1240'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1240'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1240'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1240')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1241: SUBHASMITA DAS
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SUBHASMITA DAS', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1241', 'subhasmitadas1241', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  341, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1241'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhasmitadas1241', 'SUBHASMITA DAS', 'SUBHASMITA DAS', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1241'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1241'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1241'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1241')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1242: SUJAL MAHAPATRA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SUJAL MAHAPATRA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1242', 'sujalmahapatra1242', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  342, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1242'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sujalmahapatra1242', 'SUJAL MAHAPATRA', 'SUJAL MAHAPATRA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1242'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1242'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1242'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1242')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1243: SUMITRA MOHANTA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SUMITRA MOHANTA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1243', 'sumitramohanta1243', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  343, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1243'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sumitramohanta1243', 'SUMITRA MOHANTA', 'SUMITRA MOHANTA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1243'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1243'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1243'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1243')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1244: SWAPNA PRIYADARSANI BARIK
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SWAPNA PRIYADARSANI BARIK', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1244', 'swapnapriyadarsanibarik1244', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  344, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1244'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'swapnapriyadarsanibarik1244', 'SWAPNA PRIYADARSANI BARIK', 'SWAPNA PRIYADARSANI BARIK', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1244'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1244'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1244'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1244')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1245: SWARNALATA PARIDA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SWARNALATA PARIDA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1245', 'swarnalataparida1245', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  345, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1245'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'swarnalataparida1245', 'SWARNALATA PARIDA', 'SWARNALATA PARIDA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1245'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1245'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1245'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1245')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1246: SWAYAM SURANJAN PAHAN
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SWAYAM SURANJAN PAHAN', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1246', 'swayamsuranjanpahan1246', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  346, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1246'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'swayamsuranjanpahan1246', 'SWAYAM SURANJAN PAHAN', 'SWAYAM SURANJAN PAHAN', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1246'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1246'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1246'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1246')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1247: TANMAYEE BEHERA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'TANMAYEE BEHERA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1247', 'tanmayeebehera1247', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  347, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1247'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'tanmayeebehera1247', 'TANMAYEE BEHERA', 'TANMAYEE BEHERA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1247'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1247'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1247'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1247')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

-- Student 1248: TAPASWINI MALLICK
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'TAPASWINI MALLICK', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'Regular', '1248', 'tapaswinimallick1248', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  348, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1248'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'tapaswinimallick1248', 'TAPASWINI MALLICK', 'TAPASWINI MALLICK', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1248'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1248'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1248'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1248')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029') AND academic_year_code='1st year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');

COMMIT;

-- Verification
SELECT COUNT(*) as students FROM "Acadix_studentregistration" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2025-2029');
