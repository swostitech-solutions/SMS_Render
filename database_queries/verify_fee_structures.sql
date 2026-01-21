-- =====================================================
-- COMPLETE FEE STRUCTURE VERIFICATION
-- Verifies all aspects of fee setup
-- =====================================================

SELECT '=== SECTION 1: FEE STRUCTURE MASTER COUNT ===' as section, '' as detail, '' as value;

-- Check total fee structures created
SELECT 
    'Total FeeStructureMaster' as section,
    'Expected: 6 (one per batch)' as detail,
    COUNT(*)::text as value
FROM "Acadix_feestructuremaster";

SELECT 'Total FeeStructureDetail' as section,
    'Expected: 6+ (fee elements)' as detail,
    COUNT(*)::text as value
FROM "Acadix_feestructuredetail";

SELECT '=== SECTION 2: FEE STRUCTURES BY BATCH ===' as section, '' as detail, '' as value;

-- Detailed view of each batch's fee structure
SELECT 
    b.batch_code as section,
    'Batch: ' || b.batch_code || ' | Course: ' || c.course_name || ' | Year: ' || ay.academic_year_code as detail,
    'Fee Structure ID: ' || fsm.id::text || ' | Code: ' || fsm.fee_structure_code as value
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_batch" b ON fsm.batch_id = b.id
JOIN "Acadix_course" c ON fsm.course_id = c.id
JOIN "Acadix_academicyear" ay ON fsm.academic_year_id = ay.id
ORDER BY b.batch_code;

SELECT '=== SECTION 3: FEE ELEMENTS PER STRUCTURE ===' as section, '' as detail, '' as value;

-- Show fee elements for each structure
SELECT 
    b.batch_code as section,
    fet.element_name as detail,
    '₹' || fsd.amount::text as value
FROM "Acadix_feestructuredetail" fsd
JOIN "Acadix_feestructuremaster" fsm ON fsd.fee_structure_master_id = fsm.id
JOIN "Acadix_batch" b ON fsm.batch_id = b.id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id = fet.id
ORDER BY b.batch_code, fet.element_name;

SELECT '=== SECTION 4: TOTAL FEES PER BATCH ===' as section, '' as detail, '' as value;

-- Calculate total fees per batch
SELECT 
    b.batch_code as section,
    c.course_name || ' - ' || ay.academic_year_code as detail,
    '₹' || SUM(fsd.amount)::text || ' (Total of ' || COUNT(fsd.id)::text || ' elements)' as value
FROM "Acadix_feestructuremaster" fsm
JOIN "Acadix_batch" b ON fsm.batch_id = b.id
JOIN "Acadix_course" c ON fsm.course_id = c.id
JOIN "Acadix_academicyear" ay ON fsm.academic_year_id = ay.id
LEFT JOIN "Acadix_feestructuredetail" fsd ON fsm.id = fsd.fee_structure_master_id
GROUP BY b.batch_code, c.course_name, ay.academic_year_code
ORDER BY b.batch_code;

SELECT '=== SECTION 5: MISSING FEE DETAILS CHECK ===' as section, '' as detail, '' as value;

-- Check if any batch is missing fee structure
SELECT 
    'Batches WITHOUT FeeStructure' as section,
    b.batch_code || ' - ' || c.course_name as detail,
    'MISSING!' as value
FROM "Acadix_batch" b
LEFT JOIN "Acadix_course" c ON c.batch_id = b.id
WHERE b.id NOT IN (SELECT batch_id FROM "Acadix_feestructuremaster")
UNION ALL
SELECT 
    'FeeStructures WITHOUT Elements' as section,
    fsm.fee_structure_code as detail,
    'NO FEE ELEMENTS!' as value
FROM "Acadix_feestructuremaster" fsm
WHERE fsm.id NOT IN (SELECT fee_structure_master_id FROM "Acadix_feestructuredetail")
UNION ALL
SELECT 
    'Status' as section,
    'All checks passed' as detail,
    '✅ COMPLETE' as value
WHERE NOT EXISTS (
    SELECT 1 FROM "Acadix_batch" b WHERE b.id NOT IN (SELECT batch_id FROM "Acadix_feestructuremaster")
)
AND NOT EXISTS (
    SELECT 1 FROM "Acadix_feestructuremaster" fsm 
    WHERE fsm.id NOT IN (SELECT fee_structure_master_id FROM "Acadix_feestructuredetail")
);

SELECT '=== SECTION 6: FEE FREQUENCY & SEMESTER MAPPING ===' as section, '' as detail, '' as value;

-- Check fee frequency and semester mappings
SELECT 
    b.batch_code as section,
    fet.element_name || ' (Freq: ' || ff.fee_frequency_name || ')' as detail,
    'Sem1:' || COALESCE(fsd.semester_1::text, '0') || ' Sem2:' || COALESCE(fsd.semester_2::text, '0') || 
    ' ... Sem8:' || COALESCE(fsd.semester_8::text, '0') as value
FROM "Acadix_feestructuredetail" fsd
JOIN "Acadix_feestructuremaster" fsm ON fsd.fee_structure_master_id = fsm.id
JOIN "Acadix_batch" b ON fsm.batch_id = b.id
JOIN "Acadix_feeelementtype" fet ON fsd.element_type_id = fet.id
JOIN "Acadix_feefrequency" ff ON fsd.element_frequency_id = ff.id
ORDER BY b.batch_code, fet.element_name;

SELECT '=== SECTION 7: FEE ELEMENT TYPES AVAILABLE ===' as section, '' as detail, '' as value;

-- Show all available fee element types
SELECT 
    'Available Fee Types' as section,
    element_name as detail,
    'ID: ' || id::text || ' | Type: ' || element_type as value
FROM "Acadix_feeelementtype"
ORDER BY sequence_order;
