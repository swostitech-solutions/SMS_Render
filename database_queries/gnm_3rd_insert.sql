-- GNM 3RD YEAR (2023-2026) - 28 STUDENTS
BEGIN;

-- Student 1: MAMALI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'MAMALI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1001', 'mamali1001', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  101, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1001'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'mamali1001', 'MAMALI', 'MAMALI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1001'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1001'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1001'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1001')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 2: Sagarika
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Sagarika', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1002', 'sagarika1002', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  102, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1002'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sagarika1002', 'Sagarika', 'Sagarika', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1002'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1002'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1002'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1002')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 3: Arpita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Arpita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1003', 'arpita1003', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  103, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1003'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'arpita1003', 'Arpita', 'Arpita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1003'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1003'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1003'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1003')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 4: Priyanisha
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Priyanisha', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1004', 'priyanisha1004', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  104, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1004'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'priyanisha1004', 'Priyanisha', 'Priyanisha', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1004'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1004'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1004'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1004')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 5: Barsha
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Barsha', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1005', 'barsha1005', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  105, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1005'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'barsha1005', 'Barsha', 'Barsha', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1005'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1005'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1005'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1005')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 6: SANGAM
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'SANGAM', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1006', 'sangam1006', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  106, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1006'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sangam1006', 'SANGAM', 'SANGAM', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1006'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1006'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1006'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1006')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 7: Manisha
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Manisha', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1007', 'manisha1007', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  107, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1007'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'manisha1007', 'Manisha', 'Manisha', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1007'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1007'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1007'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1007')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 8: Rupali
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Rupali', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1008', 'rupali1008', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  108, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1008'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rupali1008', 'Rupali', 'Rupali', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1008'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1008'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1008'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1008')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 9: TINA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'TINA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1009', 'tina1009', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  109, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1009'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'tina1009', 'TINA', 'TINA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1009'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1009'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1009'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1009')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 10: Tanistha
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Tanistha', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1010', 'tanistha1010', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  110, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1010'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'tanistha1010', 'Tanistha', 'Tanistha', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1010'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1010'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1010'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1010')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 11: Reetanjali
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Reetanjali', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1011', 'reetanjali1011', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  111, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1011'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'reetanjali1011', 'Reetanjali', 'Reetanjali', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1011'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1011'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1011'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1011')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 12: Tusharakanta
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Tusharakanta', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1012', 'tusharakanta1012', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  112, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1012'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'tusharakanta1012', 'Tusharakanta', 'Tusharakanta', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1012'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1012'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1012'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1012')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 13: Kanana bala
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Kanana bala', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1013', 'kanana bala1013', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  113, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1013'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'kanana bala1013', 'Kanana bala', 'Kanana bala', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1013'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1013'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1013'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1013')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 14: Lipika
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Lipika', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1014', 'lipika1014', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  114, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1014'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'lipika1014', 'Lipika', 'Lipika', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1014'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1014'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1014'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1014')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 15: Priti
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Priti', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1015', 'priti1015', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  115, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1015'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'priti1015', 'Priti', 'Priti', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1015'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1015'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1015'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1015')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 16: Amrita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Amrita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1016', 'amrita1016', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  116, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1016'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'amrita1016', 'Amrita', 'Amrita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1016'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1016'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1016'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1016')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 17: RITESH
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'RITESH', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1017', 'ritesh1017', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  117, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1017'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ritesh1017', 'RITESH', 'RITESH', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1017'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1017'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1017'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1017')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 18: Debaki
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Debaki', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1018', 'debaki1018', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  118, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1018'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'debaki1018', 'Debaki', 'Debaki', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1018'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1018'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1018'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1018')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 19: Prodeep
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Prodeep', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1019', 'prodeep1019', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  119, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1019'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'prodeep1019', 'Prodeep', 'Prodeep', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1019'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1019'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1019'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1019')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 20: BAISHALI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'BAISHALI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1020', 'baishali1020', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  120, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1020'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'baishali1020', 'BAISHALI', 'BAISHALI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1020'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1020'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1020'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1020')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 21: Bishnupriya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'Bishnupriya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1021', 'bishnupriya1021', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  121, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1021'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'bishnupriya1021', 'Bishnupriya', 'Bishnupriya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1021'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1021'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1021'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1021')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 22: HARAPRIYA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'HARAPRIYA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1022', 'harapriya1022', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  122, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1022'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'harapriya1022', 'HARAPRIYA', 'HARAPRIYA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1022'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1022'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1022'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1022')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 23: SASMITA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'SASMITA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1023', 'sasmita1023', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  123, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1023'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sasmita1023', 'SASMITA', 'SASMITA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1023'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1023'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1023'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1023')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 24: RONALISHA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'RONALISHA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1024', 'ronalisha1024', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  124, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1024'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ronalisha1024', 'RONALISHA', 'RONALISHA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1024'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1024'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1024'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1024')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 25: LISHARANI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'LISHARANI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1025', 'lisharani1025', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  125, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1025'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'lisharani1025', 'LISHARANI', 'LISHARANI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1025'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1025'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1025'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1025')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 26: RAJANANDINI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'RAJANANDINI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1026', 'rajanandini1026', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  126, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1026'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rajanandini1026', 'RAJANANDINI', 'RAJANANDINI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1026'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1026'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1026'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1026')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 27: PRAKASH
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'PRAKASH', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1027', 'prakash1027', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  127, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1027'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'prakash1027', 'PRAKASH', 'PRAKASH', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1027'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1027'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1027'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1027')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

-- Student 28: SANTOSHI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at
) VALUES (
  'SANTOSHI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'Regular', '1028', 'santoshi1028', 'ACTIVE', true, 1, NOW(), NOW()
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  128, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1028'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'santoshi1028', 'SANTOSHI', 'SANTOSHI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1028'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1028'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1028'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1028')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026') AND academic_year_code='3rd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');

COMMIT;

-- Verification
SELECT COUNT(*) as students FROM "Acadix_studentregistration" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2026');
