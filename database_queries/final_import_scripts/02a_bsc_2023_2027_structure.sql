-- =====================================================
-- STEP 02: BSC NURSING (2023-2027) - COMPLETE
-- Run this THIRD on a fresh database
-- Creates: Batch, Course, Dept, Academic Year, Semester, Section
-- Then inserts all 47 students
-- =====================================================

BEGIN;

-- =====================================================
-- 1. CREATE BATCH
-- =====================================================
INSERT INTO "Acadix_batch" (
    organization_id, branch_id, batch_code, batch_description, 
    date_from, date_to, is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '2023-2027', 'B.Sc. Nursing Batch 2023-2027',
    '2023-08-01', '2027-07-31', true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- 2. CREATE COURSE (linked to this batch)
-- =====================================================
INSERT INTO "Acadix_course" (
    organization_id, branch_id, course_code, course_name, description,
    batch_id, duration_years, total_semesters,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'Nursing(BSC)', 'B.Sc. Nursing', 'Bachelor of Science in Nursing',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    4, 8,
    true, 1, NOW(), NOW()
);

-- =====================================================
-- 3. CREATE DEPARTMENT (linked to this batch)
-- =====================================================
INSERT INTO "Acadix_department" (
    organization_id, branch_id, department_code, department_description,
    batch_id, course_id, hod_name, office_contact,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'BSC', 'B.Sc. Nursing Department',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    'TBD', '0000000000',
    true, 1, NOW(), NOW()
);

-- =====================================================
-- 4. CREATE ACADEMIC YEAR - 3rd Year
-- =====================================================
INSERT INTO "Acadix_academicyear" (
    organization_id, branch_id, batch_id, course_id, department_id,
    academic_year_code, academic_year_description, date_from, date_to,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    '3rd Year', '3rd Year of B.Sc. Nursing', '2025-08-01', '2026-07-31',
    true, 1, NOW(), NOW()
);

-- =====================================================
-- 5. CREATE SEMESTER - 5th Semester
-- =====================================================
INSERT INTO "Acadix_semester" (
    organization_id, branch_id, semester_code, semester_description,
    batch_id, course_id, department_id, academic_year_id,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '5th Semester', '5th Semester of B.Sc. Nursing',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    true, 1, NOW(), NOW()
);

-- =====================================================
-- 6. CREATE SECTION - Section-A
-- =====================================================
INSERT INTO "Acadix_section" (
    organization_id, branch_id, section_code, section_name,
    batch_id, course_id, department_id, academic_year_id, semester_id,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'Section-A', 'Section A',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(BSC)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'BSC' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)),
    true, 1, NOW(), NOW()
);

COMMIT;

-- Verification
SELECT 'BSC 2023-2027 Structure Created' as status;
