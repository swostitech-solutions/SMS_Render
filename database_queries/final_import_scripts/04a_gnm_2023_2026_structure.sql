-- =====================================================
-- STEP 04a: GNM NURSING (2023-2026) - STRUCTURE
-- Creates: Batch, Course, Dept, Academic Year, Semester, Section
-- =====================================================

BEGIN;

-- 1. CREATE BATCH
INSERT INTO "Acadix_batch" (
    organization_id, branch_id, batch_code, batch_description, 
    date_from, date_to, is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '2023-2026', 'GNM Nursing Batch 2023-2026',
    '2023-08-01', '2026-07-31', true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- 2. CREATE COURSE
INSERT INTO "Acadix_course" (
    organization_id, branch_id, course_code, course_name, description,
    batch_id, duration_years, total_semesters,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'Nursing(GNM)', 'GNM Nursing', 'General Nursing and Midwifery',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    3, 6,
    true, 1, NOW(), NOW()
);

-- 3. CREATE DEPARTMENT
INSERT INTO "Acadix_department" (
    organization_id, branch_id, department_code, department_description,
    batch_id, course_id, hod_name, office_contact,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'GNM', 'GNM Nursing Department',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    'TBD', '0000000000',
    true, 1, NOW(), NOW()
);

-- 4. CREATE ACADEMIC YEAR - 2nd Year
INSERT INTO "Acadix_academicyear" (
    organization_id, branch_id, batch_id, course_id, department_id,
    academic_year_code, academic_year_description, date_from, date_to,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    '2nd Year', '2nd Year of GNM', '2024-08-01', '2025-07-31',
    true, 1, NOW(), NOW()
);

-- 5. CREATE SEMESTER - 1st Semester
INSERT INTO "Acadix_semester" (
    organization_id, branch_id, semester_code, semester_description,
    batch_id, course_id, department_id, academic_year_id,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '1st Semester', '1st Semester of 2nd Year',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    true, 1, NOW(), NOW()
);

-- 6. CREATE SECTION
INSERT INTO "Acadix_section" (
    organization_id, branch_id, section_code, section_name,
    batch_id, course_id, department_id, academic_year_id, semester_id,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, 'Section-A', 'Section A',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '2nd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '1st Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)),
    true, 1, NOW(), NOW()
);

COMMIT;

SELECT 'GNM 2023-2026 Structure Created' as status;
