-- =====================================================
-- B.Sc. Nursing 2nd Year (2023-2027) - 47 Students
-- =====================================================
-- org_id=1, branch_id=1
-- Batch: BSC-2023-2027
-- Academic Year: 3rd Year, Semester: 5th Semester
-- =====================================================

BEGIN;

-- =====================================================
-- STEP 1: Create Batch
-- =====================================================

INSERT INTO "Acadix_batch" (
    batch_name, batch_code, is_active, org_id, branch_id, 
    created_at, created_by, updated_at, updated_by
) VALUES (
    'B.Sc. Nursing 2023-2027', 'BSC-2023-2027', TRUE, 1, 1,
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
) ON CONFLICT (batch_code, org_id, branch_id) DO NOTHING;

-- =====================================================
-- STEP 2: Create Department
-- =====================================================

INSERT INTO "Acadix_department" (
    department_code, department_name, is_active, org_id, branch_id,
    batch_id, course_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    'BSC-NURS-DEPT', 'B.Sc. Nursing', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
) ON CONFLICT (department_code, org_id, branch_id, batch_id) DO NOTHING;

-- =====================================================
-- STEP 3: Create Academic Year
-- =====================================================

INSERT INTO "Acadix_academicyear" (
    academic_year_name, is_active, org_id, branch_id, batch_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '3rd Year', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
) ON CONFLICT (academic_year_name, org_id, branch_id, batch_id) DO NOTHING;

-- =====================================================
-- STEP 4: Create Semester
-- =====================================================

INSERT INTO "Acadix_semester" (
    semester_name, is_active, org_id, branch_id, batch_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '5th Semester', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
) ON CONFLICT (semester_name, org_id, branch_id, batch_id) DO NOTHING;

-- =====================================================
-- STEP 5: Create Section
-- =====================================================

INSERT INTO "Acadix_section" (
    section_name, is_active, org_id, branch_id, batch_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    'Section A', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
) ON CONFLICT (section_name, org_id, branch_id, batch_id) DO NOTHING;

-- =====================================================
-- STEP 6: Import Students
-- =====================================================


-- Student 1: Laxmipriya Mahapatra

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371012', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Laxmipriya'', NULL, 'Mahapatra',
    'Female', '2005-12-07',
    'Hindu', 'OBC',
    'Indian', 'B +',
    'Odia', 'Regular',
    '8260958631', 'laxmipriyamahapatra522@gmail.com',
    '263045201726',
    'Prasanta kumar Mahapatra', 'Business',
    '7978594188', NULL,
    NULL,
    'Sukanti Mahapatra', 'Housewife',
    '9692259778', NULL,
    NULL,
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371012' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 2: Pratyasha  Mohapatra 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371018', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Pratyasha '', NULL, 'Mohapatra ',
    'Female ', '2006-11-21',
    'Hindu ', 'OBC',
    'Indian', 'O +',
    'Odia', 'Regular',
    '7205902957', 'mohapatrapratyasha198@gmail.com',
    '610281885566',
    'Pradyumna ku. Mohapatra ', 'Govt. job',
    '9692850017', 'Mohapatrapradyumna66',
    '495831006661',
    'Ritanjali Mohapatra ', 'Housewife',
    '8763594458', 'mohapatrapratyasha198@gmail.com',
    '668600024491',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371018' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 3: Payal  Jena

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371045', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Payal '', 'Priyadarshini ', 'Jena',
    'Female ', '2006-02-05',
    'Hindu ', 'SEBC',
    'Indian', 'A +',
    'Odia ', 'Regular',
    '9827269998', 'payalkhusi7@gmail.com',
    '755043727139',
    'Bibhu Prasad Jena ', 'Farmer ',
    '6372754221', 'ayushjena175@gmail.com',
    '291324335832',
    'Sumati Jena', 'Housewife',
    NULL, NULL,
    '684028471323',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371045' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 4: Hitesh Gond

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371043', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Hitesh'', 'Kumar', 'Gond',
    'Male', '2004-08-25',
    'Hindu', 'ST',
    'Indian', 'O +',
    'Odia', 'Regular',
    '8093119131', 'hiteshkugond@gmail.com',
    '993695346295',
    'Gobinda Gond', 'Farmer ',
    '9777793174', 'hiteshkugond@gmail.com',
    '479735876001',
    NULL, NULL,
    NULL, NULL,
    NULL,
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371043' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 5: Biswoprakash Lenka

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371006', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Biswoprakash'', NULL, 'Lenka',
    'Male', '2005-09-17',
    'Hindu ', 'OBC',
    'Indian', 'O +',
    'Odia', 'Regular',
    '7846983429', 'biswoprakashlenka2005@gmail.com',
    '671815622071',
    'Pravat kumar Lenka', 'Farmer',
    '9853684229', 'pravatlenka2551974@gmail.com',
    '659306550333',
    NULL, NULL,
    NULL, NULL,
    NULL,
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371006' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 6: Devidatta  Sarangi

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371042', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Devidatta '', NULL, 'Sarangi',
    'Female ', '2006-02-22',
    'Hindu', 'General ',
    'Indian', 'B +',
    'Odia', 'Regular',
    '8984268027', 'sarangidevidatta@gmail.com',
    '879262390515',
    'Somanath Sarangi ', NULL,
    NULL, NULL,
    NULL,
    'Pravatnalini Sarangi ', 'Housewife',
    '9556906353', 'sarangidevidatta@gmail.com',
    '529392767118',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371042' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 7: Kuldip  Gond

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371044', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Kuldip '', NULL, 'Gond',
    'Male', '2005-10-15',
    'Hindu', 'ST',
    'Indian', 'O +',
    'Odia', 'Regular',
    '8658355487', 'kuldipkunjam887@gmail.com',
    '300179956947',
    'Manasa Ram Gond', 'Teacher',
    '9178520983', 'Manasaramgond@gmail.com',
    '638661192982',
    'Rina Gond', 'Housewife',
    NULL, 'rinabaigond@gmail.com',
    '863448142865',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371044' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 8: Akankshya  Rath

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371002', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Akankshya '', NULL, 'Rath',
    'Female', '2005-07-12',
    'Hindu', 'General ',
    'Indian', 'A -',
    'Odia', 'Regular',
    '8260180050', 'akankshyarath1@gmail.com',
    '720847757635',
    'Amiya Kumar Rath', 'Business ',
    '9437226579', 'amiyarath6160@gmail.com',
    '707806774670',
    'Sabita Rath', 'Housewife',
    '6370796697', 'rathsabita76@gmail.com',
    '850447622103',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371002' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 9: Priti Mohapatra 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371019', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Priti'', 'Pragyan ', 'Mohapatra ',
    'Female', '2005-11-20',
    'Hindu ', 'OBC',
    'Indian', 'O +',
    'Odia', 'Regular',
    '7325906150', 'pritipragyan2050@gmail.com',
    '336061878896',
    'Nikunja Mohapatra ', 'Business ',
    '9938038871', 'nikunjamohapatra04@gmail.com',
    '306140679036',
    'Urmila Mohapatra ', 'Housewife',
    '7205276512', 'nikunjamohapatra04@gmail.com',
    '464937213297',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371019' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 10: Lipsa  Sahoo

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371013', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Lipsa '', 'Rani ', 'Sahoo',
    'Female ', '2005-09-05',
    'Hindu ', 'OBC ',
    'Indian', 'B + ',
    'Odia ', 'Regular',
    '7978390722', 'lipsaranisahoo40@gmail.com',
    '461027949369',
    'Dhirendra Kumar Sahoo ', 'Business ',
    '7381860745', 'dhirendrakumars888@gmail.com',
    '321206202111',
    'Asanti Sahoo ', 'Housewife',
    NULL, NULL,
    '553022558583',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371013' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 11: Sasmita  Behera 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371026', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Sasmita '', NULL, 'Behera ',
    'Female ', '2005-06-16',
    'Hindu ', 'General ',
    'Indian', 'O +',
    'Odia', 'Regular',
    '9777616508', 'sb8038788@gmail.com',
    '704636743912',
    'Sovan Behera ', 'Business ',
    '8018103993', 'sovanbehera993@gmail.com ',
    '682294302426',
    'Amita Behera ', 'Housewife',
    '7894687785', 'sasmitabehera45815@gmail.com',
    '233364289213',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371026' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 12: Suchitra Behera

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371036', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Suchitra'', NULL, 'Behera',
    'Female', '2005-02-27',
    'Hindu', 'SC',
    'Indian', 'B +',
    'Odia', 'Regular',
    '7327099301', 'Suchitra556677@gmail.com ',
    '282770058819',
    'Santosh kumar Behera ', 'Business',
    '9861641633', 'Santoshkuna@gmail.com',
    '775078577976',
    'Pratima Manjari Behera', 'Housewife',
    '8249709992', 'Prateemabehera592@gmail.com',
    '262775018882',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371036' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 13: M TARIQUE 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371014', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''M'', 'D', 'TARIQUE ',
    'Male', '2005-03-15',
    'Muslim ', 'General ',
    'Indian', 'B +',
    'Odia ', 'Regular',
    '7853874970', 'mdtarique75679@gmail.com',
    '609887511805',
    'Sk Siddique ', 'Service ',
    '6370758704', 'Sksiddique1972@gmail.com ',
    '210188806439',
    'Nasima Khatun ', 'Housewife',
    '7853874970', 'Masimakhatun1222@gamil.com ',
    '568276096119',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371014' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 14: Priyanka Dash

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371020', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Priyanka'', NULL, 'Dash',
    'Female', '2004-06-05',
    'Hindu', 'General ',
    'Indian', 'O +',
    'Odia', 'Regular',
    '7205706133', 'dashpri5590@gmail.com',
    '500826996384',
    'Bibhuti Bushan Dash', 'Service',
    '9777466133', 'bibhutibushandash@gmail.com',
    '541708947707',
    'Chandrama Dash', 'Housewife',
    '7327932799', 'chandramasash892@gmail.com',
    '652008362221',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371020' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 15: Swarnalata  Das

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371039', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Swarnalata '', NULL, 'Das',
    'Female ', '2005-08-15',
    'Hindu ', 'OBC',
    'Indian', 'AB + ',
    'Odia ', 'Regular',
    '9040811176', 'dswarnalata689@gmail.com',
    '227842644932',
    'Kartik Chandra Das', 'Farmer',
    '9776617303', 'dswarnalata689@gmail.com',
    '951287619538',
    'Puspalata Das', 'Housewife',
    '6372011915', 'dswarnalata689@gmail.com',
    '553171169921',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371039' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 16: Jasobanti  Toppo

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371009', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Jasobanti '', NULL, 'Toppo',
    'Female ', '2000-03-22',
    'Hindu', 'ST',
    'Indian', 'A +',
    'Odia', 'Regular',
    '9078774522', 'jasobantitoppo272@gmail.com',
    '658913295989',
    'Tirtha Toppo', 'Farmer ',
    '6372095484', 'trithatoppo5@gmail.com',
    '985673284428',
    'Sabitri Toppo', 'Housewife',
    NULL, NULL,
    '899068293393',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371009' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 17: Diptirekha  Sahoo

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371007', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Diptirekha '', NULL, 'Sahoo',
    'Female ', '2006-04-05',
    'Hindu', 'OBC',
    'Indian', 'B +',
    'Odia', 'Regular',
    '9937242370', 'sahoodiptirekha2006@gmail.com',
    '518524865754',
    'Prabhat Kumar Sahoo', 'Service ',
    '9776459388', 'www.pravatsahoo123@gmail.com',
    '630667382854',
    'Kamala Kumari Sahoo', 'Housewife',
    '7894610067', NULL,
    '715150667000',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371007' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 18: Smrutipriya Baliarsingh

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371030', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Smrutipriya'', NULL, 'Baliarsingh',
    'Female ', '2005-06-25',
    'Hindu', 'OBC',
    'Indian', 'AB +',
    'Odia', 'Regular',
    '7978839139', 'baliarsinghsmrutipriya@gmail.com',
    '391577435785',
    'Ghanashyam Baliarsingh', 'Farmer',
    '9668622668', 'ghanashamabaliarsingh@gmail.com',
    '447379425680',
    'Samita Baliarsingh', 'Housewife',
    '9556202803', 'ghanashamabaliarsingh@gmail.com',
    '765138150062',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371030' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 19: Rajashree  Mallick

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371022', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Rajashree '', NULL, 'Mallick',
    'Female', '2005-09-26',
    'Hindu', 'OBC',
    'Indian', 'O +',
    'Odia', 'Regular',
    '8984124779', 'r2400071@gmail.com',
    '897392050845',
    'Suresh Mallick ', 'Business',
    '8144588614', 'Sm8064777@gmail.com',
    '908579675289',
    'Kabita Mallick', 'Housewife',
    '9556724779', 'bm2243439@gmail.com',
    '944593970478',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371022' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 20: Sneha  Kantha 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371032', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Sneha '', NULL, 'Kantha ',
    'Female ', '2004-12-30',
    'Hindu ', 'General ',
    'Indian', 'O +',
    'Hindi', 'Regular',
    '9937715336', 'snehakantha60@gmail.com',
    '651938880498',
    'Sarat Kantha ', 'Business ',
    '9583567430', 'snehakantha60@gmail.com',
    '511699790028',
    'Sabita Kantha ', 'Housewife',
    '9861799046', 'sabitakantha49@gmail.com',
    '721151485488',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371032' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 21: Sneha  Bishoyi 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371031', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Sneha '', NULL, 'Bishoyi ',
    'Female ', '2003-04-01',
    'Christian ', 'SEBC',
    'Indian', 'A +',
    'Odia ', 'Regular',
    '8280964903', 'bishoyisneha322@gmail,com',
    '784268963115',
    'Banchhnidhi Bishoyi ', 'Business ',
    '9337643173', 'bishoyifeeroj@gmail.com',
    '248682496955',
    'Mira Bishoyi ', 'Housewife',
    NULL, NULL,
    '896691768265',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371031' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 22: Priyanka Sahoo

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371021', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Priyanka'', NULL, 'Sahoo',
    'Female', '2005-03-18',
    'Hindu', 'OBC',
    'Indian', 'B +',
    'Odia', 'Regular',
    '8093113424', 'priyankasahoo8935@gmail.com',
    '519406801224',
    'Pratap Kishore Sahoo', 'Business',
    '9938397344', 'Pratapkishoresahoo5@gmail.com',
    '840712365922',
    'Pinki Sahoo', 'Housewife',
    '7752012714', 'sukantipinki85@gmail.com',
    '898555546795',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371021' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 23: Sanjeevani Swain 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371024', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Sanjeevani'', NULL, 'Swain ',
    'Female ', '2006-02-25',
    'Hindu', 'General ',
    'Indian', 'O +',
    'Odia', 'Regular',
    '9861413444', 'swainsanjeevani856@gmail.com',
    '515827692810',
    'Manoj Kumar Swain', 'Private job ',
    '8637210782', 'swainmanoj63@gmail.com',
    '314043879933',
    'Nibedita Swain', NULL,
    '9337475578', 'Swainnibedita63@gmail.com',
    '597494966115',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371024' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 24: Subhalipsa Sethi

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371034', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Subhalipsa'', NULL, 'Sethi',
    'Female', '2006-02-13',
    'Hindu', 'SC',
    'Indian', 'A +',
    'Odia', 'Regular',
    '8456952305', 'sethisubhalipsha@gmail.com',
    '903545069600',
    'Sanjay Kumar Sethi ', 'Farmer ',
    '9668578441', 'sanjaysethy12v@gmail.com',
    '612468514950',
    'Sasmita Sethi', 'Housewife',
    '9668578441', 'sanjaysethy12v@gmil.com',
    '694769489115',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371034' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 25: Ritika Kanhar 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371023', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Ritika'', NULL, 'Kanhar ',
    'Female ', '2006-01-15',
    'Christian ', 'SC ',
    'Indian', 'B + ',
    'Odia ', 'Regular',
    '7326005742', 'ritikakanhar769@gmail.com',
    '532360070375',
    'Dillip Kumar Kanhar ', 'Security ',
    '9439240435', 'ritikakanhar769@gmail.com',
    '443181684470',
    'Kalpana Kanhar ', 'Housewife',
    '7657018149', 'kalpanakanhar12@gmail.com',
    '255478160858',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371023' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 26: Jyotirmayee  Parida

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371010', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Jyotirmayee '', NULL, 'Parida',
    'Female ', '2006-01-07',
    'Hindu ', 'SEBC',
    'Indian', 'B +',
    'Odia', 'Regular',
    '8114341589', 'jyotinmayeeparida@gmail.com',
    '320337572287',
    'Jagannath Parida ', 'Private job ',
    '6370588830', NULL,
    '229318384859',
    'Laxmi Priya Parida', 'Housewife',
    '8260592662', NULL,
    '391060748366',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371010' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 27: Sebati Minz

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371027', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Sebati'', NULL, 'Minz',
    'Female', '2002-11-14',
    'Christian', 'ST',
    'Indian', 'A +',
    'Odia', 'Regular',
    '8093971784', 'minzsiba3@gmail.com',
    '884273515439',
    'Rajesh Minz', 'Farmer',
    '7750983931', 'minzsiba3@gmail.com',
    '962969326808',
    'Tarini Minz', 'Housewife',
    NULL, 'minzsiba3@gmail.com',
    '243685825473',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371027' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 28: Pragati  Dash

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371016', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Pragati '', NULL, 'Dash',
    'Female ', '2005-10-02',
    'Hindu', 'General ',
    'Indian', 'AB -',
    'Odia', 'Regular',
    '6372442971', 'pragatidash254@gmail.com',
    '235706242471',
    'Prabhat Kumar Dash', 'Farmer ',
    '9090311430', 'dashp425@gmail.com',
    '923689366268',
    'Gitanjali Dash ', 'Housewife',
    '9777250859', 'gd2860753@gmail.com',
    '298115060416',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371016' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 29: Saraswati Panda

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371025', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Saraswati'', NULL, 'Panda',
    'Female', '2005-08-25',
    'Hindu', 'General',
    'Indian', 'B +',
    'Odia', 'Regular',
    '9827065834', 'saraswatpanda703@gmail.com',
    '893539004348',
    'Nilamani Panda', 'Business',
    '9938523477', NULL,
    '567915415540',
    'Minati Panda', 'Housewife',
    '9937946395', NULL,
    '659029027291',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371025' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 30: Sidheswar  Naik

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371029', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Sidheswar '', NULL, 'Naik',
    'Male ', '2004-03-05',
    'Hindu ', 'SC ',
    'Indian', 'O +',
    'Odia ', 'Regular',
    '8260620775', 'sidheswarnaik06@gmail.com',
    '479956946080',
    'Khageswar Naik', 'Farmer ',
    '9692303735', 'sidheswarnaik06@gmail.com',
    '430659805085',
    'Debaki Naik', 'Housewife',
    '9692303735', 'sidheswarnaik06@gmail.com',
    '240756695231',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371029' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 31: Samikshya  Sahoo

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371047', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Samikshya '', NULL, 'Sahoo',
    'Female ', '2006-07-21',
    'Hindu ', 'OBC ',
    'Indian', 'B +',
    'Odia', 'Regular',
    '7655900499', 'samikshyasahoo656@gmail.com',
    '578642288293',
    'Srikant Sahoo', 'Business',
    '8249599378', 'srikantasahoo082@gmail.com',
    '357221395890',
    'Sushila Sahoo', 'Housewife',
    '7991056590', 'susilasahoo03@gmail.com',
    '612982253001',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371047' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 32: Subhashree Sethi

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371035', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Subhashree'', NULL, 'Sethi',
    'Female', '2002-01-10',
    'Hindu', 'SC ',
    'Indian', 'B +',
    'Odia', 'Regular',
    '9668275736', 'subhz6247@gmail.com',
    '221444937704',
    'Sangram Sethi', 'Business',
    '8144024512', 'subhz6247@gmail.com',
    '337417693545',
    'Minati Sethi', 'Housewife',
    '8917407673', NULL,
    '578265395532',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371035' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 33: Subhasmita  Rout

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371050', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Subhasmita '', NULL, 'Rout',
    'Female ', '2005-07-31',
    'Hindu ', 'SEBC ',
    'Indian', 'A +',
    'Odia ', 'Regular',
    '8847816225', 'subhasmitarout31072005@gmail.com',
    '488128820734',
    'Amulya Rout ', 'Labour ',
    '9692166955', 'subhasmitarout31072005@gmail.com',
    NULL,
    'Sujata Rout', 'Housewife',
    '8917242379', 'ashisrout407@gmail.com',
    '916298160368',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371050' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 34: Sushree Ojha

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371051', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Sushree'', 'Sunayana', 'Ojha',
    'Female', '2006-02-20',
    'Hindu', 'OBC',
    'Indian', 'B +',
    'Odia', 'Regular',
    '7894318468', 'ojhasunayana8@gmail.com',
    '511802811566',
    'Sankarsan Ojha', 'Farmer',
    '9937585295', NULL,
    '924315603306',
    'Namita Ojha', 'Housewife',
    '9938615281', NULL,
    '249006677591',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371051' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 35: Sonali Pradhan 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371033', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Sonali'', NULL, 'Pradhan ',
    'Female ', '2005-06-06',
    'Hindu', 'SEBC',
    'Indian', 'AB +',
    'Odia', 'Regular',
    '8984323010', 'sonalipradhan062005@gmail.com',
    '995685394297',
    'Kishore Chandra Pradhan', NULL,
    NULL, NULL,
    NULL,
    'Annapurna Behera ', 'Anganwadi teacher ',
    '9777714707', 'Arnnapurnabehera49@gmail.com',
    '513693561191',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371033' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 36: Bimal   Nayak 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371004', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Bimal  '', 'Keshari ', 'Nayak ',
    'Male ', '2006-04-05',
    'Hindu ', 'General ',
    'Indian', 'B +',
    'Odia ', 'Regular',
    '7853910400', 'bimalkesharinayakbimal@gmail.com',
    '644911991762',
    'Bikram Keshari Nayak ', 'Teacher ',
    '9668817947', 'bimalkesharinayakbimal@gmail.com',
    '924619750210',
    'Mamta Manjari Nayak ', 'Housewife',
    '9348268573', 'nayakbimal254@gmail.com',
    '740100167529',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371004' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 37: Subhadra Khilar

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371048', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Subhadra'', NULL, 'Khilar',
    'Female', '2002-01-11',
    'Hindu', 'OBC',
    'Indian', 'O +',
    'Odia', 'Regular',
    '9692004271', 'khilarsubhadra85@gmail.com',
    '293784534812',
    'Gangadhar Khilar', 'Farmer',
    '9668443511', 'khilarsubhadra85@gmail.com',
    '354536953962',
    'Jayanti Khilar', 'Housewife',
    '9692004271', 'khilarsubhadra85@gmail.com',
    '540571708118',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371048' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 38: Supriya  Pradhan 

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371037', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Supriya '', NULL, 'Pradhan ',
    'Female ', '2006-02-28',
    'Hindu', 'SEBC',
    'Indian', 'B+',
    'Odia', 'Regular',
    '9337965079', 'pradhansupriya683@gmail.com',
    '923917346634',
    'Ramesh Chandra Pradhan ', NULL,
    NULL, NULL,
    NULL,
    'Rashmita Pradhan ', 'Housewife',
    '8338838580', NULL,
    '247234850760',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371037' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 39: Shiba Barik

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371028', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Shiba'', 'Sankar ', 'Barik',
    'Male', '2006-02-26',
    'Hindu ', 'OBC',
    'Indian', 'O+',
    'Odia ', 'Regular',
    '6370080457', 'barikshiba01@gmail.com',
    '981990181758',
    'Amarendra Barik ', 'Business ',
    '7077931862', 'barikshiba01@gmail.com',
    '549120766930',
    'Sandhya Rani Das', 'Housewife',
    '9348617292', 'Gitadas RGPur1234@gmail.com',
    '326354328827',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371028' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 40: Sushree Bastia

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371038', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Sushree'', 'Sangita', 'Bastia',
    'Female', '2006-04-08',
    'Hindu', 'SEBC',
    'Indian', 'Ab+',
    'Odia', 'Regular',
    '7894289695', 'bastiasushreesangita040@gmail.com',
    '228012104847',
    'Dibakar Bastia', 'Business ',
    '9937636981', 'kartikkfs2017@gmail.com',
    '605072627673',
    'Sujata Bastia', 'Housewife',
    '9078535840', 'dibakarbastia5@gmail.com',
    '504681089318',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371038' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 41: Abhilipsa Chhatoi

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371001', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Abhilipsa'', NULL, 'Chhatoi',
    'Female', '2006-04-02',
    'Hindu', 'OBC',
    'Indian', 'B +',
    'Odia', 'Regular',
    '6371685877', 'chhatoiabhilipsa@gmail.com',
    '547526563680',
    'Sauri Charan Chhatoi', 'Business ',
    '6372141266', 'sauricharanchhatoi@gmail.com',
    '963232555079',
    'Kabita Chhatoi', 'Housewife',
    '9348989616', 'Chhatoikabita6@gmail.com',
    '859060892491',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371001' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 42: Rudramadhab  Panda

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371046', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Rudramadhab '', NULL, 'Panda',
    'Male ', '2005-07-27',
    'Hindu ', 'General ',
    'Indian', 'Ab +',
    'Odia', 'Regular',
    '7853955707', 'rudramadhabpanda1@gmail.com',
    '437050468114',
    NULL, NULL,
    NULL, NULL,
    NULL,
    'Swarnalata Panigrahi', 'Housewife',
    '8260994664', NULL,
    '320970824214',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371046' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 43: Ayusman  Jena

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371041', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Ayusman '', NULL, 'Jena',
    'Male', '2006-04-15',
    'Hindu', 'OBC',
    'Indian', 'B +',
    'Odia', 'Regular',
    '9668506849', 'ayushmanjena1122@gmail.com',
    '429745867408',
    'Amiya Ranjan Jena ', 'Farmer',
    '9438360344', 'oray45911@gmail.com',
    '259715889546',
    'Lilabati Patra', 'Housewife',
    '7653038547', 'lilabatipatra7653@gmail.com',
    '468038164892',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371041' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 44: Hari Pathi

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371008', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Hari'', 'Om', 'Pathi',
    'Male ', '2005-06-02',
    'Hindu ', 'General ',
    'Indian', 'B +',
    'Odia', 'Regular',
    '9668325288', 'hariompathi349@gmail.com',
    '558102933091',
    'Phalguni Pathi ', 'Teacher ',
    '9040371943', NULL,
    '990379198998',
    'Nilima Pathi ', 'Nursing officer ',
    '9938974281', NULL,
    '317581228267',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371008' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 45: Pinky  Bishoi

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371015', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Pinky '', NULL, 'Bishoi',
    'Female ', '2005-11-06',
    'Hindu ', 'SEBC',
    'Indian', 'O +',
    'Odia', 'Regular',
    '8260662442', 'pinkybishoi05@gmail.com',
    '254343011491',
    'Kailash Bishoi', 'Farmer ',
    '7840938135', 'pinkybishoi05@gmail.com',
    '391862863611',
    'Sabita Bishoi', 'Housewife',
    '8144309566', 'puspanjalibisoi05@gmail.com',
    '497399106896',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371015' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 46: Bishnupriya  Sahoo

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371005', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Bishnupriya '', NULL, 'Sahoo',
    'Female ', '2005-10-22',
    'Hindu ', 'SEBC',
    'Indian', 'O +',
    'Odia', 'Regular',
    '7608057235', 'Bishnupriya753@gmail.com',
    '423371672313',
    'Suratha Sahoo', 'Private job ',
    '7894187769', NULL,
    '903280623938',
    'Sukanti Sahoo', 'Housewife',
    '9114055178', NULL,
    '271739403995',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371005' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Student 47: Bidyusmita  Nayak

-- Insert student registration
INSERT INTO "Acadix_studentregistration" (
    registration_no, is_active, org_id, branch_id, batch_id,
    course_id, department_id, academic_year_id, section_id, semester_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    '23BN371003', TRUE, 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'BSC-NURS' AND org_id = 1),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC-NURS-DEPT' AND org_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_name = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_section" WHERE section_name = 'Section A' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_name = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1)),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

-- Insert student details
INSERT INTO "Acadix_studentdetails" (
    first_name, middle_name, last_name, gender, date_of_birth,
    religion, category, nationality, blood_group, mother_tongue,
    admission_type, student_phone_no, student_email, student_aadhar_no,
    father_name, father_profession, father_phone_no, father_email, father_aadhar_no,
    mother_name, mother_profession, mother_phone_no, mother_email, mother_aadhar_no,
    address, is_active, org_id, branch_id,
    student_registration_id,
    created_at, created_by, updated_at, updated_by
) VALUES (
    ''Bidyusmita '', NULL, 'Nayak',
    'Female ', '2004-03-21',
    'Christian ', 'SEBC',
    'Indian', 'A +',
    'Odia', 'Regular',
    '6370922533', 'bidyusmitanayak46@gmail.com',
    '290169577084',
    'Bhaskar Nayak ', 'Business ',
    '9348793805', 'bn401255@gmail.com',
    '951591216440',
    'Jumeli Mallick', 'Housewife',
    '6370872798', 'jumelimallick123@gmail.com',
    '613465493198',
    NULL,
    TRUE, 1, 1,
    (SELECT id FROM "Acadix_studentregistration" WHERE registration_no = '23BN371003' AND org_id = 1),
    CURRENT_TIMESTAMP, 'system', CURRENT_TIMESTAMP, 'system'
);

COMMIT;

-- =====================================================
-- Verification
-- =====================================================
SELECT COUNT(*) as total_students 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1);
