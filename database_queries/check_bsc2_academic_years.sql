-- Check academic year codes for BSC 2024-2028 batch

SELECT 
    b.batch_code,
    ay.academic_year_code,
    ay.academic_year_description,
    ay.id
FROM "Acadix_batch" b
LEFT JOIN "Acadix_academicyear" ay ON b.id = ay.batch_id
WHERE b.batch_code = '2024-2028'
ORDER BY ay.id;
