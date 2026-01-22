-- ============================================================================
-- FETCH LIBRARY DEFAULT VALUES (CORRECTED)
-- ============================================================================

-- Academic Year
SELECT 
    'Academic Year' AS item,
    id,
    academic_year_code,
    academic_year_description
FROM "Acadix_academicyear"
WHERE UPPER(academic_year_code) LIKE '%LIBRARY%'
   OR UPPER(academic_year_code) LIKE '%DEFAULT%'
   OR UPPER(academic_year_description) LIKE '%LIBRARY%';

-- Batch
SELECT 
    'Batch' AS item,
    id,
    batch_code,
    batch_description
FROM "Acadix_batch"
WHERE UPPER(batch_code) LIKE '%LIBRARY%'
   OR UPPER(batch_code) LIKE '%DEFAULT%'
   OR UPPER(batch_description) LIKE '%LIBRARY%';

-- Course  
SELECT 
    'Course' AS item,
    id,
    course_code,
    course_name
FROM "Acadix_course"
WHERE UPPER(course_code) LIKE '%LIBRARY%'
   OR UPPER(course_code) LIKE '%DEFAULT%'
   OR UPPER(course_name) LIKE '%LIBRARY%';

-- Department
SELECT 
    'Department' AS item,
    id,
    department_code,
    department_description  -- ← CORRECT column name
FROM "Acadix_department"
WHERE UPPER(department_code) LIKE '%LIBRARY%'
   OR UPPER(department_code) LIKE '%DEFAULT%'
   OR UPPER(department_description) LIKE '%LIBRARY%';
