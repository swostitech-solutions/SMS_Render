-- =====================================================
-- Fix Missing StudentCourse and FeeStructureMaster Records
-- This script creates individual fee groups per batch + academic year
-- =====================================================

BEGIN;

-- =====================================================
-- STEP 1: Create FeeStructureMaster Records
-- Individual fee groups for each Course + Batch + Academic Year
-- =====================================================

-- Fee Group: BSC 2023-2027 3rd Year
INSERT INTO "Acadix_feestructuremaster" (
    organization_id, branch_id,
    fee_structure_code, fee_structure_description,
    enabled, version_no,
    category_id, batch_id, course_id, department_id, academic_year_id, semester_id,
    is_active, created_by, created_at, updated_at
)
SELECT 
    1, 1,
    'BSC 2023-2027 3rd Year', 'BSC 2023-2027 3rd Year',
    't', 1,
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL' LIMIT 1),
    b.id,
    c.id,
    d.id,
    ay.id,
    s.id,
    true, 1, NOW(), NOW()
FROM "Acadix_batch" b
CROSS JOIN "Acadix_course" c
CROSS JOIN "Acadix_department" d
CROSS JOIN "Acadix_academicyear" ay
CROSS JOIN "Acadix_semester" s
WHERE b.batch_code = '2023-2027' AND b.organization_id = 1
  AND c.course_code = 'Nursing(BSC)' AND c.batch_id = b.id
  AND d.department_code = 'BSC' AND d.batch_id = b.id
  AND ay.academic_year_code = '3rd Year' AND ay.batch_id = b.id
  AND s.semester_code = '5th Semester' AND s.batch_id = b.id
  AND NOT EXISTS (
    SELECT 1 FROM "Acadix_feestructuremaster" 
    WHERE fee_structure_code = 'BSC 2023-2027 3rd Year' 
    AND organization_id = 1
);

-- Fee Group: GNM 2023-2026 2nd Year
INSERT INTO "Acadix_feestructuremaster" (
    organization_id, branch_id,
    fee_structure_code, fee_structure_description,
    enabled, version_no,
    category_id, batch_id, course_id, department_id, academic_year_id, semester_id,
    is_active, created_by, created_at, updated_at
)
SELECT 
    1, 1,
    'GNM 2023-2026 2nd Year', 'GNM 2023-2026 2nd Year',
    't', 1,
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL' LIMIT 1),
    b.id,
    c.id,
    d.id,
    ay.id,
    s.id,
    true, 1, NOW(), NOW()
FROM "Acadix_batch" b
CROSS JOIN "Acadix_course" c
CROSS JOIN "Acadix_department" d
CROSS JOIN "Acadix_academicyear" ay
CROSS JOIN "Acadix_semester" s
WHERE b.batch_code = '2023-2026' AND b.organization_id = 1
  AND c.course_code = 'Nursing(GNM)' AND c.batch_id = b.id
  AND d.department_code = 'GNM' AND d.batch_id = b.id
  AND ay.academic_year_code = '2nd Year' AND ay.batch_id = b.id
  AND s.semester_code = '1st Semester' AND s.batch_id = b.id
  AND NOT EXISTS (
    SELECT 1 FROM "Acadix_feestructuremaster" 
    WHERE fee_structure_code = 'GNM 2023-2026 2nd Year' 
    AND organization_id = 1
);

-- Fee Group: GNM 2025-2028 1st Year
INSERT INTO "Acadix_feestructuremaster" (
    organization_id, branch_id,
    fee_structure_code, fee_structure_description,
    enabled, version_no,
    category_id, batch_id, course_id, department_id, academic_year_id, semester_id,
    is_active, created_by, created_at, updated_at
)
SELECT 
    1, 1,
    'GNM 2025-2028 1st Year', 'GNM 2025-2028 1st Year',
    't', 1,
    (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL' LIMIT 1),
    b.id,
    c.id,
    d.id,
    ay.id,
    s.id,
    true, 1, NOW(), NOW()
FROM "Acadix_batch" b
CROSS JOIN "Acadix_course" c
CROSS JOIN "Acadix_department" d
CROSS JOIN "Acadix_academicyear" ay
CROSS JOIN "Acadix_semester" s
WHERE b.batch_code = '2025-2028' AND b.organization_id = 1
  AND c.course_code = 'Nursing(GNM)' AND c.batch_id = b.id
  AND d.department_code = 'GNM' AND d.batch_id = b.id
  AND ay.academic_year_code = '1st Year' AND ay.batch_id = b.id
  AND s.semester_code = '1st Semester' AND s.batch_id = b.id
  AND NOT EXISTS (
    SELECT 1 FROM "Acadix_feestructuremaster" 
    WHERE fee_structure_code = 'GNM 2025-2028 1st Year' 
    AND organization_id = 1
);

-- =====================================================
-- STEP 2: Create StudentCourse Records
-- Link each student to their fee group
-- =====================================================

-- BSC 2023-2027 Students (3rd Year)
INSERT INTO "Acadix_studentcourse" (
    organization_id, branch_id,
    student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
    house_id, student_status, is_promoted, hostel_availed,
    fee_group_id, fee_applied_from_id,
    is_active, created_by, created_at, updated_at
)
SELECT 
    sr.organization_id, sr.branch_id,
    sr.id, sr.batch_id, sr.course_id, sr.department_id, sr.academic_year_id, sr.semester_id, sr.section_id,
    sr.house_id, 'ACTIVE', false, false,
    (SELECT id FROM "Acadix_feestructuremaster" WHERE fee_structure_code = 'BSC 2023-2027 3rd Year' AND organization_id = 1),
    sr.semester_id,
    true, 1, NOW(), NOW()
FROM "Acadix_studentregistration" sr
WHERE sr.batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027' AND organization_id = 1)
  AND sr.is_active = true
  AND NOT EXISTS (
      SELECT 1 FROM "Acadix_studentcourse" sc 
      WHERE sc.student_id = sr.id 
      AND sc.organization_id = sr.organization_id
  );

-- GNM 2023-2026 Students (2nd Year)
INSERT INTO "Acadix_studentcourse" (
    organization_id, branch_id,
    student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
    house_id, student_status, is_promoted, hostel_availed,
    fee_group_id, fee_applied_from_id,
    is_active, created_by, created_at, updated_at
)
SELECT 
    sr.organization_id, sr.branch_id,
    sr.id, sr.batch_id, sr.course_id, sr.department_id, sr.academic_year_id, sr.semester_id, sr.section_id,
    sr.house_id, 'ACTIVE', false, false,
    (SELECT id FROM "Acadix_feestructuremaster" WHERE fee_structure_code = 'GNM 2023-2026 2nd Year' AND organization_id = 1),
    sr.semester_id,
    true, 1, NOW(), NOW()
FROM "Acadix_studentregistration" sr
WHERE sr.batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2026' AND organization_id = 1)
  AND sr.is_active = true
  AND NOT EXISTS (
      SELECT 1 FROM "Acadix_studentcourse" sc 
      WHERE sc.student_id = sr.id 
      AND sc.organization_id = sr.organization_id
  );

-- GNM 2025-2028 Students (1st Year)
INSERT INTO "Acadix_studentcourse" (
    organization_id, branch_id,
    student_id, batch_id, course_id, department_id, academic_year_id, semester_id, section_id,
    house_id, student_status, is_promoted, hostel_availed,
    fee_group_id, fee_applied_from_id,
    is_active, created_by, created_at, updated_at
)
SELECT 
    sr.organization_id, sr.branch_id,
    sr.id, sr.batch_id, sr.course_id, sr.department_id, sr.academic_year_id, sr.semester_id, sr.section_id,
    sr.house_id, 'ACTIVE', false, false,
    (SELECT id FROM "Acadix_feestructuremaster" WHERE fee_structure_code = 'GNM 2025-2028 1st Year' AND organization_id = 1),
    sr.semester_id,
    true, 1, NOW(), NOW()
FROM "Acadix_studentregistration" sr
WHERE sr.batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2025-2028' AND organization_id = 1)
  AND sr.is_active = true
  AND NOT EXISTS (
      SELECT 1 FROM "Acadix_studentcourse" sc 
      WHERE sc.student_id = sr.id 
      AND sc.organization_id = sr.organization_id
  );

COMMIT;

-- =====================================================
-- VERIFICATION QUERIES
-- =====================================================

-- Check created fee structures
SELECT 
    fee_structure_code,
    fee_structure_description,
    enabled,
    version_no,
    is_active
FROM "Acadix_feestructuremaster"
WHERE organization_id = 1
ORDER BY fee_structure_code;

-- Check student course records by batch
SELECT 
    b.batch_code,
    c.course_code,
    ay.academic_year_code,
    COUNT(sc.id) as student_course_count,
    fsm.fee_structure_code
FROM "Acadix_studentcourse" sc
JOIN "Acadix_batch" b ON sc.batch_id = b.id
JOIN "Acadix_course" c ON sc.course_id = c.id
JOIN "Acadix_academicyear" ay ON sc.academic_year_id = ay.id
LEFT JOIN "Acadix_feestructuremaster" fsm ON sc.fee_group_id = fsm.id
WHERE sc.organization_id = 1
GROUP BY b.batch_code, c.course_code, ay.academic_year_code, fsm.fee_structure_code
ORDER BY b.batch_code, ay.academic_year_code;

-- Check for students without StudentCourse records
SELECT 
    b.batch_code,
    c.course_code,
    COUNT(sr.id) as total_students,
    COUNT(sc.id) as students_with_course
FROM "Acadix_studentregistration" sr
JOIN "Acadix_batch" b ON sr.batch_id = b.id
JOIN "Acadix_course" c ON sr.course_id = c.id
LEFT JOIN "Acadix_studentcourse" sc ON sr.id = sc.student_id
WHERE sr.is_active = true AND sr.organization_id = 1
GROUP BY b.batch_code, c.course_code
ORDER BY b.batch_code;
