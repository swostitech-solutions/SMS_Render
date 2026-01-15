-- =====================================================
-- GNM (2023-2026) - 28 Students
-- Course: Nursing(GNM), 2nd Year, 1st Semester
-- Generated from updated TSV data
-- =====================================================

BEGIN;

-- =====================================================
-- STEP 1: Create Batch
-- =====================================================

INSERT INTO "Acadix_batch" (
    organization_id, branch_id, batch_code, batch_description, 
    date_from, date_to, is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '2023-2026', 'GNM Batch 2023-2026',
    '2023-08-01', '2026-07-31', true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 2: Create Academic Year - 2nd Year
-- =====================================================

INSERT INTO "Acadix_academicyear" (
    organization_id, branch_id, batch_id, course_id, department_id,
    academic_year_code, academic_year_description, date_from, date_to,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    '2nd Year', '2nd Year of GNM', '2024-08-01', '2025-07-31',
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 3: Create Semester - 1st Semester (for 2nd Year)
-- =====================================================

INSERT INTO "Acadix_semester" (
    organization_id, branch_id, semester_code, semester_description,
    batch_id, course_id, department_id, academic_year_id,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '1st Semester', '1st Semester of 2nd Year',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 4: Create Section
-- =====================================================

INSERT INTO "Acadix_section" (
    organization_id, branch_id, section_code, section_name,
    batch_id, course_id, department_id, academic_year_id, semester_id,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'Section-A', 'Section-A',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 5: INSERT ALL STUDENTS
-- =====================================================

-- Student: MAMALI PRUSTY
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'MAMALI', NULL, 'PRUSTY',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-05-30',
    '72395808078', '72395808078', '72395808078',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8658165122', 'mamaliprusty86@gmail.com', '508202831813',
    'Subash chandra prusty', 'Driver', '6372557517',
    'Sukanti Prusty', 'Housewife', '6372557517',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sagarika Jena
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Sagarika', NULL, 'Jena',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2004-09-27',
    '72395808090', '72395808090', '72395808090',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '6370224756', 'jenasagarika873@gmail.com', '583550870579',
    'Shasikant Jena', 'Business', '9437667022',
    'Snigdha rani jena', 'Housewife', '9040182557',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Arpita Ray
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Arpita', NULL, 'Ray',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-05-10',
    '72395808066', '72395808066', '72395808066',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9692095868', 'arpitaray625@gmail.com', '245941212684',
    'Mahesh Chandra Ray', 'Private Job', '7873319818',
    'Arati Ray', 'Housewife', '8144181450',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Priyanisha Soreng
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Priyanisha', NULL, 'Soreng',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2004-04-05',
    '72395808082', '72395808082', '72395808082',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9556878239', 'sorengpriyanisha76@gmail.com', '927965372335',
    'Pradeep soreng', 'Farmer', '9938818104',
    'Punam soreng', 'Housewife', '8658064138',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Barsha Behera
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Barsha', NULL, 'Behera',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2001-06-20',
    '72395808069', '72395808069', '72395808069',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '6372245013', 'barshabehera06493@gmail.com', '488243937847',
    'Rama Chandra behera', 'Business', '9778754520',
    'Laxmi behera', 'Housewife', '9337454028',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: SANGAM NAYAK
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'SANGAM', 'KUMAR', 'NAYAK',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2000-03-15',
    '72395808091', '72395808091', '72395808091',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8144513324', 'Sangamkumarnayak15@gmail.com', '328448386616',
    'Prashant kumar nayak', 'Farmer', '8658631342',
    'KUSUMA NAYAK', 'Housewife', '8658631342',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Manisha Lakra
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Manisha', NULL, 'Lakra',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2000-07-12',
    '72395808079', '72395808079', '72395808079',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7848984231', 'lakramanisha705@gmail.com', '445979429017',
    'Stephan lakra', 'Farmer', '8968657214',
    'Pramila Lakra', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Rupali Rout
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Rupali', NULL, 'Rout',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-03-01',
    '72395808089', '72395808089', '72395808089',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7847994050', 'routrupali309@gmail.com', '473045849594',
    'Harish Chandra Rout', 'Business', '7735100152',
    'Pramila Rout', 'Housewife', '7735382082',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: TINA TOPPO
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'TINA', NULL, 'TOPPO',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-02-05',
    '72395808097', '72395808097', '72395808097',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9707655335', 'tinatoppo02@gmail.com', '804745310091',
    'HIRALAL TOPPO', 'Farmer', '8791600897',
    'ROJINA TOPPO', 'Housewife', '9954207780',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Tanistha Samal
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Tanistha', NULL, 'Samal',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-01-23',
    '72395808096', '72395808096', '72395808096',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7008856261', 'tanisthasamal6@gmail.com', '612048118207',
    'Amar prasad Samal', 'Farmer', '9777686554',
    'Sagarika Samal', 'Housewife', '7749923645',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Reetanjali Mallik
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Reetanjali', NULL, 'Mallik',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-03-03',
    '72395808086', '72395808086', '72395808086',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7735516359', 'reetanjalimallik61@gmail.com', '327627503670',
    'Bideshi mallik', 'Farmer', '8260918028',
    'Sabita mallik', 'Housewife', '7855808678',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Tusharakanta Rout
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Tusharakanta', NULL, 'Rout',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2001-08-18',
    '72395808098', '72395808098', '72395808098',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8260520319', 'tusharrout2001@gmail.com', '782973217308',
    'Prafull Kumar rout', 'Business', '9777221222',
    'Anjalibala rout', 'Housewife', '8144337407',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Kanana bala Palatasingh
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Kanana bala', NULL, 'Palatasingh',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-01-30',
    '72395808074', '72395808074', '72395808074',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8260555173', 'bijayapaltashing@gmail.com', '434677807831',
    'Bijaya Kumar palatasingh', 'Private Job', '9861154850',
    'Minati palatasingh', 'Housewife', '9438640251',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Lipika Das
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Lipika', 'Rani', 'Das',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-06-16',
    '72395808075', '72395808075', '72395808075',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7077562028', 'daslipika1605@gmail.com', '312021550680',
    'Kashinath das', 'Business', '9437743143',
    'Minati das', 'Housewife', '7328822328',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Priti Beck
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Priti', 'Archana', 'Beck',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '1996-08-22',
    '72395808081', '72395808081', '72395808081',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9078216608', 'pritiarchanab@gmail.com', '775553807143',
    'Lajrus Beck', 'Farmer', '7752093206',
    'Jeromina Beck', 'Housewife', '8961847053',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Amrita Mohanty
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Amrita', NULL, 'Mohanty',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-06-04',
    '72395808065', '72395808065', '72395808065',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8249981458', 'amritamohantyamritamohanty@gmail.com', '851740554830',
    'Ananda chandra mohanty', 'Other', NULL,
    'Indu mati mohanty', 'Housewife', '9776797131',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: RITESH BISWAL
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'RITESH', 'KUMAR', 'BISWAL',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-07-12',
    '72395808087', '72395808087', '72395808087',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9438137059', 'riteshbiswal786@gmail.com', '636500287561',
    'BRUNDABAN BISWAL', 'Farmer', '8144885059',
    'SANTILATA BISWAL', 'Housewife', '7608994529',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Debaki Badaraita
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Debaki', NULL, 'Badaraita',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2025-07-05',
    '72395808071', '72395808071', '72395808071',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7852965685', 'debakibadaraita4@gmail.com', '792381611381',
    'Ganganna Badaraita', 'Other', NULL,
    'Ashri Badaraita', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Prodeep Santra
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Prodeep', 'kumar', 'Santra',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '1989-04-05',
    '72395808083', '72395808083', '72395808083',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9937371501', 'pradeepkusantra987@gmail.com', '272724686611',
    'Late Rabindra kumar santra', 'Other', '9937371501',
    'Subriti santra', 'Housewife', '9777876361',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: BAISHALI SUNA
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'BAISHALI', NULL, 'SUNA',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-07-05',
    '72395808070', '72395808070', '72395808070',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9692479349', 'baishalisuna1@gmail.cpm', '937477313945',
    'Dillip Suna', 'Farmer', '8327763092',
    'Sanju Suna', 'Housewife', '8327763092',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Bishnupriya Barik
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'Bishnupriya', NULL, 'Barik',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2002-08-07',
    '72395808070', '72395808070', '72395808070',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7735751573', '_bishnupriyab626@gmali.com', '483947696587',
    'Basant kumar barik', 'Govt Job', '9437524425',
    'Sandhya rani barik', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: HARAPRIYA NAIK
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'HARAPRIYA', NULL, 'NAIK',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '1999-07-27',
    '72395808072', '72395808072', '72395808072',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7325947469', 'harapriya.priya99@gmail.com', '817927233033',
    'Bipra naik', 'Farmer', '8249941627',
    'Banita naik', 'Housewife', '9348231338',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: SASMITA MAHANANDIA
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'SASMITA', NULL, 'MAHANANDIA',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2000-01-29',
    '72395808093', '72395808093', '72395808093',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7008979908', 'sasmitamahandia515@gmail.com', '264804315220',
    'Prabasi Mahanandia', 'Farmer', '8455869322',
    'Golapi mahanandia', 'Housewife', '8455869322',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: RONALISHA KAR
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'RONALISHA', NULL, 'KAR',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2002-05-13',
    '72395808088', '72395808088', '72395808088',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8144020471', 'ronalishakar@gmail.com', '703428024453',
    'Gadadhar kar', 'Business', '7608046130',
    'Sonalisha kar', 'Housewife', '7608046130',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: LISHARANI DASH
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'LISHARANI', NULL, 'DASH',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2000-09-26',
    '72395808076', '72395808076', '72395808076',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7064793916', 'dashlisharani0@gmail.com', '422374677509',
    'Akshay dash', 'Farmer', '7377132413',
    'Archana dash', 'Housewife', '7377132413',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: RAJANANDINI NAYAK
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'RAJANANDINI', NULL, 'NAYAK',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '1999-06-02',
    '72395808085', '72395808085', '72395808085',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9692189026', 'rajnandinayak1999@gmail.com', '907355008101',
    'late. Senturian  nayak', 'Other', NULL,
    'Pratima nayak', 'Housewife', '7656825359',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: PRAKASH MALLICK
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'PRAKASH', NULL, 'MALLICK',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '1997-05-21',
    '72395808080', '72395808080', '72395808080',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8249419938', 'prakashmallick116@gmail.com', '930575581574',
    'late.Lambeda mallick', 'Other', NULL,
    'SHASHI MALLICK', 'Housewife', '8249419938',
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: SANTOSHI PATRA
INSERT INTO "Acadix_studentregistration" (
    first_name, middle_name, last_name,
    organization_id, branch_id, batch_id, course_id, department_id, 
    academic_year_id, semester_id, section_id,
    admission_type, date_of_admission, date_of_join, date_of_birth,
    registration_no, college_admission_no, enrollment_no,
    religion_id, gender_id, nationality_id, house_id, blood_id, category_id, mother_tongue_id,
    contact_no, email, student_aadhaar_no,
    father_name, father_profession, father_contact_number,
    mother_name, mother_profession, mother_contact_number,
    status, primary_guardian, profile_pic, is_active, created_by, created_at, updated_at
) VALUES (
    'SANTOSHI', NULL, 'PATRA',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-06-16',
    '72395808092', '72395808092', '72395808092',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9861598631', 'funnyfact956@gmail.com', '928866346696',
    'Pradeep patra', 'Business', '89172821441',
    'LATE. NIRAPARA PATRA', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

COMMIT;

-- =====================================================
-- VERIFICATION
-- =====================================================
SELECT batch_code, COUNT(*) as student_count 
FROM "Acadix_studentregistration" s
JOIN "Acadix_batch" b ON s.batch_id = b.id
GROUP BY batch_code
ORDER BY batch_code;

SELECT first_name, last_name, registration_no 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026')
LIMIT 5;
