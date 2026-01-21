-- BSC 3RD YEAR (2023-2027) - 47 STUDENTS
BEGIN;

-- Student 1088: Laxmipriya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Laxmipriya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1088', 'laxmipriya1088', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  188, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1088'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'laxmipriya1088', 'Laxmipriya', 'Laxmipriya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1088'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1088'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1088'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1088')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1089: Pratyasha
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Pratyasha', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1089', 'pratyasha1089', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  189, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1089'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'pratyasha1089', 'Pratyasha', 'Pratyasha', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1089'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1089'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1089'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1089')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1090: Payal
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Payal', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1090', 'payal1090', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  190, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1090'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'payal1090', 'Payal', 'Payal', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1090'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1090'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1090'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1090')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1091: Hitesh
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Hitesh', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1091', 'hitesh1091', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  191, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1091'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'hitesh1091', 'Hitesh', 'Hitesh', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1091'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1091'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1091'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1091')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1092: Biswoprakash
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Biswoprakash', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1092', 'biswoprakash1092', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  192, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1092'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'biswoprakash1092', 'Biswoprakash', 'Biswoprakash', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1092'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1092'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1092'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1092')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1093: Devidatta
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Devidatta', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1093', 'devidatta1093', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  193, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1093'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'devidatta1093', 'Devidatta', 'Devidatta', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1093'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1093'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1093'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1093')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1094: Kuldip
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Kuldip', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1094', 'kuldip1094', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  194, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1094'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'kuldip1094', 'Kuldip', 'Kuldip', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1094'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1094'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1094'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1094')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1095: Akankshya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Akankshya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1095', 'akankshya1095', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  195, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1095'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'akankshya1095', 'Akankshya', 'Akankshya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1095'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1095'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1095'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1095')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1096: Priti
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Priti', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1096', 'priti1096', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  196, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1096'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'priti1096', 'Priti', 'Priti', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1096'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1096'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1096'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1096')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1097: Lipsa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Lipsa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1097', 'lipsa1097', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  197, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1097'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'lipsa1097', 'Lipsa', 'Lipsa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1097'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1097'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1097'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1097')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1098: Sasmita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sasmita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1098', 'sasmita1098', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  198, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1098'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sasmita1098', 'Sasmita', 'Sasmita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1098'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1098'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1098'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1098')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1099: Suchitra
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Suchitra', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1099', 'suchitra1099', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  199, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1099'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'suchitra1099', 'Suchitra', 'Suchitra', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1099'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1099'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1099'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1099')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1100: MD
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'MD', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1100', 'md1100', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  200, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1100'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'md1100', 'MD', 'MD', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1100'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1100'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1100'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1100')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1101: Priyanka
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Priyanka', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1101', 'priyanka1101', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  201, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1101'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'priyanka1101', 'Priyanka', 'Priyanka', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1101'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1101'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1101'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1101')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1102: Swarnalata
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Swarnalata', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1102', 'swarnalata1102', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  202, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1102'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'swarnalata1102', 'Swarnalata', 'Swarnalata', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1102'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1102'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1102'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1102')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1103: Jasobanti
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Jasobanti', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1103', 'jasobanti1103', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  203, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1103'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'jasobanti1103', 'Jasobanti', 'Jasobanti', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1103'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1103'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1103'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1103')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1104: Diptirekha
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Diptirekha', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1104', 'diptirekha1104', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  204, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1104'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'diptirekha1104', 'Diptirekha', 'Diptirekha', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1104'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1104'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1104'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1104')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1105: Smrutipriya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Smrutipriya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1105', 'smrutipriya1105', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  205, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1105'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'smrutipriya1105', 'Smrutipriya', 'Smrutipriya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1105'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1105'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1105'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1105')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1106: Rajashree
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Rajashree', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1106', 'rajashree1106', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  206, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1106'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rajashree1106', 'Rajashree', 'Rajashree', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1106'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1106'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1106'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1106')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1107: Sneha
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sneha', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1107', 'sneha1107', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  207, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1107'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sneha1107', 'Sneha', 'Sneha', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1107'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1107'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1107'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1107')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1108: Sneha
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sneha', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1108', 'sneha1108', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  208, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1108'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sneha1108', 'Sneha', 'Sneha', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1108'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1108'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1108'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1108')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1109: Priyanka
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Priyanka', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1109', 'priyanka1109', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  209, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1109'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'priyanka1109', 'Priyanka', 'Priyanka', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1109'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1109'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1109'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1109')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1110: Sanjeevani
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sanjeevani', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1110', 'sanjeevani1110', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  210, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1110'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sanjeevani1110', 'Sanjeevani', 'Sanjeevani', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1110'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1110'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1110'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1110')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1111: Subhalipsa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Subhalipsa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1111', 'subhalipsa1111', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  211, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1111'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhalipsa1111', 'Subhalipsa', 'Subhalipsa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1111'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1111'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1111'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1111')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1112: Ritika
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Ritika', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1112', 'ritika1112', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  212, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1112'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ritika1112', 'Ritika', 'Ritika', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1112'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1112'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1112'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1112')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1113: Jyotirmayee
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Jyotirmayee', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1113', 'jyotirmayee1113', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  213, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1113'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'jyotirmayee1113', 'Jyotirmayee', 'Jyotirmayee', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1113'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1113'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1113'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1113')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1114: Sebati
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sebati', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1114', 'sebati1114', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  214, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1114'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sebati1114', 'Sebati', 'Sebati', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1114'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1114'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1114'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1114')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1115: Pragati
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Pragati', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1115', 'pragati1115', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  215, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1115'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'pragati1115', 'Pragati', 'Pragati', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1115'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1115'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1115'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1115')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1116: Saraswati
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Saraswati', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1116', 'saraswati1116', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  216, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1116'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'saraswati1116', 'Saraswati', 'Saraswati', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1116'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1116'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1116'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1116')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1117: Sidheswar
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sidheswar', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1117', 'sidheswar1117', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  217, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1117'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sidheswar1117', 'Sidheswar', 'Sidheswar', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1117'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1117'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1117'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1117')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1118: Samikshya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Samikshya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1118', 'samikshya1118', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  218, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1118'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'samikshya1118', 'Samikshya', 'Samikshya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1118'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1118'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1118'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1118')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1119: Subhashree
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Subhashree', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1119', 'subhashree1119', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  219, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1119'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhashree1119', 'Subhashree', 'Subhashree', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1119'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1119'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1119'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1119')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1120: Subhasmita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Subhasmita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1120', 'subhasmita1120', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  220, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1120'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhasmita1120', 'Subhasmita', 'Subhasmita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1120'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1120'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1120'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1120')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1121: Sushree
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sushree', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1121', 'sushree1121', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  221, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1121'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sushree1121', 'Sushree', 'Sushree', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1121'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1121'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1121'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1121')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1122: Sonali
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sonali', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1122', 'sonali1122', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  222, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1122'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sonali1122', 'Sonali', 'Sonali', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1122'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1122'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1122'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1122')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1123: Bimal
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Bimal', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1123', 'bimal1123', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  223, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1123'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'bimal1123', 'Bimal', 'Bimal', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1123'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1123'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1123'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1123')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1124: Subhadra
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Subhadra', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1124', 'subhadra1124', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  224, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1124'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'subhadra1124', 'Subhadra', 'Subhadra', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1124'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1124'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1124'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1124')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1125: Supriya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Supriya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1125', 'supriya1125', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  225, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1125'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'supriya1125', 'Supriya', 'Supriya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1125'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1125'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1125'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1125')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1126: Shiba
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Shiba', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1126', 'shiba1126', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  226, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1126'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'shiba1126', 'Shiba', 'Shiba', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1126'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1126'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1126'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1126')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1127: Sushree
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Sushree', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1127', 'sushree1127', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  227, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1127'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'sushree1127', 'Sushree', 'Sushree', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1127'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1127'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1127'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1127')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1128: Abhilipsa
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Abhilipsa', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1128', 'abhilipsa1128', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  228, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1128'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'abhilipsa1128', 'Abhilipsa', 'Abhilipsa', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1128'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1128'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1128'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1128')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1129: Rudramadhab
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Rudramadhab', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1129', 'rudramadhab1129', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  229, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1129'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'rudramadhab1129', 'Rudramadhab', 'Rudramadhab', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1129'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1129'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1129'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1129')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1130: Ayusman
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Ayusman', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1130', 'ayusman1130', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  230, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1130'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'ayusman1130', 'Ayusman', 'Ayusman', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1130'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1130'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1130'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1130')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1131: Hari
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Hari', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1131', 'hari1131', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  231, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1131'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'hari1131', 'Hari', 'Hari', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1131'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1131'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1131'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1131')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1132: Pinky
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Pinky', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1132', 'pinky1132', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  232, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1132'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'pinky1132', 'Pinky', 'Pinky', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1132'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1132'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1132'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1132')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1133: Bishnupriya
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Bishnupriya', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1133', 'bishnupriya1133', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  233, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1133'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'bishnupriya1133', 'Bishnupriya', 'Bishnupriya', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1133'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1133'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1133'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1133')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

-- Student 1134: Bidyusmita
INSERT INTO "Acadix_studentregistration" (
  first_name, organization_id, branch_id,
  batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
  admission_type, admission_no, user_name, status, is_active, created_by, created_at, updated_at,
  gender_id
) VALUES (
  'Bidyusmita', 1, 1,
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'Regular', '1134', 'bidyusmita1134', 'ACTIVE', true, 1, NOW(), NOW(),
  (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F')
);

INSERT INTO "Acadix_parent" (parent_id, student_id, is_active) VALUES (
  234, (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1134'), true
);

INSERT INTO "Acadix_userlogin" (user_name, password, plain_password, reference_id, user_type_id, organization_id, branch_id, is_active, is_staff, is_superuser, date_joined) VALUES (
  'bidyusmita1134', 'Bidyusmita', 'Bidyusmita', (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1134'), 2, 1, 1, true, false, false, NOW()
);

INSERT INTO "Acadix_studentcourse" (student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id, fee_group_id, fee_applied_from_id, organization_id, branch_id, hostel_availed, student_status, is_active, is_promoted, created_by, created_at, updated_at) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1134'),
  (SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027'),
  (SELECT id FROM "Acadix_course" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_section" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_feestructuremaster" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  1, 1, false, 'active', true, false, 1, NOW(), NOW()
);

INSERT INTO "Acadix_studentfeedetail" (student_id, student_course_id, fee_group_id, fee_structure_details_id, element_name, fee_applied_from_id, semester_id, paid, organization_id, branch_id, academic_year_id, department_id, multiplying_factor, element_amount, element_discount_amount, total_element_period_amount, paid_amount, is_active, created_by, created_at, updated_at)
SELECT
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1134'),
  (SELECT id FROM "Acadix_studentcourse" WHERE student_id=(SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1134')),
  fsm.id, fsd.id, fet.element_name,
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  (SELECT id FROM "Acadix_semester" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') LIMIT 1),
  'N', 1, 1,
  (SELECT id FROM "Acadix_academicyear" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027') AND academic_year_code='3rd Year'),
  (SELECT id FROM "Acadix_department" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027')),
  1, fsd.amount, 0, fsd.amount, 0, true, 1, NOW(), NOW()
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_feestructuredetail" fsd ON fsm.id=fsd.fee_structure_master_id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id=fet.id
WHERE fsm.batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');

COMMIT;

-- Verification
SELECT COUNT(*) as students FROM "Acadix_studentregistration" WHERE batch_id=(SELECT id FROM "Acadix_batch" WHERE batch_code='2023-2027');
