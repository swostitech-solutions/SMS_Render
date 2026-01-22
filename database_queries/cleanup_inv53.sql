-- ============================================================================
-- CHECK IF BOOKS ALREADY EXIST
-- ============================================================================

-- Check for existing books BK001-BK007
SELECT book_code, book_name, no_of_copies, created_at
FROM "Library_librarybook"
WHERE book_code IN ('BK001', 'BK002', 'BK003', 'BK004', 'BK005', 'BK006', 'BK007')
ORDER BY book_code;

-- Check for duplicate book codes
SELECT book_code, COUNT(*) as count
FROM "Library_librarybook"
WHERE book_code LIKE 'BK00%'
GROUP BY book_code
HAVING COUNT(*) > 1;

-- ============================================================================
-- IF BOOKS EXIST, DELETE THEM FIRST (RUN THIS BEFORE THE IMPORT)
-- ============================================================================

-- Delete in correct order (foreign key constraints)
BEGIN;

-- 1. Delete barcodes first
DELETE FROM "Library_librarybooksbarcode"
WHERE book_id IN (
    SELECT id FROM "Library_librarybook" 
    WHERE book_code IN ('BK001', 'BK002', 'BK003', 'BK004', 'BK005', 'BK006', 'BK007')
);

-- 2. Delete purchases
DELETE FROM "Library_librarypurchase"
WHERE book_id IN (
    SELECT id FROM "Library_librarybook" 
    WHERE book_code IN ('BK001', 'BK002', 'BK003', 'BK004', 'BK005', 'BK006', 'BK007')
);

-- 3. Delete books
DELETE FROM "Library_librarybook"
WHERE book_code IN ('BK001', 'BK002', 'BK003', 'BK004', 'BK005', 'BK006', 'BK007');

COMMIT;

-- Verify deletion
SELECT book_code FROM "Library_librarybook"
WHERE book_code IN ('BK001', 'BK002', 'BK003', 'BK004', 'BK005', 'BK006', 'BK007');
-- Should return 0 rows
