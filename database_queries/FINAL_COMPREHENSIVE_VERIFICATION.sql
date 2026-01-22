-- ============================================================================
-- COMPREHENSIVE DATA INTEGRITY VERIFICATION
-- Verify all library data is correctly inserted and related across tables
-- ============================================================================

-- 1. BOOKS TABLE - Basic counts
SELECT 
    'BOOKS TABLE' AS table_name,
    COUNT(*) AS total_records,
    MIN(book_code) AS first_book,
    MAX(book_code) AS last_book
FROM "Library_librarybook";

-- 2. PURCHASES TABLE - Basic counts
SELECT 
    'PURCHASES TABLE' AS table_name,
    COUNT(*) AS total_records,
    COUNT(DISTINCT book_id) AS unique_books,
    COUNT(DISTINCT bill_no) AS unique_invoices
FROM "Library_librarypurchase";

-- 3. BARCODES TABLE - Basic counts
SELECT 
    'BARCODES TABLE' AS table_name,
    COUNT(*) AS total_records,
    COUNT(DISTINCT book_id) AS unique_books,
    MIN(barcode) AS first_barcode,
    MAX(barcode) AS last_barcode
FROM "Library_librarybooksbarcode";

-- ============================================================================
-- RELATIONSHIP INTEGRITY CHECKS
-- ============================================================================

-- 4. Check if ALL books have purchase records
SELECT 
    'Books without purchase records' AS check_name,
    COUNT(*) AS count_should_be_zero
FROM "Library_librarybook" lb
LEFT JOIN "Library_librarypurchase" lp ON lb.id = lp.book_id
WHERE lp.id IS NULL;

-- 5. Check if ALL books have barcodes
SELECT 
    'Books without any barcodes' AS check_name,
    COUNT(*) AS count_should_be_zero
FROM "Library_librarybook" lb
LEFT JOIN "Library_librarybooksbarcode" lbb ON lb.id = lbb.book_id
WHERE lbb.id IS NULL;

-- 6. Check if barcode count matches no_of_copies for each book
SELECT 
    'Books where barcode_count != no_of_copies' AS check_name,
    COUNT(*) AS count_should_be_zero
FROM (
    SELECT 
        lb.id,
        lb.book_code,
        lb.no_of_copies,
        COUNT(lbb.id) AS barcode_count
    FROM "Library_librarybook" lb
    LEFT JOIN "Library_librarybooksbarcode" lbb ON lb.id = lbb.book_id
    GROUP BY lb.id, lb.book_code, lb.no_of_copies
) AS counts
WHERE no_of_copies != barcode_count;

-- 7. Check if purchase no_of_copies matches book no_of_copies
SELECT 
    'Books where purchase_copies != book_copies' AS check_name,
    COUNT(*) AS count_should_be_zero
FROM "Library_librarybook" lb
JOIN "Library_librarypurchase" lp ON lb.id = lp.book_id
WHERE lb.no_of_copies != lp.no_of_copies;

-- ============================================================================
-- DATA CONSISTENCY CHECKS
-- ============================================================================

-- 8. Verify total copies match across all tables
SELECT 
    (SELECT SUM(no_of_copies) FROM "Library_librarybook") AS book_table_copies,
    (SELECT SUM(no_of_copies) FROM "Library_librarypurchase") AS purchase_table_copies,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode") AS barcode_count,
    CASE 
        WHEN (SELECT SUM(no_of_copies) FROM "Library_librarybook") = 
             (SELECT SUM(no_of_copies) FROM "Library_librarypurchase") AND
             (SELECT SUM(no_of_copies) FROM "Library_librarybook") = 
             (SELECT COUNT(*) FROM "Library_librarybooksbarcode")
        THEN '✅ ALL MATCH'
        ELSE '❌ MISMATCH'
    END AS status;

-- 9. Check for orphaned purchase records (purchases without books)
SELECT 
    'Orphaned purchase records' AS check_name,
    COUNT(*) AS count_should_be_zero
FROM "Library_librarypurchase" lp
LEFT JOIN "Library_librarybook" lb ON lp.book_id = lb.id
WHERE lb.id IS NULL;

-- 10. Check for orphaned barcode records (barcodes without books)
SELECT 
    'Orphaned barcode records' AS check_name,
    COUNT(*) AS count_should_be_zero
FROM "Library_librarybooksbarcode" lbb
LEFT JOIN "Library_librarybook" lb ON lbb.book_id = lb.id
WHERE lb.id IS NULL;

-- ============================================================================
-- INVOICE-WISE BREAKDOWN
-- ============================================================================

-- 11. Verify each invoice's data integrity
SELECT 
    lp.bill_no AS invoice,
    COUNT(DISTINCT lb.id) AS books,
    SUM(lb.no_of_copies) AS copies_from_books,
    SUM(lp.no_of_copies) AS copies_from_purchases,
    (SELECT COUNT(*) 
     FROM "Library_librarybooksbarcode" lbb2 
     WHERE lbb2.book_id IN (
         SELECT lb2.id 
         FROM "Library_librarybook" lb2
         JOIN "Library_librarypurchase" lp2 ON lb2.id = lp2.book_id
         WHERE lp2.bill_no = lp.bill_no
     )) AS total_barcodes,
    SUM(lp.bill_value) AS total_invoice_value
FROM "Library_librarypurchase" lp
JOIN "Library_librarybook" lb ON lp.book_id = lb.id
GROUP BY lp.bill_no
ORDER BY lp.bill_no;

-- Expected:
-- INV-53:  7 books, 24 copies, 24 barcodes
-- INV-38:  87 books, 428 copies, 428 barcodes
-- INV-104: 46 books, 98 copies, 98 barcodes
-- INV-116: 12 books, 22 copies, 22 barcodes

-- ============================================================================
-- SAMPLE DATA CHECK - Show complete record for one book
-- ============================================================================

-- 12. Complete data for BK001 (sample verification)
SELECT 
    'BK001 Complete Record' AS info,
    lb.book_code,
    lb.book_name,
    lb.author,
    lb.publisher,
    lb.no_of_copies,
    lp.purchase_date,
    lp.purchase_from,
    lp.bill_no,
    lp.bill_value,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode" WHERE book_id = lb.id) AS barcode_count,
    (SELECT STRING_AGG(barcode::text, ', ' ORDER BY barcode) 
     FROM "Library_librarybooksbarcode" WHERE book_id = lb.id) AS barcodes
FROM "Library_librarybook" lb
JOIN "Library_librarypurchase" lp ON lb.id = lp.book_id
WHERE lb.book_code = 'BK001';

-- ============================================================================
-- FINAL SUMMARY
-- ============================================================================

SELECT 
    '🎯 FINAL VERIFICATION SUMMARY' AS summary,
    (SELECT COUNT(*) FROM "Library_librarybook") AS total_books,
    (SELECT COUNT(*) FROM "Library_librarypurchase") AS total_purchase_records,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode") AS total_barcodes,
    (SELECT COUNT(DISTINCT bill_no) FROM "Library_librarypurchase") AS total_invoices;

-- All counts should match our import:
-- Books: 152
-- Purchase records: 152 (one per book)
-- Barcodes: 572
-- Invoices: 4
