-- =====================================================
-- GNM (2023-2024) - ALL Students - FIXED V2
-- Course: Nursing(GNM), 3rd Year, 5th Semester
-- Uses INSERT...SELECT...WHERE NOT EXISTS to skip duplicates
-- =====================================================

BEGIN;

-- =====================================================
-- STEP 1: Create Batch
-- =====================================================

INSERT INTO "Acadix_batch" (
    organization_id, branch_id, batch_code, batch_description, 
    date_from, date_to, is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '2023-2024', 'GNM Batch 2023-2024',
    '2023-08-01', '2024-07-31', true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 4: Create Academic Year - 3rd Year
-- =====================================================

INSERT INTO "Acadix_academicyear" (
    organization_id, branch_id, batch_id, course_id, department_id,
    academic_year_code, academic_year_description, date_from, date_to,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2024' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    '3rd Year', '3rd Year of GNM', '2025-08-01', '2026-07-31',
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

-- =====================================================
-- STEP 5: Create Semester - 5th Semester
-- =====================================================

INSERT INTO "Acadix_semester" (
    organization_id, branch_id, semester_code, semester_description,
    batch_id, course_id, department_id, academic_year_id,
    is_active, created_by, created_at, updated_at
) VALUES (
    1, 1, '5th Semester', '5th Semester',
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2024' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2024' AND organization_id = 1)),
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
    (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2024' AND organization_id = 1),
    (SELECT id FROM "Acadix_course" WHERE course_code = 'Nursing(GNM)'),
    (SELECT id FROM "Acadix_department" WHERE department_code = 'GNM' AND organization_id = 1),
    (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '3rd Year' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2024' AND organization_id = 1)),
    (SELECT id FROM "Acadix_semester" WHERE semester_code = '5th Semester' AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2024' AND organization_id = 1)),
    true, 1, NOW(), NOW()
) ON CONFLICT DO NOTHING;

COMMIT;

-- =====================================================
-- VERIFICATION
-- =====================================================
SELECT batch_code, COUNT(*) as student_count 
FROM "Acadix_studentregistration" s
JOIN "Acadix_batch" b ON s.batch_id = b.id
GROUP BY batch_code;
