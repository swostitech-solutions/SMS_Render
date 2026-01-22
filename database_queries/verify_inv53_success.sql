-- ============================================================================
-- VERIFY INV-53 IMPORT SUCCESS
-- ============================================================================

-- 1. Check all books (should show 7 books with correct quantities)
SELECT 
    book_code,
    book_name,
    author,
    publisher,
    no_of_copies,
    volume,
    edition
FROM "Library_librarybook"
WHERE book_code LIKE 'BK00%'
ORDER BY book_code;

-- Expected:
-- BK001: 5 copies
-- BK002: 5 copies
-- BK003: 1 copy
-- BK004: 1 copy
-- BK005: 5 copies
-- BK006: 5 copies
-- BK007: 2 copies


-- 2. Check barcodes per book (should match no_of_copies)
SELECT 
    lb.book_code,
    lb.no_of_copies AS expected_barcodes,
    COUNT(lbb.id) AS actual_barcodes,
    MIN(lbb.barcode) AS first_barcode,
    MAX(lbb.barcode) AS last_barcode
FROM "Library_librarybook" lb
LEFT JOIN "Library_librarybooksbarcode" lbb ON lb.id = lbb.book_id
WHERE lb.book_code LIKE 'BK00%'
GROUP BY lb.id, lb.book_code, lb.no_of_copies
ORDER BY lb.book_code;

-- Expected: each book's expected_barcodes = actual_barcodes


-- 3. Check purchases
SELECT 
    lb.book_code,
    lp.purchase_date,
    lp.purchase_from,
    lp.bill_no,
    lp.no_of_copies,
    lp.bill_value
FROM "Library_librarypurchase" lp
JOIN "Library_librarybook" lb ON lp.book_id = lb.id
WHERE lb.book_code LIKE 'BK00%'
ORDER BY lb.book_code;

-- Expected: 7 purchase records


-- 4. Total summary (corrected query)
SELECT 
    (SELECT COUNT(*) FROM "Library_librarybook" WHERE book_code LIKE 'BK00%') AS total_books,
    (SELECT SUM(no_of_copies) FROM "Library_librarybook" WHERE book_code LIKE 'BK00%') AS total_copies,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode" WHERE book_id IN 
        (SELECT id FROM "Library_librarybook" WHERE book_code LIKE 'BK00%')) AS total_barcodes,
    (SELECT SUM(bill_value) FROM "Library_librarypurchase" WHERE book_id IN
        (SELECT id FROM "Library_librarybook" WHERE book_code LIKE 'BK00%')) AS total_bill_value;

-- Expected: 7 books, 24 copies, 24 barcodes, ₹34,280


-- 5. Check specific barcode range
SELECT barcode, lb.book_code, lbb.book_barcode_status
FROM "Library_librarybooksbarcode" lbb
JOIN "Library_librarybook" lb ON lbb.book_id = lb.id
WHERE lb.book_code LIKE 'BK00%'
ORDER BY barcode
LIMIT 24;

-- Expected: barcodes from 1000001 to 1000024
