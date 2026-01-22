-- ================================================================================
-- INV-116 LIBRARY BOOKS IMPORT - FINAL INVOICE
-- Generated: 2026-01-22 18:33:48
-- Invoice: PADMALAYA-INV-116 | Date: 2025-08-26
-- Total Books: 12 | Total Copies: 22
-- ================================================================================

-- book_codes: BK141 to BK152
-- barcodes: 1000541 to 1000562

-- ================================================================================
-- STEP 1: INSERT BOOKS (12 books)
-- ================================================================================

BEGIN;

-- Book 1: Basic Concepts of Community Health Nursing... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK141', 'Basic Concepts of Community Health Nursing', 29, 46,
    'Active', 1, 1, 1,
    'Jaypee', 'Clement', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 2: Foundations of Population Health for Community/Pub... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK142', 'Foundations of Population Health for Community/Public Health Nursing, 6e.', 29, 46,
    'Active', 2, 1, 1,
    'Elsevier', 'Stanhope', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 3: Pediatric Nursing Care Plans... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK143', 'Pediatric Nursing Care Plans', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Beevi', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 4: Examination of the New born and Neonatal Health: A... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK144', 'Examination of the New born and Neonatal Health: Amultidimensional Approach,', 29, 46,
    'Active', 1, 1, 1,
    'Elsevier', 'Davies', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 5: Midwifery Essentials: Volume 2, Antenatal,2e... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK145', 'Midwifery Essentials: Volume 2, Antenatal,2e', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Baston', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 6: Midwifery Essentials: Volume 4, Postnatal,2e... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK146', 'Midwifery Essentials: Volume 4, Postnatal,2e', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Baston', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 7: Midwifery Essentials: Volume 3,Labour, 2e... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK147', 'Midwifery Essentials: Volume 3,Labour, 2e', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Baston', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 8: Midwifery Essentials: Volume 1, Basics, 2e... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK148', 'Midwifery Essentials: Volume 1, Basics, 2e', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Baston', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 9: Bailliere''s Midwives''Dictionary, InternationalEd... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK149', 'Bailliere''s Midwives''Dictionary, InternationalEdition,14e', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Tiran', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 10: Skills for Midwifery Practice, 5TH ED.... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK150', 'Skills for Midwifery Practice, 5TH ED.', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Johnson', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 11: Stories in Midwifery: Reflection,Inquiry, Action,1... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK151', 'Stories in Midwifery: Reflection,Inquiry, Action,1e', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Catling', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 12: Midwifery :  Preparation for Practice,     (2 VOL.... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK152', 'Midwifery :  Preparation for Practice,     (2 VOL. SET) 5TH ED.', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Pairman', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

COMMIT;

-- ================================================================================
-- STEP 2: INSERT PURCHASES (12 records)
-- ================================================================================

BEGIN;

INSERT INTO "Library_librarypurchase" (
    book_id, purchase_date, purchase_from, bill_no,
    bill_value, bill_concession, no_of_copies,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT id, '2025-08-26', 'PADMALAYA', 'PADMALAYA-INV-116',
    CASE book_code
        WHEN 'BK141' THEN 1425.00
        WHEN 'BK142' THEN 253.98
        WHEN 'BK143' THEN 1990.00
        WHEN 'BK144' THEN 43.99
        WHEN 'BK145' THEN 33.90
        WHEN 'BK146' THEN 33.90
        WHEN 'BK147' THEN 33.90
        WHEN 'BK148' THEN 33.90
        WHEN 'BK149' THEN 33.98
        WHEN 'BK150' THEN 99.98
        WHEN 'BK151' THEN 137.90
        WHEN 'BK152' THEN 233.98
    END, 0.00, no_of_copies,
    true, 2, 2, NOW(), NOW()
FROM "Library_librarybook"
WHERE book_code IN (
    'BK141', 'BK142', 'BK143', 'BK144', 'BK145', 'BK146', 'BK147', 'BK148', 'BK149', 'BK150',
    'BK151', 'BK152'
);

COMMIT;

-- ================================================================================
-- STEP 3: INSERT BARCODES (22 barcodes)
-- ================================================================================

BEGIN;

-- BK141: 1 copies (Basic Concepts of Community He...) - Barcodes 1000541-1000541
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK141'),
    1000541, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK142: 2 copies (Foundations of Population Heal...) - Barcodes 1000542-1000543
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK142'),
    1000541 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK143: 2 copies (Pediatric Nursing Care Plans...) - Barcodes 1000544-1000545
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK143'),
    1000543 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK144: 1 copies (Examination of the New born an...) - Barcodes 1000546-1000546
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK144'),
    1000546, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK145: 2 copies (Midwifery Essentials: Volume 2...) - Barcodes 1000547-1000548
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK145'),
    1000546 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK146: 2 copies (Midwifery Essentials: Volume 4...) - Barcodes 1000549-1000550
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK146'),
    1000548 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK147: 2 copies (Midwifery Essentials: Volume 3...) - Barcodes 1000551-1000552
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK147'),
    1000550 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK148: 2 copies (Midwifery Essentials: Volume 1...) - Barcodes 1000553-1000554
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK148'),
    1000552 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK149: 2 copies (Bailliere's Midwives'Dictionar...) - Barcodes 1000555-1000556
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK149'),
    1000554 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK150: 2 copies (Skills for Midwifery Practice,...) - Barcodes 1000557-1000558
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK150'),
    1000556 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK151: 2 copies (Stories in Midwifery: Reflecti...) - Barcodes 1000559-1000560
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK151'),
    1000558 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK152: 2 copies (Midwifery :  Preparation for P...) - Barcodes 1000561-1000562
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK152'),
    1000560 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

COMMIT;

-- ================================================================================
-- VERIFICATION
-- ================================================================================

SELECT 
    (SELECT COUNT(*) FROM "Library_librarybook" WHERE book_code BETWEEN 'BK141' AND 'BK152') AS total_books,
    (SELECT SUM(no_of_copies) FROM "Library_librarybook" WHERE book_code BETWEEN 'BK141' AND 'BK152') AS total_copies,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode" WHERE book_id IN 
        (SELECT id FROM "Library_librarybook" WHERE book_code BETWEEN 'BK141' AND 'BK152')) AS total_barcodes;

-- Expected: 12 books, 22 copies, 22 barcodes

-- ================================================================================
-- FINAL SUMMARY - ALL 4 INVOICES
-- ================================================================================
SELECT 
    (SELECT COUNT(*) FROM "Library_librarybook") AS total_books_all,
    (SELECT SUM(no_of_copies) FROM "Library_librarybook") AS total_copies_all,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode") AS total_barcodes_all;

-- Expected final totals:
-- INV-53:  7 books, 24 copies
-- INV-38:  87 books, 428 copies
-- INV-104: 46 books, 98 copies
-- INV-116: 12 books, 22 copies
-- TOTAL:   152 books, 572 copies

-- ================================================================================
-- 🎉 ALL LIBRARY BOOKS IMPORTED! 🎉
-- ================================================================================