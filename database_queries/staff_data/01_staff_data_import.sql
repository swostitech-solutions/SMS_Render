-- ============================================
-- STAFF DATA IMPORT
-- SPARSH COLLEGE OF NURSING AND ALLIED HEALTH SCIENCES
-- Total Staff: 9
-- Database: schoolmanagement_8r7x (PostgreSQL on Render)
-- Created: 2026-01-13
-- ============================================
-- Run this AFTER executing 00_staff_master_data_setup.sql
-- ============================================

-- Staff 1: SCNAS006 - Aswini Sahoo
INSERT INTO "Acadix_employeemaster" (
    organization_id, branch_id, batch_id, designation_id, employee_code,
    title, first_name, middle_name, last_name, date_of_birth, marital_status,
    gender_id, nationality_id, religion_id, email, phone_number, office_email,
    employee_type_id, date_of_joining, date_of_leaving, payroll_group, place_of_birth,
    blood_group_id, highest_qualification, emergency_contact_number, mother_tongue_id,
    status, profile_pic, profile_photo_path, is_active, created_by, created_at, updated_at
) VALUES (
    1, 2,
    (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1),
    (SELECT id FROM "Designation" WHERE organization_id = 1 AND branch_id = 2 AND designation_name = 'Staff' LIMIT 1),
    'SCNAS006',
    'Mr', 'Aswini', 'Kumar', 'Sahoo',
    '1999-12-21', 'Single',
    (SELECT id FROM "Acadix_gender" WHERE organization_id = 1 AND branch_id = 2 AND gender_code = 'M' LIMIT 1),
    (SELECT id FROM "Acadix_nationality" WHERE organization_id = 1 AND branch_id = 2 AND nationality_code = 'IND' LIMIT 1),
    (SELECT id FROM "Acadix_religion" WHERE organization_id = 1 AND branch_id = 2 AND religion_code = 'HIN' LIMIT 1),
    'aswinisahoo021@gmail.com', '6371382102', NULL,
    (SELECT id FROM "EmployeeType" WHERE organization_id = 1 AND branch_id = 2 AND employee_type_code = 'TEACHING' LIMIT 1),
    '2025-09-10', NULL, NULL, NULL,
    (SELECT id FROM "Acadix_blood" WHERE organization_id = 1 AND branch_id = 2 AND blood_code = 'B+' LIMIT 1),
    NULL, '7894803007',
    (SELECT id FROM "Acadix_mothertongue" WHERE organization_id = 1 AND branch_id = 2 AND mother_tongue_code = 'ODI' LIMIT 1),
    'ACTIVE', NULL, NULL, true, 0, NOW(), NOW()
);

-- Staff 2: SCNAS019 - Selvarani Senthil Kumar
INSERT INTO "Acadix_employeemaster" (
    organization_id, branch_id, batch_id, designation_id, employee_code,
    title, first_name, middle_name, last_name, date_of_birth, marital_status,
    gender_id, nationality_id, religion_id, email, phone_number, office_email,
    employee_type_id, date_of_joining, date_of_leaving, payroll_group, place_of_birth,
    blood_group_id, highest_qualification, emergency_contact_number, mother_tongue_id,
    status, profile_pic, profile_photo_path, is_active, created_by, created_at, updated_at
) VALUES (
    1, 2,
    (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1),
    (SELECT id FROM "Designation" WHERE organization_id = 1 AND branch_id = 2 AND designation_name = 'Staff' LIMIT 1),
    'SCNAS019',
    'Ms', 'Selvarani', NULL, 'Senthil Kumar',
    '1984-07-25', 'Married',
    (SELECT id FROM "Acadix_gender" WHERE organization_id = 1 AND branch_id = 2 AND gender_code = 'F' LIMIT 1),
    (SELECT id FROM "Acadix_nationality" WHERE organization_id = 1 AND branch_id = 2 AND nationality_code = 'IND' LIMIT 1),
    (SELECT id FROM "Acadix_religion" WHERE organization_id = 1 AND branch_id = 2 AND religion_code = 'HIN' LIMIT 1),
    'selvaaug4@gmail.com', '9787658777', NULL,
    (SELECT id FROM "EmployeeType" WHERE organization_id = 1 AND branch_id = 2 AND employee_type_code = 'PERMANENT' LIMIT 1),
    '2025-09-10', NULL, NULL, NULL,
    (SELECT id FROM "Acadix_blood" WHERE organization_id = 1 AND branch_id = 2 AND blood_code = 'O+' LIMIT 1),
    NULL, '9787658777',
    (SELECT id FROM "Acadix_mothertongue" WHERE organization_id = 1 AND branch_id = 2 AND mother_tongue_code = 'TEL' LIMIT 1),
    'ACTIVE', NULL, NULL, true, 0, NOW(), NOW()
);

-- Staff 3: SCNAS018 - Kumarika Naik
INSERT INTO "Acadix_employeemaster" (
    organization_id, branch_id, batch_id, designation_id, employee_code,
    title, first_name, middle_name, last_name, date_of_birth, marital_status,
    gender_id, nationality_id, religion_id, email, phone_number, office_email,
    employee_type_id, date_of_joining, date_of_leaving, payroll_group, place_of_birth,
    blood_group_id, highest_qualification, emergency_contact_number, mother_tongue_id,
    status, profile_pic, profile_photo_path, is_active, created_by, created_at, updated_at
) VALUES (
    1, 2,
    (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1),
    (SELECT id FROM "Designation" WHERE organization_id = 1 AND branch_id = 2 AND designation_name = 'Staff' LIMIT 1),
    'SCNAS018',
    'Ms', 'Kumarika', NULL, 'Naik',
    '2000-03-04', 'Single',
    (SELECT id FROM "Acadix_gender" WHERE organization_id = 1 AND branch_id = 2 AND gender_code = 'F' LIMIT 1),
    (SELECT id FROM "Acadix_nationality" WHERE organization_id = 1 AND branch_id = 2 AND nationality_code = 'IND' LIMIT 1),
    (SELECT id FROM "Acadix_religion" WHERE organization_id = 1 AND branch_id = 2 AND religion_code = 'HIN' LIMIT 1),
    'kumarika2021@gmail.com', '7205157494', NULL,
    (SELECT id FROM "EmployeeType" WHERE organization_id = 1 AND branch_id = 2 AND employee_type_code = 'NON-TEACHING' LIMIT 1),
    '2025-09-10', NULL, NULL, NULL,
    (SELECT id FROM "Acadix_blood" WHERE organization_id = 1 AND branch_id = 2 AND blood_code = 'O+' LIMIT 1),
    NULL, '7855844348',
    (SELECT id FROM "Acadix_mothertongue" WHERE organization_id = 1 AND branch_id = 2 AND mother_tongue_code = 'ODI' LIMIT 1),
    'ACTIVE', NULL, NULL, true, 0, NOW(), NOW()
);

-- Staff 4: SCNAS007 - Himanshu Rout
INSERT INTO "Acadix_employeemaster" (
    organization_id, branch_id, batch_id, designation_id, employee_code,
    title, first_name, middle_name, last_name, date_of_birth, marital_status,
    gender_id, nationality_id, religion_id, email, phone_number, office_email,
    employee_type_id, date_of_joining, date_of_leaving, payroll_group, place_of_birth,
    blood_group_id, highest_qualification, emergency_contact_number, mother_tongue_id,
    status, profile_pic, profile_photo_path, is_active, created_by, created_at, updated_at
) VALUES (
    1, 2,
    (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1),
    (SELECT id FROM "Designation" WHERE organization_id = 1 AND branch_id = 2 AND designation_name = 'Staff' LIMIT 1),
    'SCNAS007',
    'Mr', 'Himanshu', NULL, 'Rout',
    '2002-01-16', 'Single',
    (SELECT id FROM "Acadix_gender" WHERE organization_id = 1 AND branch_id = 2 AND gender_code = 'M' LIMIT 1),
    (SELECT id FROM "Acadix_nationality" WHERE organization_id = 1 AND branch_id = 2 AND nationality_code = 'IND' LIMIT 1),
    (SELECT id FROM "Acadix_religion" WHERE organization_id = 1 AND branch_id = 2 AND religion_code = 'HIN' LIMIT 1),
    'routhimanshu64@gmail.com', '9861727221', NULL,
    (SELECT id FROM "EmployeeType" WHERE organization_id = 1 AND branch_id = 2 AND employee_type_code = 'NON-TEACHING' LIMIT 1),
    '2025-09-10', NULL, NULL, NULL,
    (SELECT id FROM "Acadix_blood" WHERE organization_id = 1 AND branch_id = 2 AND blood_code = 'A+' LIMIT 1),
    NULL, '8908240834',
    (SELECT id FROM "Acadix_mothertongue" WHERE organization_id = 1 AND branch_id = 2 AND mother_tongue_code = 'ODI' LIMIT 1),
    'ACTIVE', NULL, NULL, true, 0, NOW(), NOW()
);

-- Staff 5: SCNAS001 - Krupasindhu Muduli
INSERT INTO "Acadix_employeemaster" (
    organization_id, branch_id, batch_id, designation_id, employee_code,
    title, first_name, middle_name, last_name, date_of_birth, marital_status,
    gender_id, nationality_id, religion_id, email, phone_number, office_email,
    employee_type_id, date_of_joining, date_of_leaving, payroll_group, place_of_birth,
    blood_group_id, highest_qualification, emergency_contact_number, mother_tongue_id,
    status, profile_pic, profile_photo_path, is_active, created_by, created_at, updated_at
) VALUES (
    1, 2,
    (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1),
    (SELECT id FROM "Designation" WHERE organization_id = 1 AND branch_id = 2 AND designation_name = 'Staff' LIMIT 1),
    'SCNAS001',
    'Mr', 'Krupasindhu', NULL, 'Muduli',
    '1971-05-10', 'Married',
    (SELECT id FROM "Acadix_gender" WHERE organization_id = 1 AND branch_id = 2 AND gender_code = 'M' LIMIT 1),
    (SELECT id FROM "Acadix_nationality" WHERE organization_id = 1 AND branch_id = 2 AND nationality_code = 'IND' LIMIT 1),
    (SELECT id FROM "Acadix_religion" WHERE organization_id = 1 AND branch_id = 2 AND religion_code = 'HIN' LIMIT 1),
    'krupasindhumuduli2k@gmail.com', '7978662857', NULL,
    (SELECT id FROM "EmployeeType" WHERE organization_id = 1 AND branch_id = 2 AND employee_type_code = 'NON-TEACHING' LIMIT 1),
    '2025-09-10', NULL, NULL, NULL,
    (SELECT id FROM "Acadix_blood" WHERE organization_id = 1 AND branch_id = 2 AND blood_code = 'O+' LIMIT 1),
    NULL, '7735504790',
    (SELECT id FROM "Acadix_mothertongue" WHERE organization_id = 1 AND branch_id = 2 AND mother_tongue_code = 'ODI' LIMIT 1),
    'ACTIVE', NULL, NULL, true, 0, NOW(), NOW()
);

-- Staff 6: SCNAS014 - Krishna Dey
INSERT INTO "Acadix_employeemaster" (
    organization_id, branch_id, batch_id, designation_id, employee_code,
    title, first_name, middle_name, last_name, date_of_birth, marital_status,
    gender_id, nationality_id, religion_id, email, phone_number, office_email,
    employee_type_id, date_of_joining, date_of_leaving, payroll_group, place_of_birth,
    blood_group_id, highest_qualification, emergency_contact_number, mother_tongue_id,
    status, profile_pic, profile_photo_path, is_active, created_by, created_at, updated_at
) VALUES (
    1, 2,
    (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1),
    (SELECT id FROM "Designation" WHERE organization_id = 1 AND branch_id = 2 AND designation_name = 'Staff' LIMIT 1),
    'SCNAS014',
    'Ms', 'Krishna', NULL, 'Dey',
    '2001-10-04', 'Single',
    (SELECT id FROM "Acadix_gender" WHERE organization_id = 1 AND branch_id = 2 AND gender_code = 'F' LIMIT 1),
    (SELECT id FROM "Acadix_nationality" WHERE organization_id = 1 AND branch_id = 2 AND nationality_code = 'IND' LIMIT 1),
    (SELECT id FROM "Acadix_religion" WHERE organization_id = 1 AND branch_id = 2 AND religion_code = 'HIN' LIMIT 1),
    'krishnadey2k01@gmail.com', '9339000948', NULL,
    (SELECT id FROM "EmployeeType" WHERE organization_id = 1 AND branch_id = 2 AND employee_type_code = 'TUTOR' LIMIT 1),
    '2025-09-10', NULL, NULL, NULL,
    (SELECT id FROM "Acadix_blood" WHERE organization_id = 1 AND branch_id = 2 AND blood_code = 'B+' LIMIT 1),
    NULL, '9339000948',
    (SELECT id FROM "Acadix_mothertongue" WHERE organization_id = 1 AND branch_id = 2 AND mother_tongue_code = 'BEN' LIMIT 1),
    'ACTIVE', NULL, NULL, true, 0, NOW(), NOW()
);

-- Staff 7: SCNAS004 - Monasina Prusty
INSERT INTO "Acadix_employeemaster" (
    organization_id, branch_id, batch_id, designation_id, employee_code,
    title, first_name, middle_name, last_name, date_of_birth, marital_status,
    gender_id, nationality_id, religion_id, email, phone_number, office_email,
    employee_type_id, date_of_joining, date_of_leaving, payroll_group, place_of_birth,
    blood_group_id, highest_qualification, emergency_contact_number, mother_tongue_id,
    status, profile_pic, profile_photo_path, is_active, created_by, created_at, updated_at
) VALUES (
    1, 2,
    (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1),
    (SELECT id FROM "Designation" WHERE organization_id = 1 AND branch_id = 2 AND designation_name = 'Staff' LIMIT 1),
    'SCNAS004',
    'Ms', 'Monasina', NULL, 'Prusty',
    '1994-05-27', 'Single',
    (SELECT id FROM "Acadix_gender" WHERE organization_id = 1 AND branch_id = 2 AND gender_code = 'F' LIMIT 1),
    (SELECT id FROM "Acadix_nationality" WHERE organization_id = 1 AND branch_id = 2 AND nationality_code = 'IND' LIMIT 1),
    (SELECT id FROM "Acadix_religion" WHERE organization_id = 1 AND branch_id = 2 AND religion_code = 'CHR' LIMIT 1),
    'mona47306@gmail.com', '9861516315', NULL,
    (SELECT id FROM "EmployeeType" WHERE organization_id = 1 AND branch_id = 2 AND employee_type_code = 'REGULAR' LIMIT 1),
    '2025-09-10', NULL, NULL, NULL,
    (SELECT id FROM "Acadix_blood" WHERE organization_id = 1 AND branch_id = 2 AND blood_code = 'A+' LIMIT 1),
    NULL, '9861516315',
    (SELECT id FROM "Acadix_mothertongue" WHERE organization_id = 1 AND branch_id = 2 AND mother_tongue_code = 'ODI' LIMIT 1),
    'ACTIVE', NULL, NULL, true, 0, NOW(), NOW()
);

-- Staff 8: SCNAS009 - Ria Das
INSERT INTO "Acadix_employeemaster" (
    organization_id, branch_id, batch_id, designation_id, employee_code,
    title, first_name, middle_name, last_name, date_of_birth, marital_status,
    gender_id, nationality_id, religion_id, email, phone_number, office_email,
    employee_type_id, date_of_joining, date_of_leaving, payroll_group, place_of_birth,
    blood_group_id, highest_qualification, emergency_contact_number, mother_tongue_id,
    status, profile_pic, profile_photo_path, is_active, created_by, created_at, updated_at
) VALUES (
    1, 2,
    (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1),
    (SELECT id FROM "Designation" WHERE organization_id = 1 AND branch_id = 2 AND designation_name = 'Staff' LIMIT 1),
    'SCNAS009',
    'Ms', 'Ria', NULL, 'Das',
    '1998-12-10', 'Single',
    (SELECT id FROM "Acadix_gender" WHERE organization_id = 1 AND branch_id = 2 AND gender_code = 'F' LIMIT 1),
    (SELECT id FROM "Acadix_nationality" WHERE organization_id = 1 AND branch_id = 2 AND nationality_code = 'IND' LIMIT 1),
    (SELECT id FROM "Acadix_religion" WHERE organization_id = 1 AND branch_id = 2 AND religion_code = 'HIN' LIMIT 1),
    'das.ria.s.1022@gmail.com', '9073430442', NULL,
    (SELECT id FROM "EmployeeType" WHERE organization_id = 1 AND branch_id = 2 AND employee_type_code = 'WARDEN' LIMIT 1),
    '2025-09-10', NULL, NULL, NULL,
    (SELECT id FROM "Acadix_blood" WHERE organization_id = 1 AND branch_id = 2 AND blood_code = 'B+' LIMIT 1),
    NULL, '9073430442',
    (SELECT id FROM "Acadix_mothertongue" WHERE organization_id = 1 AND branch_id = 2 AND mother_tongue_code = 'BEN' LIMIT 1),
    'ACTIVE', NULL, NULL, true, 0, NOW(), NOW()
);

-- Staff 9: SCNAS011 - Priti Jana
INSERT INTO "Acadix_employeemaster" (
    organization_id, branch_id, batch_id, designation_id, employee_code,
    title, first_name, middle_name, last_name, date_of_birth, marital_status,
    gender_id, nationality_id, religion_id, email, phone_number, office_email,
    employee_type_id, date_of_joining, date_of_leaving, payroll_group, place_of_birth,
    blood_group_id, highest_qualification, emergency_contact_number, mother_tongue_id,
    status, profile_pic, profile_photo_path, is_active, created_by, created_at, updated_at
) VALUES (
    1, 2,
    (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1),
    (SELECT id FROM "Designation" WHERE organization_id = 1 AND branch_id = 2 AND designation_name = 'Staff' LIMIT 1),
    'SCNAS011',
    'Ms', 'Priti', NULL, 'Jana',
    '2001-11-30', 'Single',
    (SELECT id FROM "Acadix_gender" WHERE organization_id = 1 AND branch_id = 2 AND gender_code = 'F' LIMIT 1),
    (SELECT id FROM "Acadix_nationality" WHERE organization_id = 1 AND branch_id = 2 AND nationality_code = 'IND' LIMIT 1),
    (SELECT id FROM "Acadix_religion" WHERE organization_id = 1 AND branch_id = 2 AND religion_code = 'HIN' LIMIT 1),
    'pritijana8@gmail.com', '9593209040', NULL,
    (SELECT id FROM "EmployeeType" WHERE organization_id = 1 AND branch_id = 2 AND employee_type_code = 'TUTOR' LIMIT 1),
    '2025-09-10', NULL, NULL, NULL,
    (SELECT id FROM "Acadix_blood" WHERE organization_id = 1 AND branch_id = 2 AND blood_code = 'B+' LIMIT 1),
    NULL, '9593209040',
    (SELECT id FROM "Acadix_mothertongue" WHERE organization_id = 1 AND branch_id = 2 AND mother_tongue_code = 'BEN' LIMIT 1),
    'ACTIVE', NULL, NULL, true, 0, NOW(), NOW()
);

-- ============================================
-- VERIFICATION QUERIES
-- ============================================
SELECT 'Total Staff' as check_item, COUNT(*) as count FROM "Acadix_employeemaster"
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1);

-- Staff by Employee Type
SELECT 
    et.employee_type_description,
    COUNT(em.id) as staff_count
FROM "EmployeeType" et
LEFT JOIN "Acadix_employeemaster" em ON et.id = em.employee_type_id
WHERE em.batch_id = (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1)
GROUP BY et.employee_type_description
ORDER BY staff_count DESC;

-- List all staff
SELECT employee_code, first_name, last_name, email, phone_number
FROM "Acadix_employeemaster"
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE organization_id = 1 AND branch_id = 2 AND batch_code = 'STAFF-BATCH' LIMIT 1)
ORDER BY employee_code;