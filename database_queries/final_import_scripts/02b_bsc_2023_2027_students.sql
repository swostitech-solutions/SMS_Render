-- =====================================================
-- B.Sc. Nursing (2023-2027) - ALL 47 Students - FIXED
-- Generated with correct schema and last names
-- =====================================================

-- NOTE: Run 00_update_lookup_codes.sql first if not done
-- NOTE: Batch, Course, Department, AcademicYear, Semester, Section 
--       should already exist from previous test run

BEGIN;

-- =====================================================
-- INSERT ALL STUDENTS
-- =====================================================

-- Student: Laxmipriya Mahapatra
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
    'Laxmipriya', NULL, 'Mahapatra',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-12-07',
    '23BN371012', '23BN371012', '23BN371012',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8260958631', 'laxmipriyamahapatra522@gmail.com', '263045201726',
    'Prasanta kumar Mahapatra', 'Business', '7978594188',
    'Sukanti Mahapatra', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Pratyasha Mohapatra
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
    'Pratyasha', NULL, 'Mohapatra',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-11-21',
    '23BN371018', '23BN371018', '23BN371018',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7205902957', 'mohapatrapratyasha198@gmail.com', '610281885566',
    'Pradyumna ku. Mohapatra', 'Govt', '9692850017',
    'Ritanjali Mohapatra', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Payal Jena
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
    'Payal', NULL, 'Jena',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-02-05',
    '23BN371045', '23BN371045', '23BN371045',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9827269998', 'payalkhusi7@gmail.com', '755043727139',
    'Bibhu Prasad Jena', 'Farmer', '6372754221',
    'Sumati Jena', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Hitesh Gond
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
    'Hitesh', NULL, 'Gond',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2004-08-25',
    '23BN371043', '23BN371043', '23BN371043',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8093119131', 'hiteshkugond@gmail.com', '993695346295',
    'Gobinda Gond', 'Farmer', '9777793174',
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Biswoprakash Lenka
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
    'Biswoprakash', NULL, 'Lenka',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-09-17',
    '23BN371006', '23BN371006', '23BN371006',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7846983429', 'biswoprakashlenka2005@gmail.com', '671815622071',
    'Pravat kumar Lenka', 'Farmer', '9853684229',
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Devidatta Sarangi
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
    'Devidatta', NULL, 'Sarangi',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-02-22',
    '23BN371042', '23BN371042', '23BN371042',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8984268027', 'sarangidevidatta@gmail.com', '879262390515',
    'Father', 'Other', NULL,
    'Pravatnalini Sarangi', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Kuldip Gond
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
    'Kuldip', NULL, 'Gond',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-10-15',
    '23BN371044', '23BN371044', '23BN371044',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8658355487', 'kuldipkunjam887@gmail.com', '300179956947',
    'Manasa Ram Gond', 'Teacher', '9178520983',
    'Rina Gond', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Akankshya Rath
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
    'Akankshya', NULL, 'Rath',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-07-12',
    '23BN371002', '23BN371002', '23BN371002',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A-'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8260180050', 'akankshyarath1@gmail.com', '720847757635',
    'Amiya Kumar Rath', 'Business', '9437226579',
    'Sabita Rath', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Priti Mohapatra
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
    'Priti', NULL, 'Mohapatra',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-11-20',
    '23BN371019', '23BN371019', '23BN371019',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7325906150', 'pritipragyan2050@gmail.com', '336061878896',
    'Nikunja Mohapatra', 'Business', '9938038871',
    'Urmila Mohapatra', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Lipsa Sahoo
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
    'Lipsa', NULL, 'Sahoo',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-09-05',
    '23BN371013', '23BN371013', '23BN371013',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7978390722', 'lipsaranisahoo40@gmail.com', '461027949369',
    'Dhirendra Kumar Sahoo', 'Business', '7381860745',
    'Asanti Sahoo', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sasmita Behera
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
    'Sasmita', NULL, 'Behera',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-06-16',
    '23BN371026', '23BN371026', '23BN371026',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9777616508', 'sb8038788@gmail.com', '704636743912',
    'Sovan Behera', 'Business', '8018103993',
    'Amita Behera', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Suchitra Behera
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
    'Suchitra', NULL, 'Behera',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-02-27',
    '23BN371036', '23BN371036', '23BN371036',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7327099301', 'Santoshkuna@gmail.com', '282770058819',
    'Santosh kumar Behera', 'Business', '9861641633',
    'Pratima Manjari Behera', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: M TARIQUE
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
    'M', NULL, 'TARIQUE',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-03-15',
    '23BN371014', '23BN371014', '23BN371014',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Islam'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7853874970', 'mdtarique75679@gmail.com', '609887511805',
    'Sk Siddique', 'Service', '6370758704',
    'Nasima Khatun', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Priyanka Dash
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
    'Priyanka', NULL, 'Dash',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2004-06-05',
    '23BN371020', '23BN371020', '23BN371020',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7205706133', 'dashpri5590@gmail.com', '500826996384',
    'Bibhuti Bushan Dash', 'Service', '9777466133',
    'Chandrama Dash', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Swarnalata Das
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
    'Swarnalata', NULL, 'Das',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-08-15',
    '23BN371039', '23BN371039', '23BN371039',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9040811176', 'dswarnalata689@gmail.com', '227842644932',
    'Kartik Chandra Das', 'Farmer', '9776617303',
    'Puspalata Das', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Jasobanti Toppo
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
    'Jasobanti', NULL, 'Toppo',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2000-03-22',
    '23BN371009', '23BN371009', '23BN371009',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9078774522', 'jasobantitoppo272@gmail.com', '658913295989',
    'Tirtha Toppo', 'Farmer', '6372095484',
    'Sabitri Toppo', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Diptirekha Sahoo
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
    'Diptirekha', NULL, 'Sahoo',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-04-05',
    '23BN371007', '23BN371007', '23BN371007',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9937242370', 'sahoodiptirekha2006@gmail.com', '518524865754',
    'Prabhat Kumar Sahoo', 'Service', '9776459388',
    'Kamala Kumari Sahoo', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Smrutipriya Baliarsingh
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
    'Smrutipriya', NULL, 'Baliarsingh',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-06-25',
    '23BN371030', '23BN371030', '23BN371030',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7978839139', 'baliarsinghsmrutipriya@gmail.com', '391577435785',
    'Ghanashyam Baliarsingh', 'Farmer', '9668622668',
    'Samita Baliarsingh', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Rajashree Mallick
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
    'Rajashree', NULL, 'Mallick',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-09-26',
    '23BN371022', '23BN371022', '23BN371022',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8984124779', 'r2400071@gmail.com', '897392050845',
    'Suresh Mallick', 'Business', '8144588614',
    'Kabita Mallick', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sneha Kantha
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
    'Sneha', NULL, 'Kantha',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2004-12-30',
    '23BN371032', '23BN371032', '23BN371032',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9937715336', 'snehakantha60@gmail.com', '651938880498',
    'Sarat Kantha', 'Business', '9583567430',
    'Sabita Kantha', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sneha Bishoyi
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
    'Sneha', NULL, 'Bishoyi',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2003-04-01',
    '23BN371031', '23BN371031', '23BN371031',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8280964903', 'bishoyifeeroj@gmail.com', '784268963115',
    'Banchhnidhi Bishoyi', 'Business', '9337643173',
    'Mira Bishoyi', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Priyanka Sahoo
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
    'Priyanka', NULL, 'Sahoo',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-03-18',
    '23BN371021', '23BN371021', '23BN371021',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8093113424', 'priyankasahoo8935@gmail.com', '519406801224',
    'Pratap Kishore Sahoo', 'Business', '9938397344',
    'Pinki Sahoo', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sanjeevani Swain
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
    'Sanjeevani', NULL, 'Swain',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-02-25',
    '23BN371024', '23BN371024', '23BN371024',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9861413444', 'swainsanjeevani856@gmail.com', '515827692810',
    'Manoj Kumar Swain', 'Private', '8637210782',
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Subhalipsa Sethi
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
    'Subhalipsa', NULL, 'Sethi',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-02-13',
    '23BN371034', '23BN371034', '23BN371034',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8456952305', 'sethisubhalipsha@gmail.com', '903545069600',
    'Sanjay Kumar Sethi', 'Farmer', '9668578441',
    'Sasmita Sethi', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Ritika Kanhar
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
    'Ritika', NULL, 'Kanhar',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-01-15',
    '23BN371023', '23BN371023', '23BN371023',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7326005742', 'ritikakanhar769@gmail.com', '532360070375',
    'Dillip Kumar Kanhar', 'Security', '9439240435',
    'Kalpana Kanhar', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Jyotirmayee Parida
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
    'Jyotirmayee', NULL, 'Parida',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-01-07',
    '23BN371010', '23BN371010', '23BN371010',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8114341589', 'jyotinmayeeparida@gmail.com', '320337572287',
    'Jagannath Parida', 'Private', '6370588830',
    'Laxmi Priya Parida', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sebati Minz
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
    'Sebati', NULL, 'Minz',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2002-11-14',
    '23BN371027', '23BN371027', '23BN371027',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8093971784', 'minzsiba3@gmail.com', '884273515439',
    'Rajesh Minz', 'Farmer', '7750983931',
    'Tarini Minz', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Pragati Dash
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
    'Pragati', NULL, 'Dash',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-10-02',
    '23BN371016', '23BN371016', '23BN371016',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '6372442971', 'pragatidash254@gmail.com', '235706242471',
    'Prabhat Kumar Dash', 'Farmer', '9090311430',
    'Gitanjali Dash', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Saraswati Panda
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
    'Saraswati', NULL, 'Panda',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-08-25',
    '23BN371025', '23BN371025', '23BN371025',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9827065834', 'saraswatpanda703@gmail.com', '893539004348',
    'Nilamani Panda', 'Business', '9938523477',
    'Minati Panda', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sidheswar Naik
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
    'Sidheswar', NULL, 'Naik',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2004-03-05',
    '23BN371029', '23BN371029', '23BN371029',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8260620775', 'sidheswarnaik06@gmail.com', '479956946080',
    'Khageswar Naik', 'Farmer', '9692303735',
    'Debaki Naik', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Samikshya Sahoo
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
    'Samikshya', NULL, 'Sahoo',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-07-21',
    '23BN371047', '23BN371047', '23BN371047',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7655900499', 'samikshyasahoo656@gmail.com', '578642288293',
    'Srikant Sahoo', 'Business', '8249599378',
    'Sushila Sahoo', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Subhashree Sethi
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
    'Subhashree', NULL, 'Sethi',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2002-01-10',
    '23BN371035', '23BN371035', '23BN371035',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9668275736', 'subhz6247@gmail.com', '221444937704',
    'Sangram Sethi', 'Business', '8144024512',
    'Minati Sethi', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Subhasmita Rout
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
    'Subhasmita', NULL, 'Rout',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-07-31',
    '23BN371050', '23BN371050', '23BN371050',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8847816225', 'subhasmitarout31072005@gmail.com', '488128820734',
    'Amulya Rout', 'Labour', '9692166955',
    'Sujata Rout', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sushree Ojha
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
    'Sushree', NULL, 'Ojha',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-02-20',
    '23BN371051', '23BN371051', '23BN371051',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7894318468', 'ojhasunayana8@gmail.com', '511802811566',
    'Sankarsan Ojha', 'Farmer', '9937585295',
    'Namita Ojha', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sonali Pradhan
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
    'Sonali', NULL, 'Pradhan',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-06-06',
    '23BN371033', '23BN371033', '23BN371033',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8984323010', 'sonalipradhan062005@gmail.com', '995685394297',
    'Father', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Bimal Nayak
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
    'Bimal', NULL, 'Nayak',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-04-05',
    '23BN371004', '23BN371004', '23BN371004',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7853910400', 'bimalkesharinayakbimal@gmail.com', '644911991762',
    'Bikram Keshari Nayak', 'Teacher', '9668817947',
    'Mamta Manjari Nayak', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Subhadra Khilar
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
    'Subhadra', NULL, 'Khilar',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2002-01-11',
    '23BN371048', '23BN371048', '23BN371048',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9692004271', 'khilarsubhadra85@gmail.com', '293784534812',
    'Gangadhar Khilar', 'Farmer', '9668443511',
    'Jayanti Khilar', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Supriya Pradhan
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
    'Supriya', NULL, 'Pradhan',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-02-28',
    '23BN371037', '23BN371037', '23BN371037',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9337965079', 'pradhansupriya683@gmail.com', '923917346634',
    'Father', 'Other', NULL,
    'Rashmita Pradhan', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Shiba Barik
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
    'Shiba', NULL, 'Barik',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-02-26',
    '23BN371028', '23BN371028', '23BN371028',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '6370080457', 'barikshiba01@gmail.com', '981990181758',
    'Amarendra Barik', 'Business', '7077931862',
    'Sandhya Rani Das', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sushree Bastia
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
    'Sushree', NULL, 'Bastia',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-04-08',
    '23BN371038', '23BN371038', '23BN371038',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7894289695', 'bastiasushreesangita040@gmail.com', '228012104847',
    'Dibakar Bastia', 'Business', '9937636981',
    'Sujata Bastia', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Abhilipsa Chhatoi
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
    'Abhilipsa', NULL, 'Chhatoi',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-04-02',
    '23BN371001', '23BN371001', '23BN371001',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '6371685877', 'chhatoiabhilipsa@gmail.com', '547526563680',
    'Sauri Charan Chhatoi', 'Business', '6372141266',
    'Kabita Chhatoi', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Rudramadhab Panda
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
    'Rudramadhab', NULL, 'Panda',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-07-27',
    '23BN371046', '23BN371046', '23BN371046',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7853955707', 'rudramadhabpanda1@gmail.com', '437050468114',
    'Father', 'Other', NULL,
    'Swarnalata Panigrahi', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Ayusman Jena
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
    'Ayusman', NULL, 'Jena',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2006-04-15',
    '23BN371041', '23BN371041', '23BN371041',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9668506849', 'ayushmanjena1122@gmail.com', '429745867408',
    'Amiya Ranjan Jena', 'Farmer', '9438360344',
    'Lilabati Patra', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Hari Pathi
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
    'Hari', NULL, 'Pathi',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-06-02',
    '23BN371008', '23BN371008', '23BN371008',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9668325288', 'hariompathi349@gmail.com', '558102933091',
    'Phalguni Pathi', 'Teacher', '9040371943',
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Pinky Bishoi
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
    'Pinky', NULL, 'Bishoi',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-11-06',
    '23BN371015', '23BN371015', '23BN371015',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8260662442', 'pinkybishoi05@gmail.com', '254343011491',
    'Kailash Bishoi', 'Farmer', '7840938135',
    'Sabita Bishoi', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Bishnupriya Sahoo
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
    'Bishnupriya', NULL, 'Sahoo',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2005-10-22',
    '23BN371005', '23BN371005', '23BN371005',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7608057235', 'Bishnupriya753@gmail.com', '423371672313',
    'Suratha Sahoo', 'Private', '7894187769',
    'Sukanti Sahoo', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Bidyusmita Nayak
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
    'Bidyusmita', NULL, 'Nayak',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'Regular', '2023-08-01', '2023-08-01', '2004-03-21',
    '23BN371003', '23BN371003', '23BN371003',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '6370922533', 'bidyusmitanayak46@gmail.com', '290169577084',
    'Bhaskar Nayak', 'Business', '9348793805',
    'Jumeli Mallick', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

COMMIT;

-- =====================================================
-- VERIFICATION
-- =====================================================
SELECT COUNT(*) as total_students FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027');

-- Show sample students with names
SELECT first_name, last_name, registration_no, email 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027')
LIMIT 5;
