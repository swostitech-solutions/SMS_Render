-- ============================================================================
-- DATABASE QUERIES TO RUN BEFORE IMPORTING INV-53
-- CORRECT TABLE NAMES (Django naming convention: Library_tablename)
-- ============================================================================

-- QUERY 1: Check if BookCategory "Nursing" exists
-- ============================================================================
SELECT 
    id, 
    category_name, 
    category_description,
    organization_id,
    batch_id,
    is_active
FROM "Library_bookcategory"
WHERE UPPER(category_name) LIKE '%NURSING%'
  AND is_active = true;

-- Expected: Should return 1 row with id (e.g., id=1)
-- If NO results: We need to CREATE the category first


-- QUERY 2: Check if BookSubCategory "Nursing" exists
-- ============================================================================
SELECT 
    bsc.id,
    bsc.sub_category_name,
    bsc.category_id,
    bc.category_name,
    bsc.is_active
FROM "Library_booksubcategory" bsc
JOIN "Library_bookcategory" bc ON bsc.category_id = bc.id
WHERE UPPER(bsc.sub_category_name) LIKE '%NURSING%'
  AND bsc.is_active = true
  AND bc.is_active = true;

-- Expected: Should return 1 row with id and category_id
-- If NO results: We need to CREATE the subcategory first


-- QUERY 3: Get next book_code number
-- ============================================================================
SELECT 
    MAX(CAST(REGEXP_REPLACE(book_code, '[^0-9]', '', 'g') AS INTEGER)) AS max_code_number,
    COALESCE(MAX(CAST(REGEXP_REPLACE(book_code, '[^0-9]', '', 'g') AS INTEGER)), 0) + 1 AS next_code_number
FROM "Library_librarybook"
WHERE book_code ~ '^BK[0-9]+$';

-- Expected: Returns next number to use (e.g., if max is BK050, next is 51)
-- If NO results (empty table): Start from 1


-- QUERY 4: Get next barcode number
-- ============================================================================
SELECT 
    MAX(barcode) AS max_barcode,
    COALESCE(MAX(barcode), 1000000) + 1 AS next_barcode
FROM "Library_librarybooksbarcode";

-- Expected: Returns next barcode (e.g., 1000050)
-- If NO results (empty table): Start from 1000001


-- QUERY 5: Get current academic year
-- ============================================================================
SELECT 
    id,
    academic_year_code,
    academic_year_description,
    from_date,
    to_date
FROM "Acadix_academicyear"
WHERE is_active = true
ORDER BY from_date DESC
LIMIT 1;

-- Expected: Returns 1 row with id (e.g., id=1)
-- This is required for Library_librarybook.academic_year_id


-- QUERY 6: Get organization and batch info
-- ============================================================================
SELECT 
    o.id AS org_id,
    o.organization_code,
    b.id AS batch_id,
    b.batch_code
FROM "Acadix_organization" o
CROSS JOIN "Acadix_batch" b
WHERE o.is_active = true 
  AND b.is_active = true
LIMIT 1;

-- Expected: Returns org_id and batch_id (e.g., org_id=1, batch_id=1)


-- QUERY 7: Check if LibraryBranch exists
-- ============================================================================
SELECT 
    library_branch_id,
    library_branch_name,
    organization_id,
    batch_id
FROM "LibraryBranch"
WHERE is_active = true
LIMIT 5;

-- Expected: Returns existing library branches (optional)
-- Can be NULL in Library_librarybook if not needed


-- QUERY 8: Check if BookLocation exists
-- ============================================================================
SELECT 
    id,
    book_location,
    book_location_desc,
    organization_id,
    batch_id
FROM "Library_booklocation"
WHERE is_active = true
LIMIT 5;

-- Expected: Returns existing locations (optional)
-- Can be NULL in Library_librarybooksbarcode if not needed


-- QUERY 9: Check existing book titles (to avoid duplicates)
-- ============================================================================
SELECT 
    book_code,
    book_name,
    author,
    publisher,
    no_of_copies
FROM "Library_librarybook"
WHERE UPPER(book_name) LIKE '%ADULT HEALTH%'
   OR UPPER(book_name) LIKE '%PATHOLOGY%'
ORDER BY book_code;

-- Expected: Check if any of the INV-53 books already exist
-- If duplicates found: May need to UPDATE instead of INSERT


-- QUERY 10: Get user ID for created_by
-- ============================================================================
SELECT 
    id,
    user_name,
    user_type_id
FROM "Acadix_userlogin"
WHERE user_type_id IN (1, 3)  -- Admin or Staff
  AND is_active = true
LIMIT 1;

-- Expected: Returns user_id to use for created_by/updated_by
-- Typically use 1 for admin


-- ============================================================================
-- SUMMARY OF REQUIRED VALUES
-- ============================================================================
-- After running above queries, we need these values:
--
-- 1. book_category_id      (from QUERY 1)
-- 2. book_sub_category_id  (from QUERY 2)  
-- 3. next_book_code_number (from QUERY 3) e.g., 1, 2, 3...
-- 4. next_barcode          (from QUERY 4) e.g., 1000001
-- 5. academic_year_id      (from QUERY 5)
-- 6. organization_id       (from QUERY 6)
-- 7. batch_id              (from QUERY 6)
-- 8. created_by_user_id    (from QUERY 10) usually 1
--
-- Optional (can be NULL):
-- 9. library_branch_id     (from QUERY 7)
-- 10. location_id          (from QUERY 8)
-- ============================================================================


-- ============================================================================
-- IF CATEGORY DOESN'T EXIST - CREATE IT
-- ============================================================================
-- Run this ONLY if QUERY 1 returns no results:

-- INSERT INTO "Library_bookcategory" (
--     category_name,
--     category_description,
--     organization_id,
--     batch_id,
--     is_active,
--     created_by,
--     updated_by,
--     created_at,
--     updated_at
-- ) VALUES (
--     'NURSING',
--     'Nursing and Healthcare Books',
--     1,  -- Replace with actual org_id
--     1,  -- Replace with actual batch_id
--     true,
--     1,  -- Replace with actual user_id
--     1,
--     NOW(),
--     NOW()
-- ) RETURNING id;


-- ============================================================================
-- IF SUBCATEGORY DOESN'T EXIST - CREATE IT
-- ============================================================================
-- Run this ONLY if QUERY 2 returns no results:

-- INSERT INTO "Library_booksubcategory" (
--     category_id,
--     sub_category_name,
--     sub_category_description,
--     is_active,
--     created_by,
--     updated_by,
--     created_at,
--     updated_at
-- ) VALUES (
--     1,  -- Replace with category_id from QUERY 1
--     'NURSING',
--     'General Nursing Books',
--     true,
--     1,  -- Replace with actual user_id
--     1,
--     NOW(),
--     NOW()
-- ) RETURNING id;
