-- ============================================================================
-- FIX SCRIPT: Insert 3 Missing Books from INV-38
-- Missing: BK008, BK055, BK094
-- ============================================================================

BEGIN;

-- BK008: First book (Position 0)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK008', 'ESSENTIALS OF ADULT HEALTH NURS-I', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'D. SETHI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- BK055: Middle book (Position 47 - Serial #47)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK055', 'MEDICAL SURGICAL NURSING(2 VOL.)', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'THOMAS', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- BK094: Last book (Position 86 - Serial #87)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK094', 'A TEXTBOOK OF HEALTH CENTRE MGMT', 29, 46,
    'Active', 5, 1, 1,
    'VIJAYAM', 'G.S. KRISHNA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

COMMIT;

-- ============================================================================
-- Insert Purchase Records
-- ============================================================================

BEGIN;

INSERT INTO "Library_librarypurchase" (
    book_id, purchase_date, purchase_from, bill_no,
    bill_value, bill_concession, no_of_copies,
    is_active, created_by, updated_by, created_at, updated_at
)
VALUES
    ((SELECT id FROM "Library_librarybook" WHERE book_code = 'BK008'), '2024-06-29', 'PADMALAYA', 'PADMALAYA-INV-38', 3975.00, 0, 5, true, 2, 2, NOW(), NOW()),
    ((SELECT id FROM "Library_librarybook" WHERE book_code = 'BK055'), '2024-06-29', 'PADMALAYA', 'PADMALAYA-INV-38', 9475.00, 0, 5, true, 2, 2, NOW(), NOW()),
    ((SELECT id FROM "Library_librarybook" WHERE book_code = 'BK094'), '2024-06-29', 'PADMALAYA', 'PADMALAYA-INV-38', 625.00, 0, 5, true, 2, 2, NOW(), NOW());

COMMIT;

-- ============================================================================
-- Insert Barcodes
-- ============================================================================

BEGIN;

-- BK008: 5 barcodes (1000025-1000029)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK008'),
    1000024 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK055: 5 barcodes (need to find correct starting barcode)
-- First, find where BK054 ends
-- BK054 exists with 5 copies, BK055 is next
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK055'),
    (SELECT MAX(barcode) FROM "Library_librarybooksbarcode" 
     WHERE book_id = (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK054')) + n,
    'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK094: 5 barcodes (should be last, after BK093)
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK094'),
    (SELECT MAX(barcode) FROM "Library_librarybooksbarcode" 
     WHERE book_id = (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK093')) + n,
    'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

COMMIT;

-- ============================================================================
-- Verify
-- ============================================================================

SELECT COUNT(*) AS total_books 
FROM "Library_librarybook" 
WHERE book_code BETWEEN 'BK008' AND 'BK094';
-- Should be 87 now

SELECT book_code, book_name, no_of_copies 
FROM "Library_librarybook" 
WHERE book_code IN ('BK008', 'BK055', 'BK094');
-- Should show all 3 books
