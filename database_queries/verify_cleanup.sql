-- ============================================================================
-- VERIFY CLEANUP - Database should be clean now
-- ============================================================================

-- Check total counts
SELECT 
    (SELECT COUNT(*) FROM "Library_librarybook") AS total_books,
    (SELECT SUM(no_of_copies) FROM "Library_librarybook") AS total_copies,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode") AS total_barcodes,
    (SELECT MAX(book_code) FROM "Library_librarybook") AS last_book_code,
    (SELECT MAX(barcode) FROM "Library_librarybooksbarcode") AS last_barcode;

-- Expected after cleanup:
-- total_books = 94 (7 from INV-53 + 87 from INV-38)
-- total_copies = 452 (24 + 428)
-- total_barcodes = 452
-- last_book_code = BK094
-- last_barcode = 1000452

-- Verify no books exist >= BK095
SELECT COUNT(*) AS should_be_zero
FROM "Library_librarybook"
WHERE book_code >= 'BK095';

-- Check INV-53 books are intact
SELECT COUNT(*) AS should_be_7
FROM "Library_librarybook"
WHERE book_code BETWEEN 'BK001' AND 'BK007';

-- Check INV-38 books are intact
SELECT COUNT(*) AS should_be_87
FROM "Library_librarybook"
WHERE book_code BETWEEN 'BK008' AND 'BK094';
