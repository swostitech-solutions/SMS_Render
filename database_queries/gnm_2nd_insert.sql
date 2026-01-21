-- GNM 2ND YEAR (2024-2027) - 33 STUDENTS
BEGIN;

-- Student 1: Subhankar
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Subhankar', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1029', 'subhankar1029', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  129, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1029'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhankar1029', 'Subhankar', 'Subhankar', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1029'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1029'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1029'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1029')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 2: Shaswot
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Shaswot', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1030', 'shaswot1030', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  130, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1030'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'shaswot1030', 'Shaswot', 'Shaswot', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1030'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1030'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1030'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1030')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 3: Sumitra
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Sumitra', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1031', 'sumitra1031', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  131, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1031'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sumitra1031', 'Sumitra', 'Sumitra', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1031'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1031'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1031'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1031')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 4: Prasant
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Prasant', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1032', 'prasant1032', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  132, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1032'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'prasant1032', 'Prasant', 'Prasant', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1032'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1032'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1032'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1032')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 5: Monalisa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Monalisa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1033', 'monalisa1033', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  133, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1033'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'monalisa1033', 'Monalisa', 'Monalisa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1033'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1033'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1033'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1033')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 6: Debasmita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Debasmita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1034', 'debasmita1034', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  134, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1034'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'debasmita1034', 'Debasmita', 'Debasmita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1034'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1034'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1034'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1034')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 7: Krishna
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Krishna', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1035', 'krishna1035', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  135, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1035'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'krishna1035', 'Krishna', 'Krishna', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1035'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1035'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1035'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1035')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 8: Monalisa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Monalisa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1036', 'monalisa1036', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  136, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1036'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'monalisa1036', 'Monalisa', 'Monalisa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1036'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1036'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1036'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1036')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 9: Pratikshya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Pratikshya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1037', 'pratikshya1037', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  137, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1037'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'pratikshya1037', 'Pratikshya', 'Pratikshya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1037'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1037'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1037'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1037')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 10: Rasmi Barik
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Rasmi Barik', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1038', 'rasmi barik1038', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  138, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1038'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rasmi barik1038', 'Rasmi Barik', 'Rasmi Barik', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1038'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1038'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1038'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1038')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 11: Chandini
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Chandini', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1039', 'chandini1039', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  139, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1039'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'chandini1039', 'Chandini', 'Chandini', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1039'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1039'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1039'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1039')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 12: Sudhisna
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Sudhisna', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1040', 'sudhisna1040', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  140, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1040'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sudhisna1040', 'Sudhisna', 'Sudhisna', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1040'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1040'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1040'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1040')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 13: Jyotirmayee behera
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Jyotirmayee behera', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1041', 'jyotirmayee behera1041', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  141, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1041'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'jyotirmayee behera1041', 'Jyotirmayee behera', 'Jyotirmayee behera', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1041'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1041'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1041'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1041')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 14: Manorama
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Manorama', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1042', 'manorama1042', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  142, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1042'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'manorama1042', 'Manorama', 'Manorama', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1042'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1042'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1042'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1042')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 15: Rimilin
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Rimilin', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1043', 'rimilin1043', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  143, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1043'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rimilin1043', 'Rimilin', 'Rimilin', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1043'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1043'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1043'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1043')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 16: Shradhamayee
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Shradhamayee', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1044', 'shradhamayee1044', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  144, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1044'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'shradhamayee1044', 'Shradhamayee', 'Shradhamayee', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1044'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1044'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1044'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1044')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 17: Hrisita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Hrisita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1045', 'hrisita1045', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  145, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1045'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'hrisita1045', 'Hrisita', 'Hrisita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1045'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1045'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1045'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1045')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 18: Parbati
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Parbati', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1046', 'parbati1046', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  146, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1046'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'parbati1046', 'Parbati', 'Parbati', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1046'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1046'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1046'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1046')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 19: Madhusmita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Madhusmita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1047', 'madhusmita1047', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  147, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1047'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'madhusmita1047', 'Madhusmita', 'Madhusmita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1047'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1047'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1047'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1047')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 20: Prativa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Prativa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1048', 'prativa1048', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  148, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1048'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'prativa1048', 'Prativa', 'Prativa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1048'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1048'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1048'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1048')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 21: Purnima
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Purnima', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1049', 'purnima1049', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  149, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1049'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'purnima1049', 'Purnima', 'Purnima', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1049'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1049'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1049'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1049')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 22: Naime
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Naime', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1050', 'naime1050', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  150, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1050'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'naime1050', 'Naime', 'Naime', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1050'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1050'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1050'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1050')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 23: Subhashree
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Subhashree', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1051', 'subhashree1051', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  151, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1051'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhashree1051', 'Subhashree', 'Subhashree', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1051'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1051'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1051'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1051')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 24: Shusree
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Shusree', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1052', 'shusree1052', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  152, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1052'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'shusree1052', 'Shusree', 'Shusree', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1052'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1052'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1052'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1052')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 25: Tanmaya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Tanmaya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1053', 'tanmaya1053', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  153, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1053'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'tanmaya1053', 'Tanmaya', 'Tanmaya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1053'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1053'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1053'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1053')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 26: Gyana
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Gyana', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1054', 'gyana1054', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  154, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1054'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'gyana1054', 'Gyana', 'Gyana', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1054'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1054'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1054'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1054')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 27: Jusabo
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Jusabo', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1055', 'jusabo1055', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  155, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1055'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'jusabo1055', 'Jusabo', 'Jusabo', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1055'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1055'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1055'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1055')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 28: Prakash
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Prakash', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1056', 'prakash1056', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  156, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1056'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'prakash1056', 'Prakash', 'Prakash', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1056'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1056'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1056'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1056')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 29: Pankajini
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Pankajini', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1057', 'pankajini1057', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  157, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1057'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'pankajini1057', 'Pankajini', 'Pankajini', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1057'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1057'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1057'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1057')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 30: Puja
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Puja', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1058', 'puja1058', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  158, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1058'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'puja1058', 'Puja', 'Puja', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1058'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1058'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1058'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1058')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 31: Pratikshya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Pratikshya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1059', 'pratikshya1059', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  159, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1059'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'pratikshya1059', 'Pratikshya', 'Pratikshya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1059'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1059'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1059'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1059')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 32: Satarupa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Satarupa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1060', 'satarupa1060', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  160, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1060'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'satarupa1060', 'Satarupa', 'Satarupa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1060'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1060'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1060'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1060')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

-- Student 33: Sumit
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Sumit', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'Regular', '1061', 'sumit1061', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  161, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1061'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sumit1061', 'Sumit', 'Sumit', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1061'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1061'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1061'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1061')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');

COMMIT;

-- Verification
SELECT COUNT(*) as students FROM "Acadix_studentregistration" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2027');
