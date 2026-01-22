-- ============================================================================
-- INV-53 LIBRARY BOOKS IMPORT - CORRECTED (7 BOOKS)
-- Generated: 2026-01-22
-- Invoice: PADMALAYA-INV-53 | Date: 06-08-2024
-- Total Books: 7 | Total Copies: 24
-- ============================================================================

-- VALUES:
-- academic_year_id = 25 | batch_id = 1 | course_id = 14 | department_id = 12
-- category_id = 29 (Nursing) | subcategory_id = 46 (Nursing)
-- library_branch_id = 2 | org_id = 1 | created_by = 2
-- book_codes: BK001-BK007 | barcodes: 1000001-1000024

-- ============================================================================
-- STEP 1: INSERT BOOKS (7 books)
-- ============================================================================

BEGIN;

-- Book 1: TB OF ADULT HEALTH NURSING-I (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK001', 'TB OF ADULT HEALTH NURSING-I', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'I. CLEMENT', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 2: TEXTBOOK OF PATHOLOGY, GENETICS & PHARMACOLOGY-I (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK002', 'TEXTBOOK OF PATHOLOGY, GENETICS & PHARMACOLOGY-I', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'KRISHNARAJ', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 3: MOSBY'S 2024 NURSING DRG REFERENCE (1 copy)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK003', 'MOSBY''S 2024 NURSING DRG REFERENCE', 29, 46,
    'Active', 1, 1, 1,
    'ELSEVIER', 'ROTH', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 4: TEXTBOOK OF PATHOLOGY & GENETICS IN NURSING (1 copy)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK004', 'TEXTBOOK OF PATHOLOGY & GENETICS IN NURSING', 29, 46,
    'Active', 1, 1, 1,
    'ELSEVIER', 'SHARMA', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 5: LEWIS -MEDICAL SURGICAL NURING-I, II (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK005', 'LEWIS -MEDICAL SURGICAL NURING-I, II', 29, 46,
    'Active', 5, 1, 1,
    'ELSEVIER', 'CHINTAMANI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 6: HANDBOOK OF INSTRUMENTS (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK006', 'HANDBOOK OF INSTRUMENTS', 29, 46,
    'Active', 5, 1, 1,
    'ELSEVIER', 'KAPUR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 7: TB OF GENERAL NURSING & MIDWIFERY (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK007', 'TB OF GENERAL NURSING & MIDWIFERY', 29, 46,
    'Active', 2, 1, 1,
    'EMMESS', 'N. CLEMENT', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

COMMIT;


-- ============================================================================
-- STEP 2: INSERT PURCHASE RECORDS (7 records)
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
        WHEN 'BK001' THEN 5975.00   -- 5 × ₹1,195
        WHEN 'BK002' THEN 4475.00   -- 5 × ₹895
        WHEN 'BK003' THEN 1885.00   -- 1 × ₹1,885
        WHEN 'BK004' THEN 745.00    -- 1 × ₹745
        WHEN 'BK005' THEN 14925.00  -- 5 × ₹2,985
        WHEN 'BK006' THEN 2325.00   -- 5 × ₹465
        WHEN 'BK007' THEN 3950.00   -- 2 × ₹1,975
    END,
    0.00,
    no_of_copies,
    true, 2, 2, NOW(), NOW()
FROM "Library_librarybook"
WHERE book_code IN ('BK001', 'BK002', 'BK003', 'BK004', 'BK005', 'BK006', 'BK007');

COMMIT;


-- ============================================================================
-- STEP 3: INSERT BARCODES (24 sequential barcodes: 1000001-1000024)
-- ============================================================================

BEGIN;

-- BK001: 5 copies (barcodes 1000001-1000005)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK001'),
    1000000 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK002: 5 copies (barcodes 1000006-1000010)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK002'),
    1000005 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK003: 1 copy (barcode 1000011)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK003'),
    1000011, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK004: 1 copy (barcode 1000012)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK004'),
    1000012, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK005: 5 copies (barcodes 1000013-1000017)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK005'),
    1000012 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK006: 5 copies (barcodes 1000018-1000022)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK006'),
    1000017 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK007: 2 copies (barcodes 1000023-1000024)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK007'),
    1000022 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

COMMIT;


-- ============================================================================
-- STEP 4: VERIFICATION QUERIES
-- ============================================================================

-- Check books
SELECT book_code, book_name, author, publisher, no_of_copies
FROM "Library_librarybook"
WHERE book_code LIKE 'BK00%'
ORDER BY book_code;

-- Check purchases
SELECT lb.book_code, lp.purchase_date, lp.purchase_from, lp.bill_no, 
       lp.no_of_copies, lp.bill_value
FROM "Library_librarypurchase" lp
JOIN "Library_librarybook" lb ON lp.book_id = lb.id
WHERE lb.book_code LIKE 'BK00%'
ORDER BY lb.book_code;

-- Check barcodes
SELECT lb.book_code, lb.no_of_copies, 
       COUNT(lbb.id) AS barcode_count,
       MIN(lbb.barcode) AS first_barcode,
       MAX(lbb.barcode) AS last_barcode
FROM "Library_librarybook" lb
LEFT JOIN "Library_librarybooksbarcode" lbb ON lb.id = lbb.book_id
WHERE lb.book_code LIKE 'BK00%'
GROUP BY lb.id, lb.book_code, lb.no_of_copies
ORDER BY lb.book_code;

-- Final totals
SELECT COUNT(DISTINCT lb.id) AS total_books,
       SUM(lb.no_of_copies) AS total_copies_from_books,
       SUM(lp.no_of_copies) AS total_copies_from_purchases,
       COUNT(lbb.id) AS total_barcodes
FROM "Library_librarybook" lb
LEFT JOIN "Library_librarypurchase" lp ON lb.id = lp.book_id
LEFT JOIN "Library_librarybooksbarcode" lbb ON lb.id = lbb.book_id
WHERE lb.book_code LIKE 'BK00%';

-- Expected: 7 books, 24 in all counts

-- ============================================================================
-- INV-53 COMPLETED: 7 Books | 24 Copies | Total: ₹34,280
-- ============================================================================
