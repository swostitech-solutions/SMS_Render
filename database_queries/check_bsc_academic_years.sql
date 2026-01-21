-- Check what academic years exist for BSC 2023-2027 batch

SELECT 
    b.batch_code,
    ay.academic_year_code,
    ay.academic_year_description,
    ay.id
FROM "Acadix_batch" b
LEFT JOIN "Acadix_academicyear" ay ON b.id = ay.batch_id
WHERE b.batch_code = '2023-2027'
ORDER BY ay.id;
