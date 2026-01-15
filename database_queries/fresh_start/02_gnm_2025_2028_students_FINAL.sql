-- =====================================================
-- GNM (2025-2028) - ALL Students - FIXED
-- Course: Nursing(GNM), 1st Year, 1st Semester
-- =====================================================

BEGIN;

-- =====================================================
-- STEP 1: Create Batch
-- =====================================================

INSERT INTO "Acadix_batch" (
    organization_id, branch_id, batch_code, batch_description, 
    date_from, date_to, is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '2025-2028', 'GNM Batch 2025-2028',
    '2025-08-01', '2028-07-31', true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 2: Create Course (if not exists)
-- =====================================================

INSERT INTO "Acadix_course" (
    organization_id, branch_id, course_code, course_name, description,
    batch_id, duration_years, total_semesters,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'Nursing(GNM)', 'Nursing(GNM)', 'General Nursing and Midwifery',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    3, 6,
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 3: Create Department
-- =====================================================

INSERT INTO "Acadix_department" (
    organization_id, branch_id, department_code, department_description,
    batch_id, course_id, hod_name, office_contact,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'GNM', 'GNM Nursing Department',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    'TBD', '0000000000',
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 4: Create Academic Year - 1st Year
-- =====================================================

INSERT INTO "Acadix_academicyear" (
    organization_id, branch_id, batch_id, course_id, department_id,
    academic_year_code, academic_year_description, date_from, date_to,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    '1st Year', '1st Year of GNM', '2025-08-01', '2026-07-31',
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 5: Create Semester - 1st Semester
-- =====================================================

INSERT INTO "Acadix_semester" (
    organization_id, branch_id, semester_code, semester_description,
    batch_id, course_id, department_id, academic_year_id,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '1st Semester', '1st Semester',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 6: Create Section
-- =====================================================

INSERT INTO "Acadix_section" (
    organization_id, branch_id, section_code, section_name,
    batch_id, course_id, department_id, academic_year_id, semester_id,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'Section-A', 'Section-A',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 7: INSERT ALL STUDENTS
-- =====================================================

-- Student: Anita Samal
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
    'Anita', NULL, 'Samal',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2008-03-13',
    'GNM25001', 'GNM25001', 'GNM25001',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '6370891485', 'anitagnm25001@example.com', NULL,
    'Samal', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Debasmita Mahapatra
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
    'Debasmita', NULL, 'Mahapatra',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2006-11-16',
    'GNM25002', 'GNM25002', 'GNM25002',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A-'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7846838192', 'debasmitagnm25002@example.com', NULL,
    'Mahapatra', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Dibyanka Panda
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
    'Dibyanka', NULL, 'Panda',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2007-12-08',
    'GNM25003', 'GNM25003', 'GNM25003',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7205634870', 'dibyankagnm25003@example.com', NULL,
    'Panda', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Ipsita Panda
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
    'Ipsita', NULL, 'Panda',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2004-04-02',
    'GNM25004', 'GNM25004', 'GNM25004',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7008774910', 'ipsitagnm25004@example.com', NULL,
    'Panda', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Iswari Chakra
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
    'Iswari', NULL, 'Chakra',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2005-01-03',
    'GNM25005', 'GNM25005', 'GNM25005',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8144656516', 'iswarignm25005@example.com', NULL,
    'Chakra', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Iti Patra
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
    'Iti', NULL, 'Patra',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2002-03-05',
    'GNM25006', 'GNM25006', 'GNM25006',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8926157397', 'itignm25006@example.com', NULL,
    'Patra', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Jagnyasenee Pradhan
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
    'Jagnyasenee', NULL, 'Pradhan',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2001-12-25',
    'GNM25007', 'GNM25007', 'GNM25007',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7853008069', 'jagnyaseneegnm25007@example.com', NULL,
    'Pradhan', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Laxmipriya Sethy
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
    'Laxmipriya', NULL, 'Sethy',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2004-01-20',
    'GNM25008', 'GNM25008', 'GNM25008',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9124023771', 'laxmipriyagnm25008@example.com', NULL,
    'Sethy', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Mamata Naik
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
    'Mamata', NULL, 'Naik',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '1994-07-11',
    'GNM25009', 'GNM25009', 'GNM25009',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7327087244', 'mamatagnm25009@example.com', NULL,
    'Naik', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Mili Naik
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
    'Mili', NULL, 'Naik',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2008-01-24',
    'GNM25010', 'GNM25010', 'GNM25010',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '6372562754', 'milignm25010@example.com', NULL,
    'Naik', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Pratiksha Kuila
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
    'Pratiksha', NULL, 'Kuila',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2007-09-26',
    'GNM25011', 'GNM25011', 'GNM25011',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7855880324', 'pratikshagnm25011@example.com', NULL,
    'Kuila', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Priti Priyadarshini
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
    'Priti', NULL, 'Priyadarshini',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2007-08-01',
    'GNM25012', 'GNM25012', 'GNM25012',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8658345714', 'pritignm25012@example.com', NULL,
    'Priyadarshini', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Purnima Paramanik
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
    'Purnima', NULL, 'Paramanik',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '1994-07-10',
    'GNM25013', 'GNM25013', 'GNM25013',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8249867503', 'purnimagnm25013@example.com', NULL,
    'Paramanik', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Rajkumar Das
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
    'Rajkumar', NULL, 'Das',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2006-09-29',
    'GNM25014', 'GNM25014', 'GNM25014',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7427900273', 'rajkumargnm25014@example.com', NULL,
    'Das', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Rashmi Biswal
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
    'Rashmi', NULL, 'Biswal',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2005-01-30',
    'GNM25015', 'GNM25015', 'GNM25015',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B-'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9668886510', 'rashmignm25015@example.com', NULL,
    'Biswal', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Reena Patra
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
    'Reena', NULL, 'Patra',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2000-03-07',
    'GNM25016', 'GNM25016', 'GNM25016',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '8018449663', 'reenagnm25016@example.com', NULL,
    'Patra', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Rojalini Mohanty
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
    'Rojalini', NULL, 'Mohanty',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2005-01-07',
    'GNM25017', 'GNM25017', 'GNM25017',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9040902628', 'rojalinignm25017@example.com', NULL,
    'Mohanty', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sinulata Parida
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
    'Sinulata', NULL, 'Parida',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '1993-07-10',
    'GNM25018', 'GNM25018', 'GNM25018',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9658174182', 'sinulatagnm25018@example.com', NULL,
    'Parida', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Smruti Ranjan Behera
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
    'Smruti', NULL, 'Ranjan Behera',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2008-04-22',
    'GNM25019', 'GNM25019', 'GNM25019',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7848839299', 'smrutignm25019@example.com', NULL,
    'Ranjan Behera', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sonarani Prusty
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
    'Sonarani', NULL, 'Prusty',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2007-10-01',
    'GNM25020', 'GNM25020', 'GNM25020',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7606838593', 'sonaranignm25020@example.com', NULL,
    'Prusty', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Subham Sahoo
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
    'Subham', NULL, 'Sahoo',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2007-11-16',
    'GNM25021', 'GNM25021', 'GNM25021',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7978289190', 'subhamgnm25021@example.com', NULL,
    'Sahoo', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Suchismita Nayak
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
    'Suchismita', NULL, 'Nayak',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2004-06-08',
    'GNM25022', 'GNM25022', 'GNM25022',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9777738531', 'suchismitagnm25022@example.com', NULL,
    'Nayak', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Swarnaprava Giri
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
    'Swarnaprava', NULL, 'Giri',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2002-02-27',
    'GNM25023', 'GNM25023', 'GNM25023',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7008201585', 'swarnapravagnm25023@example.com', NULL,
    'Giri', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Sneharani Garnaik
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
    'Sneharani', NULL, 'Garnaik',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2007-08-19',
    'GNM25024', 'GNM25024', 'GNM25024',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '6372931098', 'sneharanignm25024@example.com', NULL,
    'Garnaik', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Monalisha Parida
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
    'Monalisha', NULL, 'Parida',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2006-10-22',
    'GNM25025', 'GNM25025', 'GNM25025',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '7854058884', 'monalishagnm25025@example.com', NULL,
    'Parida', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

-- Student: Saloni Mal
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
    'Saloni', NULL, 'Mal',
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st Year' AND organization_id = 1),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND organization_id = 1),
    (SELECT id FROM "Acadix_section" WHERE section_code = 'Section-A' AND organization_id = 1),
    'Regular', '2025-08-01', '2025-08-01', '2004-12-12',
    'GNM25026', 'GNM25026', 'GNM25026',
    (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
    (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
    (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
    (SELECT id FROM "Acadix_house" WHERE house_code = 'Ganga'),
    (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
    (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
    '9827041320', 'salonignm25026@example.com', NULL,
    'Mal', 'Other', NULL,
    'Mother', 'Housewife', NULL,
    'ACTIVE', 'FATHER', '', true, 1, NOW(), NOW()
);

COMMIT;

-- =====================================================
-- VERIFICATION
-- =====================================================
SELECT COUNT(*) as total_students FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028');

SELECT first_name, last_name, registration_no 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028')
LIMIT 5;
