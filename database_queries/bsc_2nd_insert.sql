-- BSC 2ND YEAR (2024-2028) - 54 STUDENTS
BEGIN;

-- Student 1135: K.
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'K.', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1135', 'k1135', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  235, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1135'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'k1135', 'K.', 'K.', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1135'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1135'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1135'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1135')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1136: Ashish
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Ashish', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1136', 'ashish1136', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  236, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1136'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ashish1136', 'Ashish', 'Ashish', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1136'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1136'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1136'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1136')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1137: Pratyush
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Pratyush', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1137', 'pratyush1137', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  237, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1137'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'pratyush1137', 'Pratyush', 'Pratyush', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1137'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1137'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1137'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1137')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1138: Sitansu
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sitansu', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1138', 'sitansu1138', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  238, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1138'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sitansu1138', 'Sitansu', 'Sitansu', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1138'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1138'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1138'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1138')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1139: Soumya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Soumya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1139', 'soumya1139', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  239, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1139'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'soumya1139', 'Soumya', 'Soumya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1139'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1139'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1139'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1139')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1140: SUPRIYA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SUPRIYA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1140', 'supriya1140', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  240, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1140'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'supriya1140', 'SUPRIYA', 'SUPRIYA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1140'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1140'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1140'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1140')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1141: Kumari
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Kumari', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1141', 'kumari1141', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  241, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1141'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'kumari1141', 'Kumari', 'Kumari', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1141'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1141'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1141'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1141')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1142: Pragyan
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Pragyan', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1142', 'pragyan1142', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  242, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1142'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'pragyan1142', 'Pragyan', 'Pragyan', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1142'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1142'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1142'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1142')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1143: Priyanka
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Priyanka', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1143', 'priyanka1143', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  243, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1143'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'priyanka1143', 'Priyanka', 'Priyanka', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1143'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1143'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1143'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1143')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1144: Mamali
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Mamali', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1144', 'mamali1144', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  244, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1144'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'mamali1144', 'Mamali', 'Mamali', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1144'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1144'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1144'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1144')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1145: Bidusmita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Bidusmita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1145', 'bidusmita1145', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  245, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1145'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'bidusmita1145', 'Bidusmita', 'Bidusmita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1145'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1145'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1145'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1145')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1146: Sasmita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sasmita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1146', 'sasmita1146', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  246, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1146'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sasmita1146', 'Sasmita', 'Sasmita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1146'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1146'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1146'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1146')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1147: Mitali
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Mitali', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1147', 'mitali1147', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  247, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1147'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'mitali1147', 'Mitali', 'Mitali', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1147'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1147'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1147'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1147')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1148: Rojalin
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Rojalin', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1148', 'rojalin1148', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  248, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1148'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rojalin1148', 'Rojalin', 'Rojalin', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1148'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1148'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1148'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1148')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1149: Tapaswinee
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Tapaswinee', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1149', 'tapaswinee1149', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  249, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1149'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'tapaswinee1149', 'Tapaswinee', 'Tapaswinee', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1149'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1149'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1149'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1149')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1150: Anchal
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Anchal', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1150', 'anchal1150', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  250, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1150'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'anchal1150', 'Anchal', 'Anchal', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1150'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1150'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1150'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1150')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1151: Abhipsa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Abhipsa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1151', 'abhipsa1151', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  251, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1151'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'abhipsa1151', 'Abhipsa', 'Abhipsa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1151'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1151'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1151'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1151')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1152: Saswati
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Saswati', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1152', 'saswati1152', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  252, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1152'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'saswati1152', 'Saswati', 'Saswati', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1152'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1152'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1152'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1152')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1153: MADHU
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'MADHU', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1153', 'madhu1153', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  253, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1153'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'madhu1153', 'MADHU', 'MADHU', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1153'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1153'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1153'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1153')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1154: Subham
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Subham', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1154', 'subham1154', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  254, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1154'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subham1154', 'Subham', 'Subham', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1154'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1154'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1154'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1154')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1155: JYOTI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'JYOTI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1155', 'jyoti1155', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  255, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1155'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'jyoti1155', 'JYOTI', 'JYOTI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1155'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1155'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1155'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1155')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1156: HIMADRI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'HIMADRI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1156', 'himadri1156', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  256, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1156'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'himadri1156', 'HIMADRI', 'HIMADRI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1156'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1156'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1156'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1156')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1157: Susmita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Susmita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1157', 'susmita1157', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  257, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1157'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'susmita1157', 'Susmita', 'Susmita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1157'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1157'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1157'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1157')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1158: SWOYAMSHREE
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SWOYAMSHREE', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1158', 'swoyamshree1158', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  258, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1158'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'swoyamshree1158', 'SWOYAMSHREE', 'SWOYAMSHREE', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1158'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1158'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1158'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1158')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1159: Anchal
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Anchal', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1159', 'anchal1159', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  259, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1159'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'anchal1159', 'Anchal', 'Anchal', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1159'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1159'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1159'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1159')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1160: Subhalaxmi
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Subhalaxmi', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1160', 'subhalaxmi1160', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  260, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1160'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhalaxmi1160', 'Subhalaxmi', 'Subhalaxmi', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1160'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1160'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1160'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1160')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1161: Iva
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Iva', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1161', 'iva1161', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  261, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1161'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'iva1161', 'Iva', 'Iva', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1161'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1161'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1161'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1161')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1162: Monalisa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Monalisa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1162', 'monalisa1162', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  262, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1162'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'monalisa1162', 'Monalisa', 'Monalisa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1162'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1162'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1162'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1162')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1163: SWAPNA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'SWAPNA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1163', 'swapna1163', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  263, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1163'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'swapna1163', 'SWAPNA', 'SWAPNA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1163'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1163'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1163'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1163')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1164: Tanmyee
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Tanmyee', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1164', 'tanmyee1164', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  264, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1164'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'tanmyee1164', 'Tanmyee', 'Tanmyee', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1164'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1164'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1164'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1164')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1165: Suchi
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Suchi', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1165', 'suchi1165', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  265, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1165'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'suchi1165', 'Suchi', 'Suchi', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1165'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1165'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1165'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1165')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1166: ipsita dhal
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'ipsita dhal', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1166', 'ipsitadhal1166', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  266, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1166'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ipsitadhal1166', 'ipsita dhal', 'ipsita dhal', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1166'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1166'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1166'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1166')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1167: Subhransu
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Subhransu', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1167', 'subhransu1167', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  267, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1167'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhransu1167', 'Subhransu', 'Subhransu', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1167'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1167'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1167'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1167')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1168: MAMA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'MAMA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1168', 'mama1168', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  268, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1168'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'mama1168', 'MAMA', 'MAMA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1168'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1168'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1168'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1168')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1169: RUDRAKSHI
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'RUDRAKSHI', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1169', 'rudrakshi1169', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  269, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1169'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rudrakshi1169', 'RUDRAKSHI', 'RUDRAKSHI', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1169'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1169'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1169'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1169')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1170: Niladri
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Niladri', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1170', 'niladri1170', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  270, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1170'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'niladri1170', 'Niladri', 'Niladri', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1170'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1170'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1170'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1170')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1171: Baisalini
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Baisalini', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1171', 'baisalini1171', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  271, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1171'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'baisalini1171', 'Baisalini', 'Baisalini', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1171'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1171'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1171'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1171')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1172: Kumar
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Kumar', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1172', 'kumar1172', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  272, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1172'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'kumar1172', 'Kumar', 'Kumar', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1172'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1172'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1172'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1172')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1173: Ashutosh
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Ashutosh', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1173', 'ashutosh1173', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  273, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1173'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ashutosh1173', 'Ashutosh', 'Ashutosh', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1173'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1173'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1173'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1173')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1174: Soumyajit
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Soumyajit', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1174', 'soumyajit1174', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  274, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1174'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'soumyajit1174', 'Soumyajit', 'Soumyajit', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1174'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1174'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1174'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1174')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1175: Archita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Archita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1175', 'archita1175', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  275, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1175'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'archita1175', 'Archita', 'Archita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1175'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1175'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1175'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1175')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1176: Soumya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Soumya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1176', 'soumya1176', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  276, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1176'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'soumya1176', 'Soumya', 'Soumya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1176'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1176'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1176'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1176')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1177: PRIYANKA
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'PRIYANKA', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1177', 'priyanka1177', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  277, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1177'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'priyanka1177', 'PRIYANKA', 'PRIYANKA', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1177'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1177'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1177'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1177')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1178: Laxmi
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Laxmi', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1178', 'laxmi1178', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  278, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1178'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'laxmi1178', 'Laxmi', 'Laxmi', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1178'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1178'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1178'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1178')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1179: Rohan
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Rohan', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1179', 'rohan1179', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  279, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1179'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rohan1179', 'Rohan', 'Rohan', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1179'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1179'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1179'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1179')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1180: Subhalaxmi
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Subhalaxmi', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1180', 'subhalaxmi1180', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  280, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1180'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhalaxmi1180', 'Subhalaxmi', 'Subhalaxmi', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1180'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1180'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1180'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1180')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1181: Bismaya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Bismaya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1181', 'bismaya1181', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  281, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1181'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'bismaya1181', 'Bismaya', 'Bismaya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1181'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1181'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1181'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1181')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1182: Sujata rani
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sujata rani', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1182', 'sujatarani1182', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  282, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1182'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sujatarani1182', 'Sujata rani', 'Sujata rani', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1182'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1182'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1182'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1182')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1183: Ankita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Ankita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1183', 'ankita1183', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  283, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1183'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ankita1183', 'Ankita', 'Ankita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1183'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1183'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1183'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1183')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1184: Archita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Archita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1184', 'archita1184', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  284, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1184'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'archita1184', 'Archita', 'Archita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1184'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1184'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1184'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1184')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1185: Mahabir
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Mahabir', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1185', 'mahabir1185', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  285, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1185'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'mahabir1185', 'Mahabir', 'Mahabir', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1185'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1185'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1185'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1185')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1186: Suchismita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Suchismita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1186', 'suchismita1186', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  286, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1186'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'suchismita1186', 'Suchismita', 'Suchismita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1186'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1186'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1186'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1186')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1187: Barsa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Barsa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1187', 'barsa1187', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  287, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1187'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'barsa1187', 'Barsa', 'Barsa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1187'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1187'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1187'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1187')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

-- Student 1188: Omm
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Omm', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'Regular', '1188', 'omm1188', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  288, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1188'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'omm1188', 'Omm', 'Omm', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1188'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1188'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1188'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1188')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028') AND academic_year_code='2nd year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');

COMMIT;

-- Verification
SELECT COUNT(*) as students FROM "Acadix_studentregistration" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2024-2028');
