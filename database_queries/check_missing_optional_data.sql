-- ============================================================================
-- CHECK FOR MISSING OR OPTIONAL DATA
-- ============================================================================

-- 1. Check if all books are using the same category/subcategory
SELECT 
    book_category_id,
    book_sub_category_id,
    COUNT(*) AS book_count,
    bc.book_category_description AS category_name,
    bsc.book_sub_category_description AS subcategory_name
FROM "Library_librarybook" lb
JOIN "Library_bookcategory" bc ON lb.book_category_id = bc.id
JOIN "Library_booksubcategory" bsc ON lb.book_sub_category_id = bsc.id
GROUP BY book_category_id, book_sub_category_id, bc.book_category_description, bsc.book_sub_category_description;

-- 2. Check if barcodes have locations assigned
SELECT 
    'Barcodes with location' AS check_type,
    COUNT(*) AS count
FROM "Library_librarybooksbarcode"
WHERE location_id_id IS NOT NULL
UNION ALL
SELECT 
    'Barcodes without location' AS check_type,
    COUNT(*) AS count
FROM "Library_librarybooksbarcode"
WHERE location_id_id IS NULL;

-- 3. Check barcode status distribution
SELECT 
    book_barcode_status AS status,
    COUNT(*) AS count
FROM "Library_librarybooksbarcode"
GROUP BY book_barcode_status;

-- 4. Check which books are set to allow_issue
SELECT 
    allow_issue,
    COUNT(*) AS count
FROM "Library_librarybook"
GROUP BY allow_issue;

-- 5. Check book types
SELECT 
    type,
    COUNT(*) AS count
FROM "Library_librarybook"
GROUP BY type;

-- 6. Check library branch assignment
SELECT 
    lb.library_branch_id,
    lbr.library_branch_name,
    COUNT(*) AS book_count
FROM "Library_librarybook" lb
JOIN "LibraryBranch" lbr ON lb.library_branch_id = lbr.id
GROUP BY lb.library_branch_id, lbr.library_branch_name;

-- 7. Check academic year assignment
SELECT 
    lb.academic_year_id,
    ay.academic_year_code,
    ay.academic_year_description,
    COUNT(*) AS book_count
FROM "Library_librarybook" lb
JOIN "Acadix_academicyear" ay ON lb.academic_year_id = ay.id
GROUP BY lb.academic_year_id, ay.academic_year_code, ay.academic_year_description;

-- 8. Check if any books have ISBN/Pages/Publish Year
SELECT 
    COUNT(CASE WHEN publish_year IS NOT NULL THEN 1 END) AS has_publish_year,
    COUNT(CASE WHEN pages IS NOT NULL THEN 1 END) AS has_pages,
    COUNT(*) AS total_books
FROM "Library_librarybook";

-- 9. Check available locations in the system
SELECT 
    id,
    book_location_name
FROM "Library_booklocation"
ORDER BY id;

-- 10. Summary of what's configured vs what's NULL
SELECT 
    'Fields Analysis' AS summary,
    COUNT(*) AS total_books,
    COUNT(CASE WHEN book_category_id IS NOT NULL THEN 1 END) AS has_category,
    COUNT(CASE WHEN book_sub_category_id IS NOT NULL THEN 1 END) AS has_subcategory,
    COUNT(CASE WHEN library_branch_id IS NOT NULL THEN 1 END) AS has_branch,
    COUNT(CASE WHEN academic_year_id IS NOT NULL THEN 1 END) AS has_academic_year,
    COUNT(CASE WHEN author IS NOT NULL AND author != '' THEN 1 END) AS has_author,
    COUNT(CASE WHEN publisher IS NOT NULL AND publisher != '' THEN 1 END) AS has_publisher
FROM "Library_librarybook";
