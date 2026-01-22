-- ============================================================================
-- CHECK CURRENT DATABASE STATUS (Before INV-104)
-- ============================================================================

-- Total books and barcodes currently in database
SELECT 
    COUNT(*) AS total_books,
    SUM(no_of_copies) AS total_copies
FROM "Library_librarybook";

-- Books from INV-53 (BK001-BK007)
SELECT 
    COUNT(*) AS inv53_books,
    SUM(no_of_copies) AS inv53_copies
FROM "Library_librarybook"
WHERE book_code BETWEEN 'BK001' AND 'BK007';

-- Books from INV-38 (BK008-BK094)
SELECT 
    COUNT(*) AS inv38_books,
    SUM(no_of_copies) AS inv38_copies
FROM "Library_librarybook"
WHERE book_code BETWEEN 'BK008' AND 'BK094';

-- Total barcodes
SELECT COUNT(*) AS total_barcodes
FROM "Library_librarybooksbarcode";

-- Barcode range
SELECT 
    MIN(barcode) AS min_barcode,
    MAX(barcode) AS max_barcode,
    MAX(barcode) + 1 AS next_barcode
FROM "Library_librarybooksbarcode";

-- Last book code
SELECT book_code, book_name
FROM "Library_librarybook"
ORDER BY book_code DESC
LIMIT 1;

-- Summary
SELECT 
    (SELECT COUNT(*) FROM "Library_librarybook") AS total_books,
    (SELECT SUM(no_of_copies) FROM "Library_librarybook") AS total_copies,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode") AS total_barcodes,
    (SELECT MAX(book_code) FROM "Library_librarybook") AS last_book_code,
    (SELECT MAX(barcode) FROM "Library_librarybooksbarcode") AS last_barcode;

-- Expected before INV-104:
-- total_books = 94 (7 from INV-53 + 87 from INV-38)
-- total_copies = 452 (24 + 428)
-- total_barcodes = 452
-- last_book_code = BK094
-- last_barcode = 1000452
