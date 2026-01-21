-- Verify BSC 3rd Year students were inserted

SELECT COUNT(*) as total_students
FROM "Acadix_studentregistration"
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027')
AND academic_year_id = (SELECT id FROM "Acadix_academicyear" WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = '2023-2027') AND academic_year_code = '3rd Year');

-- Show first 5 students
SELECT admission_no, first_name, middle_name, last_name, gender_id
FROM "Acadix_studentregistration"
WHERE admission_no BETWEEN '1088' AND '1134'
ORDER BY admission_no::int
LIMIT 5;
