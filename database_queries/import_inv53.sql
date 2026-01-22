-- ============================================================================
-- INV-53 LIBRARY BOOKS IMPORT - SQL SCRIPT
-- Generated: 2026-01-22
-- Invoice: PADMALAYA-INV-53 | Date: 06-08-2024
-- Total Books: 8 | Total Copies: 24
-- ============================================================================

-- VALUES FROM DATABASE:
-- category_id = 29
-- subcategory_id = 46
-- next_book_code = 1 (BK001, BK002, ...)
-- next_barcode = 1000001
-- org_id = 1
-- batch_id = 23
-- created_by = 2
-- academic_year_id = (need to check - run query below first)

-- ============================================================================
-- STEP 0: GET ACADEMIC YEAR ID (RUN THIS FIRST)
-- ============================================================================
SELECT id, academic_year_code 
FROM "Acadix_academicyear" 
WHERE is_active = true 
ORDER BY id DESC 
LIMIT 1;

-- Copy the 'id' value and replace @ACADEMIC_YEAR_ID@ below


-- ============================================================================
-- STEP 1: INSERT BOOKS (8 books)
-- ============================================================================

BEGIN;

-- Book 1: TB OF ADULT HEALTH NURSING-I
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages, ISBN,
    barcode_auto_generated, allow_issue, type,
    academic_year_id, createdDate,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK001',
    'TB OF ADULT HEALTH NURSING-I',
    29, 46,
    'Active', 5, 1, 23,
    'EMMESS', 'I. CLEMENT', NULL, NULL, NULL, NULL, NULL,
    true, 'T', 'BOOK',
    @ACADEMIC_YEAR_ID@, CURRENT_DATE,
    true, 2, 2, NOW(), NOW()
);

-- Book 2: TEXTBOOK OF PATHOLOGY, GENETICS & PHARMACOLOGY-I
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages, ISBN,
    barcode_auto_generated, allow_issue, type,
    academic_year_id, createdDate,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK002',
    'TEXTBOOK OF PATHOLOGY, GENETICS & PHARMACOLOGY-I',
    29, 46,
    'Active', 5, 1, 23,
    'EMMESS', 'KRISHNARAJ', NULL, NULL, NULL, NULL, NULL,
    true, 'T', 'BOOK',
    @ACADEMIC_YEAR_ID@, CURRENT_DATE,
    true, 2, 2, NOW(), NOW()
);

-- Book 3: APPLIED PHARMACOLOGY
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages, ISBN,
    barcode_auto_generated, allow_issue, type,
    academic_year_id, createdDate,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK003',
    'APPLIED PHARMACOLOGY',
    29, 46,
    'Active', 2, 1, 23,
    'SN PUBLICATIONS', 'B.HAZRA', NULL, NULL, NULL, NULL, NULL,
    true, 'T', 'BOOK',
    @ACADEMIC_YEAR_ID@, CURRENT_DATE,
    true, 2, 2, NOW(), NOW()
);

-- Book 4: TEXTBOOK OF BIOCHEMISTRY FOR GNM
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages, ISBN,
    barcode_auto_generated, allow_issue, type,
    academic_year_id, createdDate,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK004',
    'TEXTBOOK OF BIOCHEMISTRY FOR GNM',
    29, 46,
    'Active', 2, 1, 23,
    'EMMESS', 'I. CLEMENT', NULL, NULL, NULL, NULL, NULL,
    true, 'T', 'BOOK',
    @ACADEMIC_YEAR_ID@, CURRENT_DATE,
    true, 2, 2, NOW(), NOW()
);

-- Book 5: TEXTBOOK OF PATHOLOGY FOR GNM
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages, ISBN,
    barcode_auto_generated, allow_issue, type,
    academic_year_id, createdDate,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK005',
    'TEXTBOOK OF PATHOLOGY FOR GNM',
    29, 46,
    'Active', 2, 1, 23,
    'EMMESS', 'I. CLEMENT', NULL, NULL, NULL, NULL, NULL,
    true, 'T', 'BOOK',
    @ACADEMIC_YEAR_ID@, CURRENT_DATE,
    true, 2, 2, NOW(), NOW()
);

-- Book 6: PHARMACOLOGY
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages, ISBN,
    barcode_auto_generated, allow_issue, type,
    academic_year_id, createdDate,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK006',
    'PHARMACOLOGY',
    29, 46,
    'Active', 3, 1, 23,
    'SN PUBLICATIONS', 'N. SURESH', NULL, NULL, NULL, NULL, NULL,
    true, 'T', 'BOOK',
    @ACADEMIC_YEAR_ID@, CURRENT_DATE,
    true, 2, 2, NOW(), NOW()
);

-- Book 7: TEXTBOOK OF SOCIOLOGY & HEALTH EDUCATION
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages, ISBN,
    barcode_auto_generated, allow_issue, type,
    academic_year_id, createdDate,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK007',
    'TEXTBOOK OF SOCIOLOGY & HEALTH EDUCATION',
    29, 46,
    'Active', 3, 1, 23,
    'EMMESS', 'I. CLEMENT', NULL, NULL, NULL, NULL, NULL,
    true, 'T', 'BOOK',
    @ACADEMIC_YEAR_ID@, CURRENT_DATE,
    true, 2, 2, NOW(), NOW()
);

-- Book 8: TEXTBOOK OF OBSTETRICS & MIDWIFERY
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages, ISBN,
    barcode_auto_generated, allow_issue, type,
    academic_year_id, createdDate,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK008',
    'TEXTBOOK OF OBSTETRICS & MIDWIFERY',
    29, 46,
    'Active', 2, 1, 23,
    'EMMESS', 'N. CLEMENT', NULL, NULL, NULL, NULL, NULL,
    true, 'T', 'BOOK',
    @ACADEMIC_YEAR_ID@, CURRENT_DATE,
    true, 2, 2, NOW(), NOW()
);

COMMIT;


-- ============================================================================
-- STEP 2: INSERT PURCHASE RECORD (1 invoice-level purchase)
-- ============================================================================

BEGIN;

INSERT INTO "Library_librarypurchase" (
    book_id, purchase_date, purchase_from, bill_no,
    bill_value, bill_concession, no_of_copies,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    id,
    '2024-08-06',
    'PADMALAYA',
    'PADMALAYA-INV-53',
    CASE book_code
        WHEN 'BK001' THEN 5975.00   -- 5 × 1195
        WHEN 'BK002' THEN 4475.00   -- 5 × 895
        WHEN 'BK003' THEN 2990.00   -- 2 × 1495
        WHEN 'BK004' THEN 1790.00   -- 2 × 895
        WHEN 'BK005' THEN 1790.00   -- 2 × 895
        WHEN 'BK006' THEN 2970.00   -- 3 × 990
        WHEN 'BK007' THEN 2985.00   -- 3 × 995
        WHEN 'BK008' THEN 3950.00   -- 2 × 1975
    END,
    0.00,
    no_of_copies,
    true, 2, 2, NOW(), NOW()
FROM "Library_librarybook"
WHERE book_code IN ('BK001', 'BK002', 'BK003', 'BK004', 'BK005', 'BK006', 'BK007', 'BK008');

COMMIT;


-- ============================================================================
-- STEP 3: INSERT BARCODES (24 total - sequential from 1000001)
-- ============================================================================

BEGIN;

-- BK001: 5 copies (barcodes 1000001-1000005)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK001'),
    1000000 + n,
    'Available',
    '',
    true, 1, 23, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK002: 5 copies (barcodes 1000006-1000010)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK002'),
    1000005 + n,
    'Available',
    '',
    true, 1, 23, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK003: 2 copies (barcodes 1000011-1000012)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK003'),
    1000010 + n,
    'Available',
    '',
    true, 1, 23, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK004: 2 copies (barcodes 1000013-1000014)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK004'),
    1000012 + n,
    'Available',
    '',
    true, 1, 23, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK005: 2 copies (barcodes 1000015-1000016)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK005'),
    1000014 + n,
    'Available',
    '',
    true, 1, 23, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK006: 3 copies (barcodes 1000017-1000019)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK006'),
    1000016 + n,
    'Available',
    '',
    true, 1, 23, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 3) AS n;

-- BK007: 3 copies (barcodes 1000020-1000022)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK007'),
    1000019 + n,
    'Available',
    '',
    true, 1, 23, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 3) AS n;

-- BK008: 2 copies (barcodes 1000023-1000024)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK008'),
    1000022 + n,
    'Available',
    '',
    true, 1, 23, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

COMMIT;


-- ============================================================================
-- STEP 4: VERIFICATION QUERIES
-- ============================================================================

-- Check books inserted
SELECT 
    book_code, 
    book_name, 
    author, 
    publisher, 
    no_of_copies
FROM "Library_librarybook"
WHERE book_code LIKE 'BK00%'
ORDER BY book_code;

-- Check purchases
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

-- Check barcodes
SELECT 
    lb.book_code,
    lb.no_of_copies,
    COUNT(lbb.id) AS barcode_count,
    MIN(lbb.barcode) AS first_barcode,
    MAX(lbb.barcode) AS last_barcode
FROM "Library_librarybook" lb
LEFT JOIN "Library_librarybooksbarcode" lbb ON lb.id = lbb.book_id
WHERE lb.book_code LIKE 'BK00%'
GROUP BY lb.id, lb.book_code, lb.no_of_copies
ORDER BY lb.book_code;

-- Verify totals match
SELECT 
    COUNT(DISTINCT lb.id) AS total_books,
    SUM(lb.no_of_copies) AS total_from_books,
    SUM(lp.no_of_copies) AS total_from_purchases,
    COUNT(lbb.id) AS total_barcodes
FROM "Library_librarybook" lb
LEFT JOIN "Library_librarypurchase" lp ON lb.id = lp.book_id
LEFT JOIN "Library_librarybooksbarcode" lbb ON lb.id = lbb.book_id
WHERE lb.book_code LIKE 'BK00%';

-- Expected result: 8 books, 24 copies in all three counts, 24 barcodes
