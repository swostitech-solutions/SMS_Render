-- ============================================================================
-- CREATE LIBRARY-PERMANENT ACADEMIC YEAR (Corrected)
-- ============================================================================

INSERT INTO "Acadix_academicyear" (
    organization_id,
    branch_id,
    batch_id,
    course_id,
    department_id,
    academic_year_code,
    academic_year_description,
    date_from,      -- ← CORRECTED
    date_to,        -- ← CORRECTED
    is_active,
    created_by,
    updated_by,
    created_at,
    updated_at
) VALUES (
    1,              -- org_id
    NULL,           -- branch_id (not specific to branch)
    NULL,           -- batch_id (not specific to batch)
    NULL,           -- course_id (not specific to course)
    NULL,           -- department_id (not specific to dept)
    'LIBRARY-PERMANENT',
    'Permanent Academic Year for Library Books',
    '2020-01-01',
    '2099-12-31',
    true,
    2, 2,
    NOW(), NOW()
) RETURNING id;

-- Copy the returned 'id' - this is your academic_year_id for library books
