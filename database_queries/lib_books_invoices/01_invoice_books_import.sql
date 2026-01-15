-- ============================================
-- LIBRARY BOOKS IMPORT - INVOICE PURCHASES
-- Source: PADMALAYA Invoices (4 files, 152 books)
-- Generated: 2026-01-13 16:07:28
-- Starting barcode: 1000001485
-- ============================================

-- Book 1/152: Park''s Text book of Preventive And Social Medicine
-- Invoice: 104 (21-08-25) | Barcode: 1000001485
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-001',
    'Park''s Text book of Preventive And Social Medicine',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001485,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-001' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 2/152: A Comprehensive Textbook of Community Health Nursing
-- Invoice: 104 (21-08-25) | Barcode: 1000001486
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-002',
    'A Comprehensive Textbook of Community Health Nursing',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001486,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-002' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 3/152: Community Health Nursing
-- Invoice: 104 (21-08-25) | Barcode: 1000001487
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-003',
    'Community Health Nursing',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001487,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-003' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 4/152: Textbook of Child Health Nursing
-- Invoice: 104 (21-08-25) | Barcode: 1000001488
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-004',
    'Textbook of Child Health Nursing',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001488,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-004' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 5/152: A Quick Reference Guide to child''s growth and Devlopment fo
-- Invoice: 104 (21-08-25) | Barcode: 1000001489
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-005',
    'A Quick Reference Guide to child''s growth and Devlopment for Nurses',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 3, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001489,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-005' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 6/152: Pediatric Nursing Procedures
-- Invoice: 104 (21-08-25) | Barcode: 1000001490
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-006',
    'Pediatric Nursing Procedures',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 3, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001490,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-006' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 7/152: Child Health Nursing : Nursing Process Approcah
-- Invoice: 104 (21-08-25) | Barcode: 1000001491
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-007',
    'Child Health Nursing : Nursing Process Approcah',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 4, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001491,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-007' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 8/152: Pediatric Nursing
-- Invoice: 104 (21-08-25) | Barcode: 1000001492
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-008',
    'Pediatric Nursing',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001492,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-008' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 9/152: Psychiatry for Nurses
-- Invoice: 104 (21-08-25) | Barcode: 1000001493
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-009',
    'Psychiatry for Nurses',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001493,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-009' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 10/152: Essentials of Mental Health and Psychiatric Nursing(2 Vols)
-- Invoice: 104 (21-08-25) | Barcode: 1000001494
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-010',
    'Essentials of Mental Health and Psychiatric Nursing(2 Vols)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001494,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-010' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 11/152: A Guide To Mental Health & Psychiatric Nursing
-- Invoice: 104 (21-08-25) | Barcode: 1000001495
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-011',
    'A Guide To Mental Health & Psychiatric Nursing',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001495,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-011' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 12/152: Foundations of Mental Health Care,      8th Ed.
-- Invoice: 104 (21-08-25) | Barcode: 1000001496
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-012',
    'Foundations of Mental Health Care,      8th Ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001496,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-012' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 13/152: Essentials of Psychiatric Mental Health Nursing: A Communica
-- Invoice: 104 (21-08-25) | Barcode: 1000001497
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-013',
    'Essentials of Psychiatric Mental Health Nursing: A CommunicationApproachto Evidence-Based Care, 5th ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001497,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-013' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 14/152: Manual of Psychiatric Nursing Care Planning,7e
-- Invoice: 104 (21-08-25) | Barcode: 1000001498
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-014',
    'Manual of Psychiatric Nursing Care Planning,7e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001498,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-014' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 15/152: Varcarolis'' Foundations of Psychiatric Mental Health Nursin
-- Invoice: 104 (21-08-25) | Barcode: 1000001499
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-015',
    'Varcarolis'' Foundations of Psychiatric Mental Health Nursing: A Clinical Approach, 8th ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001499,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-015' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 16/152: Communication in Nursing, 10th Ed.
-- Invoice: 104 (21-08-25) | Barcode: 1000001500
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-016',
    'Communication in Nursing, 10th Ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'English' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'English' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001500,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-016' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 17/152: TB On Nursing Research & Statistics
-- Invoice: 104 (21-08-25) | Barcode: 1000001501
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-017',
    'TB On Nursing Research & Statistics',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001501,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-017' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 18/152: Nursing Research & Statistics
-- Invoice: 104 (21-08-25) | Barcode: 1000001502
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-018',
    'Nursing Research & Statistics',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 3, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001502,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-018' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 19/152: Research & Biostatistics for Nurses (Asper INC syllabus)
-- Invoice: 104 (21-08-25) | Barcode: 1000001503
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-019',
    'Research & Biostatistics for Nurses (Asper INC syllabus)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 3, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001503,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-019' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 20/152: Burns & Grove''s The Practice of Nursing Research: Appraisal
-- Invoice: 104 (21-08-25) | Barcode: 1000001504
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-020',
    'Burns & Grove''s The Practice of Nursing Research: Appraisal, Synthesis, & Generation of Evidence, 9e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001504,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-020' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 21/152: Statistics for Nursing Research: A WB for Evidence-Based Pra
-- Invoice: 104 (21-08-25) | Barcode: 1000001505
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-021',
    'Statistics for Nursing Research: A WB for Evidence-Based Practice, 4th Ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001505,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-021' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 22/152: Nursing Research and Statistics, 5th ed.
-- Invoice: 104 (21-08-25) | Barcode: 1000001506
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-022',
    'Nursing Research and Statistics, 5th ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001506,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-022' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 23/152: Core Curriculum for ,Maternal-Newborn Nursing, 6th ed.
-- Invoice: 104 (21-08-25) | Barcode: 1000001507
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-023',
    'Core Curriculum for ,Maternal-Newborn Nursing, 6th ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001507,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-023' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 24/152: The Midwife''s Pocket Formulary,4e
-- Invoice: 104 (21-08-25) | Barcode: 1000001508
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-024',
    'The Midwife''s Pocket Formulary,4e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001508,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-024' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 25/152: Elsevier Clinical Skills Manual Vol.4 OBG Nursing,
-- Invoice: 104 (21-08-25) | Barcode: 1000001509
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-025',
    'Elsevier Clinical Skills Manual Vol.4 OBG Nursing,',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001509,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-025' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 26/152: Anatomy & Physiology for Midwives,4e.
-- Invoice: 104 (21-08-25) | Barcode: 1000001510
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-026',
    'Anatomy & Physiology for Midwives,4e.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Anatomy' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Anatomy' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001510,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-026' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 27/152: Textbook of Obstetrics
-- Invoice: 104 (21-08-25) | Barcode: 1000001511
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-027',
    'Textbook of Obstetrics',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001511,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-027' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 28/152: Fetal Monitoring in Practice,  5th ed.
-- Invoice: 104 (21-08-25) | Barcode: 1000001512
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-028',
    'Fetal Monitoring in Practice,  5th ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001512,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-028' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 29/152: Undergraduate Manual for Clinical Cases in Obstetrics & Gyna
-- Invoice: 104 (21-08-25) | Barcode: 1000001513
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-029',
    'Undergraduate Manual for Clinical Cases in Obstetrics & Gynaecology, 3e.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001513,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-029' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 30/152: Mayes'' Midwifery,16th ed.
-- Invoice: 104 (21-08-25) | Barcode: 1000001514
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-030',
    'Mayes'' Midwifery,16th ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001514,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-030' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 31/152: Physiology in Child bearing: with Anatomy & Related Bioscien
-- Invoice: 104 (21-08-25) | Barcode: 1000001515
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-031',
    'Physiology in Child bearing: with Anatomy & Related Biosciences, 5th ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Anatomy' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Anatomy' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001515,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-031' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 32/152: Myles Survival Guide to Midwifery,3e
-- Invoice: 104 (21-08-25) | Barcode: 1000001516
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-032',
    'Myles Survival Guide to Midwifery,3e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001516,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-032' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 33/152: The Midwives'' Guide to Key Medical Conditions: Pregnancy & 
-- Invoice: 104 (21-08-25) | Barcode: 1000001517
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-033',
    'The Midwives'' Guide to Key Medical Conditions: Pregnancy & Child birth,2e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001517,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-033' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 34/152: Textbook of Midwifery and Obstetrics for Nurses,1e
-- Invoice: 104 (21-08-25) | Barcode: 1000001518
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-034',
    'Textbook of Midwifery and Obstetrics for Nurses,1e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001518,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-034' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 35/152: DC Dutta''s Textbook of Gynecology
-- Invoice: 104 (21-08-25) | Barcode: 1000001519
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-035',
    'DC Dutta''s Textbook of Gynecology',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001519,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-035' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 36/152: DC Dutta''s Textbook of Obstertrics
-- Invoice: 104 (21-08-25) | Barcode: 1000001520
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-036',
    'DC Dutta''s Textbook of Obstertrics',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001520,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-036' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 37/152: MCQs in Midwifery/Obstetrics and Gynecological Nursing
-- Invoice: 104 (21-08-25) | Barcode: 1000001521
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-037',
    'MCQs in Midwifery/Obstetrics and Gynecological Nursing',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001521,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-037' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 38/152: Management of Nursing Services and Education,2nd ed.
-- Invoice: 104 (21-08-25) | Barcode: 1000001522
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-038',
    'Management of Nursing Services and Education,2nd ed.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001522,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-038' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 39/152: Text Book Of Nursing Management And Leadership
-- Invoice: 104 (21-08-25) | Barcode: 1000001523
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-039',
    'Text Book Of Nursing Management And Leadership',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001523,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-039' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 40/152: Text Book of Nursing Management in Service & Education
-- Invoice: 104 (21-08-25) | Barcode: 1000001524
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-040',
    'Text Book of Nursing Management in Service & Education',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001524,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-040' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 41/152: Essentials of management of Nursing Service & Education
-- Invoice: 104 (21-08-25) | Barcode: 1000001525
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-041',
    'Essentials of management of Nursing Service & Education',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001525,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-041' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 42/152: Principles & Practice of Nursing Management & Administration
-- Invoice: 104 (21-08-25) | Barcode: 1000001526
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-042',
    'Principles & Practice of Nursing Management & Administration',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001526,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-042' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 43/152: Textbook of Management & Leadership
-- Invoice: 104 (21-08-25) | Barcode: 1000001527
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-043',
    'Textbook of Management & Leadership',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001527,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-043' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 44/152: Text Book of Nursing Management & Leadership
-- Invoice: 104 (21-08-25) | Barcode: 1000001528
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-044',
    'Text Book of Nursing Management & Leadership',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001528,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-044' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 45/152: Essentials of Forensic Nursing
-- Invoice: 104 (21-08-25) | Barcode: 1000001529
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-045',
    'Essentials of Forensic Nursing',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001529,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-045' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 46/152: Introduction to Forensic Nursing and Indian Laws
-- Invoice: 104 (21-08-25) | Barcode: 1000001530
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV104-046',
    'Introduction to Forensic Nursing and Indian Laws',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001530,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV104-046' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 47/152: Basic Concepts of Community Health Nursing
-- Invoice: 116 (26-08-25) | Barcode: 1000001531
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-001',
    'Basic Concepts of Community Health Nursing',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001531,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-001' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 48/152: Foundations of Population Health for Community/Public Health
-- Invoice: 116 (26-08-25) | Barcode: 1000001532
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-002',
    'Foundations of Population Health for Community/Public Health Nursing, 6e.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001532,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-002' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 49/152: Pediatric Nursing Care Plans
-- Invoice: 116 (26-08-25) | Barcode: 1000001533
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-003',
    'Pediatric Nursing Care Plans',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001533,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-003' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 50/152: Examination of the New born and Neonatal Health: Amultidimen
-- Invoice: 116 (26-08-25) | Barcode: 1000001534
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-004',
    'Examination of the New born and Neonatal Health: Amultidimensional Approach,',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001534,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-004' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 51/152: Midwifery Essentials: Volume 2, Antenatal,2e
-- Invoice: 116 (26-08-25) | Barcode: 1000001535
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-005',
    'Midwifery Essentials: Volume 2, Antenatal,2e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001535,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-005' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 52/152: Midwifery Essentials: Volume 4, Postnatal,2e
-- Invoice: 116 (26-08-25) | Barcode: 1000001536
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-006',
    'Midwifery Essentials: Volume 4, Postnatal,2e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001536,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-006' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 53/152: Midwifery Essentials: Volume 3,Labour, 2e
-- Invoice: 116 (26-08-25) | Barcode: 1000001537
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-007',
    'Midwifery Essentials: Volume 3,Labour, 2e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001537,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-007' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 54/152: Midwifery Essentials: Volume 1, Basics, 2e
-- Invoice: 116 (26-08-25) | Barcode: 1000001538
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-008',
    'Midwifery Essentials: Volume 1, Basics, 2e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001538,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-008' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 55/152: Bailliere''s Midwives''Dictionary, InternationalEdition,14e
-- Invoice: 116 (26-08-25) | Barcode: 1000001539
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-009',
    'Bailliere''s Midwives''Dictionary, InternationalEdition,14e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001539,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-009' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 56/152: Skills for Midwifery Practice, 5TH ED.
-- Invoice: 116 (26-08-25) | Barcode: 1000001540
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-010',
    'Skills for Midwifery Practice, 5TH ED.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001540,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-010' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 57/152: Stories in Midwifery: Reflection,Inquiry, Action,1e
-- Invoice: 116 (26-08-25) | Barcode: 1000001541
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-011',
    'Stories in Midwifery: Reflection,Inquiry, Action,1e',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001541,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-011' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 58/152: Midwifery :  Preparation for Practice,     (2 VOL. SET) 5TH 
-- Invoice: 116 (26-08-25) | Barcode: 1000001542
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV116-012',
    'Midwifery :  Preparation for Practice,     (2 VOL. SET) 5TH ED.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001542,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV116-012' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 59/152: ESSENTIALS OF ADULT HEALTH NURS-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001543
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-001',
    'ESSENTIALS OF ADULT HEALTH NURS-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001543,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-001' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 60/152: ADULT HEALTH NURSING-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001544
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-002',
    'ADULT HEALTH NURSING-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001544,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-002' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 61/152: COMPREHENSIVE TB OF APPLIED MICROBIOLOGY FOR NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001545
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-003',
    'COMPREHENSIVE TB OF APPLIED MICROBIOLOGY FOR NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001545,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-003' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 62/152: TB OF APPLIED MICROBIOLOGY AND INFECTION CONTROL
-- Invoice: 38 (29-06-24) | Barcode: 1000001546
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-004',
    'TB OF APPLIED MICROBIOLOGY AND INFECTION CONTROL',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001546,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-004' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 63/152: ESSENTIALS OF APPLIED MICROBIOLOGY FOR NURSES
-- Invoice: 38 (29-06-24) | Barcode: 1000001547
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-005',
    'ESSENTIALS OF APPLIED MICROBIOLOGY FOR NURSES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001547,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-005' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 64/152: PHARMACOLOGY FOR GRADUATE NURSES
-- Invoice: 38 (29-06-24) | Barcode: 1000001548
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-006',
    'PHARMACOLOGY FOR GRADUATE NURSES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 4, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001548,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-006' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 65/152: TB OF PATHALOGY & GENETICS FOR NURSES
-- Invoice: 38 (29-06-24) | Barcode: 1000001549
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-007',
    'TB OF PATHALOGY & GENETICS FOR NURSES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001549,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-007' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 66/152: JAYPEE''S NURSING DRUG BOOK
-- Invoice: 38 (29-06-24) | Barcode: 1000001550
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-008',
    'JAYPEE''S NURSING DRUG BOOK',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 4, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001550,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-008' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 67/152: SYNOPSIS OF MEDICAL INSTRUMENTS AND PROCEDURES
-- Invoice: 38 (29-06-24) | Barcode: 1000001551
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-009',
    'SYNOPSIS OF MEDICAL INSTRUMENTS AND PROCEDURES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001551,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-009' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 68/152: CLINICAL RECORD BOOK FOR ADULT HEALTH NURSING-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001552
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-010',
    'CLINICAL RECORD BOOK FOR ADULT HEALTH NURSING-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001552,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-010' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 69/152: ADULT HEALTH NURSING-II (MSN)
-- Invoice: 38 (29-06-24) | Barcode: 1000001553
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-011',
    'ADULT HEALTH NURSING-II (MSN)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001553,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-011' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 70/152: ADULT HEALTH NURSING-II (MSN)
-- Invoice: 38 (29-06-24) | Barcode: 1000001554
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-012',
    'ADULT HEALTH NURSING-II (MSN)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001554,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-012' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 71/152: PHARMACOLOGY & PATHOLOGY-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001555
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-013',
    'PHARMACOLOGY & PATHOLOGY-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001555,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-013' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 72/152: PHARMACOLOGY & PATHOLOGY-II
-- Invoice: 38 (29-06-24) | Barcode: 1000001556
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-014',
    'PHARMACOLOGY & PATHOLOGY-II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001556,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-014' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 73/152: TEXTBOOK OF MICROBIOLOGY
-- Invoice: 38 (29-06-24) | Barcode: 1000001557
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-015',
    'TEXTBOOK OF MICROBIOLOGY',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001557,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-015' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 74/152: PHARMACOLOGY-I & II
-- Invoice: 38 (29-06-24) | Barcode: 1000001558
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-016',
    'PHARMACOLOGY-I & II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001558,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-016' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 75/152: TEXTBOOK OF PATHOLOGY -I & II
-- Invoice: 38 (29-06-24) | Barcode: 1000001559
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-017',
    'TEXTBOOK OF PATHOLOGY -I & II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001559,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-017' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 76/152: GENETICS (4TH SEM)
-- Invoice: 38 (29-06-24) | Barcode: 1000001560
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-018',
    'GENETICS (4TH SEM)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001560,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-018' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 77/152: ADULT HEALTH NURSING-I (MSN)
-- Invoice: 38 (29-06-24) | Barcode: 1000001561
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-019',
    'ADULT HEALTH NURSING-I (MSN)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001561,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-019' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 78/152: PROFESSIONALISM PROFESSIONAL VALUES & ETHICS INCLUDING BIOET
-- Invoice: 38 (29-06-24) | Barcode: 1000001562
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-020',
    'PROFESSIONALISM PROFESSIONAL VALUES & ETHICS INCLUDING BIOETHI..',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001562,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-020' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 79/152: PROFESSIONALISM PROFESSIONAL VALUES & ETHICS INCLUDING BIOET
-- Invoice: 38 (29-06-24) | Barcode: 1000001563
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-021',
    'PROFESSIONALISM PROFESSIONAL VALUES & ETHICS INCLUDING BIOETHI..',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001563,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-021' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 80/152: TB OF APPLIED MICROBIOLOGY FOR NURSES
-- Invoice: 38 (29-06-24) | Barcode: 1000001564
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-022',
    'TB OF APPLIED MICROBIOLOGY FOR NURSES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001564,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-022' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 81/152: TB OF APPLIED MICROBIOLOGY, INFECTION CONTROL & SAFETY
-- Invoice: 38 (29-06-24) | Barcode: 1000001565
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-023',
    'TB OF APPLIED MICROBIOLOGY, INFECTION CONTROL & SAFETY',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001565,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-023' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 82/152: ADULT HEALTH NURSING-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001566
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-024',
    'ADULT HEALTH NURSING-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001566,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-024' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 83/152: TEXTBOOK OF PHARMACOLOGY-I & II
-- Invoice: 38 (29-06-24) | Barcode: 1000001567
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-025',
    'TEXTBOOK OF PHARMACOLOGY-I & II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001567,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-025' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 84/152: ADULT HEALTH NURSING-II
-- Invoice: 38 (29-06-24) | Barcode: 1000001568
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-026',
    'ADULT HEALTH NURSING-II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001568,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-026' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 85/152: PRACTICAL RECORD BOOK FOR ADULT HEALTH NURSING-II
-- Invoice: 38 (29-06-24) | Barcode: 1000001569
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-027',
    'PRACTICAL RECORD BOOK FOR ADULT HEALTH NURSING-II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001569,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-027' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 86/152: MICROBIOLOGY FOR NURSES
-- Invoice: 38 (29-06-24) | Barcode: 1000001570
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-028',
    'MICROBIOLOGY FOR NURSES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001570,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-028' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 87/152: PHARMACOLOGY FOR NURSES
-- Invoice: 38 (29-06-24) | Barcode: 1000001571
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-029',
    'PHARMACOLOGY FOR NURSES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001571,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-029' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 88/152: BLACK''S ADULT HEALTH NURSING-I & II
-- Invoice: 38 (29-06-24) | Barcode: 1000001572
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-030',
    'BLACK''S ADULT HEALTH NURSING-I & II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001572,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-030' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 89/152: APPLIED MICROBIOLGY & INFECTION CONTROL (INCLUDING SAFETY)
-- Invoice: 38 (29-06-24) | Barcode: 1000001573
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-031',
    'APPLIED MICROBIOLGY & INFECTION CONTROL (INCLUDING SAFETY)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001573,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-031' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 90/152: CHILD HEALTH NUIRSING, 3RD SEM.
-- Invoice: 38 (29-06-24) | Barcode: 1000001574
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-032',
    'CHILD HEALTH NUIRSING, 3RD SEM.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001574,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-032' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 91/152: APPLIED MICROBIOLOGY
-- Invoice: 38 (29-06-24) | Barcode: 1000001575
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-033',
    'APPLIED MICROBIOLOGY',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001575,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-033' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 92/152: ADULT HEALTH NURSING-I, (MSN)
-- Invoice: 38 (29-06-24) | Barcode: 1000001576
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-034',
    'ADULT HEALTH NURSING-I, (MSN)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001576,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-034' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 93/152: TEXTBOOK OF MENTAL HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001577
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-035',
    'TEXTBOOK OF MENTAL HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001577,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-035' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 94/152: APPLIED MICROBIOLOGY, 3RD SEM.
-- Invoice: 38 (29-06-24) | Barcode: 1000001578
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-036',
    'APPLIED MICROBIOLOGY, 3RD SEM.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Microbiology' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001578,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-036' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 95/152: PHARMACOLOGY, 3RD & 4TH SEM.
-- Invoice: 38 (29-06-24) | Barcode: 1000001579
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-037',
    'PHARMACOLOGY, 3RD & 4TH SEM.',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001579,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-037' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 96/152: ADULT HEALTH NURSING-I & II (SET)
-- Invoice: 38 (29-06-24) | Barcode: 1000001580
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-038',
    'ADULT HEALTH NURSING-I & II (SET)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001580,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-038' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 97/152: ADULT HEALTH NURSING-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001581
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-039',
    'ADULT HEALTH NURSING-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001581,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-039' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 98/152: PHARMACOLOGY-II
-- Invoice: 38 (29-06-24) | Barcode: 1000001582
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-040',
    'PHARMACOLOGY-II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001582,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-040' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 99/152: PATHOLOGY & GENETICS-II
-- Invoice: 38 (29-06-24) | Barcode: 1000001583
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-041',
    'PATHOLOGY & GENETICS-II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001583,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-041' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 100/152: ADULT HEALTH NURSING-II
-- Invoice: 38 (29-06-24) | Barcode: 1000001584
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-042',
    'ADULT HEALTH NURSING-II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001584,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-042' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 101/152: APPLIED MICROBIOLGY & INFECTION CONTROL (INCLUDING SAFETY)
-- Invoice: 38 (29-06-24) | Barcode: 1000001585
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-043',
    'APPLIED MICROBIOLGY & INFECTION CONTROL (INCLUDING SAFETY)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001585,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-043' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 102/152: PHARMACOLOGY-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001586
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-044',
    'PHARMACOLOGY-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001586,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-044' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 103/152: PATHOLOGY-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001587
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-045',
    'PATHOLOGY-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001587,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-045' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 104/152: PROFESSIONALISM PROFESSIONAL VALUES & ETHICS
-- Invoice: 38 (29-06-24) | Barcode: 1000001588
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-046',
    'PROFESSIONALISM PROFESSIONAL VALUES & ETHICS',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001588,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-046' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 105/152: MEDICAL SURGICAL NURSING(2 VOL.)
-- Invoice: 38 (29-06-24) | Barcode: 1000001589
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-047',
    'MEDICAL SURGICAL NURSING(2 VOL.)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001589,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-047' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 106/152: MEDICAL SURGICAL NURSING(2 VOL.)
-- Invoice: 38 (29-06-24) | Barcode: 1000001590
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-048',
    'MEDICAL SURGICAL NURSING(2 VOL.)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001590,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-048' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 107/152: MEDICAL SURGICAL NURSING(2 VOL.)
-- Invoice: 38 (29-06-24) | Barcode: 1000001591
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-049',
    'MEDICAL SURGICAL NURSING(2 VOL.)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001591,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-049' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 108/152: ESSENTIALS OF PEDIATRIC NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001592
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-050',
    'ESSENTIALS OF PEDIATRIC NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001592,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-050' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 109/152: PEDIATRIC NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001593
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-051',
    'PEDIATRIC NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001593,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-051' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 110/152: TEXTBOOK OF CHILD HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001594
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-052',
    'TEXTBOOK OF CHILD HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001594,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-052' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 111/152: PEDIATRIC NEONATAL NURSING MANUAL
-- Invoice: 38 (29-06-24) | Barcode: 1000001595
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-053',
    'PEDIATRIC NEONATAL NURSING MANUAL',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001595,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-053' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 112/152: PEDIATRIC DRUG DOSES
-- Invoice: 38 (29-06-24) | Barcode: 1000001596
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-054',
    'PEDIATRIC DRUG DOSES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001596,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-054' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 113/152: PEDIATRIC NURSING PROCEDURES
-- Invoice: 38 (29-06-24) | Barcode: 1000001597
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-055',
    'PEDIATRIC NURSING PROCEDURES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001597,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-055' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 114/152: CHILD HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001598
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-056',
    'CHILD HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001598,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-056' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 115/152: PEDIATRIC NURSING PROCEDURE MANUAL
-- Invoice: 38 (29-06-24) | Barcode: 1000001599
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-057',
    'PEDIATRIC NURSING PROCEDURE MANUAL',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001599,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-057' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 116/152: TEXTBOOK OF PSYCHIATRIC NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001600
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-058',
    'TEXTBOOK OF PSYCHIATRIC NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001600,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-058' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 117/152: ESSENTIALS OF MENTAL HEALTH & PSYCHIATRIC NURSING (2VOL)
-- Invoice: 38 (29-06-24) | Barcode: 1000001601
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-059',
    'ESSENTIALS OF MENTAL HEALTH & PSYCHIATRIC NURSING (2VOL)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001601,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-059' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 118/152: PSYCHIATRIC FOR NURSES
-- Invoice: 38 (29-06-24) | Barcode: 1000001602
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-060',
    'PSYCHIATRIC FOR NURSES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001602,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-060' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 119/152: MENTAL HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001603
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-061',
    'MENTAL HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001603,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-061' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 120/152: MEDICAL SURGICAL NURSING-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001604
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-062',
    'MEDICAL SURGICAL NURSING-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001604,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-062' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 121/152: MEDICAL SURGICAL NURSING-II
-- Invoice: 38 (29-06-24) | Barcode: 1000001605
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-063',
    'MEDICAL SURGICAL NURSING-II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001605,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-063' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 122/152: CHILD HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001606
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-064',
    'CHILD HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001606,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-064' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 123/152: MEDICAL SURGICAL NURSING-I, II
-- Invoice: 38 (29-06-24) | Barcode: 1000001607
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-065',
    'MEDICAL SURGICAL NURSING-I, II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001607,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-065' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 124/152: EXAM BOOSTER FOR GNM, VOL.-3
-- Invoice: 38 (29-06-24) | Barcode: 1000001608
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-066',
    'EXAM BOOSTER FOR GNM, VOL.-3',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001608,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-066' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 125/152: TB OF GENERAL NURSING & MIDWIFERY
-- Invoice: 38 (29-06-24) | Barcode: 1000001609
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-067',
    'TB OF GENERAL NURSING & MIDWIFERY',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 3, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001609,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-067' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 126/152: TEXTBOOK OF PSYCHIATRIC NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001610
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-068',
    'TEXTBOOK OF PSYCHIATRIC NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001610,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-068' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 127/152: A TB OF MEDICAL SURGICAL NURSING-I
-- Invoice: 38 (29-06-24) | Barcode: 1000001611
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-069',
    'A TB OF MEDICAL SURGICAL NURSING-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001611,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-069' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 128/152: A TB OF MEDICAL SURGICAL NURSING-II
-- Invoice: 38 (29-06-24) | Barcode: 1000001612
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-070',
    'A TB OF MEDICAL SURGICAL NURSING-II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001612,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-070' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 129/152: A TB OF MENTAL HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001613
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-071',
    'A TB OF MENTAL HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001613,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-071' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 130/152: A TB OF CHILD HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001614
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-072',
    'A TB OF CHILD HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001614,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-072' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 131/152: MENTAL HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001615
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-073',
    'MENTAL HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001615,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-073' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 132/152: MEDICAL SURGICAL NURSING-I & II (SET)
-- Invoice: 38 (29-06-24) | Barcode: 1000001616
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-074',
    'MEDICAL SURGICAL NURSING-I & II (SET)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001616,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-074' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 133/152: MENTAL HEALTH & PSYCHIATRIC NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001617
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-075',
    'MENTAL HEALTH & PSYCHIATRIC NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001617,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-075' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 134/152: A TB OF MIDWIFERY & GYNAEOCOLGICAL NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001618
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-076',
    'A TB OF MIDWIFERY & GYNAEOCOLGICAL NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001618,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-076' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 135/152: MIDWIFERY FOR NURSES
-- Invoice: 38 (29-06-24) | Barcode: 1000001619
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-077',
    'MIDWIFERY FOR NURSES',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001619,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-077' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 136/152: COMMUNITY HEALTH NURSING-II
-- Invoice: 38 (29-06-24) | Barcode: 1000001620
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-078',
    'COMMUNITY HEALTH NURSING-II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Community Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001620,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-078' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 137/152: MEDICAL SURGICAL NURSING(COLORED)
-- Invoice: 38 (29-06-24) | Barcode: 1000001621
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-079',
    'MEDICAL SURGICAL NURSING(COLORED)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001621,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-079' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 138/152: MEDICAL SURGICAL NURSING(B/W)
-- Invoice: 38 (29-06-24) | Barcode: 1000001622
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-080',
    'MEDICAL SURGICAL NURSING(B/W)',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001622,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-080' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 139/152: MEDICAL SURGICAL NURSING -I
-- Invoice: 38 (29-06-24) | Barcode: 1000001623
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-081',
    'MEDICAL SURGICAL NURSING -I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001623,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-081' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 140/152: MEDICAL SURGICAL NURSING -II
-- Invoice: 38 (29-06-24) | Barcode: 1000001624
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-082',
    'MEDICAL SURGICAL NURSING -II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001624,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-082' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 141/152: MENTAL HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001625
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-083',
    'MENTAL HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Mental Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001625,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-083' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 142/152: CHILD HEALTH NURSING
-- Invoice: 38 (29-06-24) | Barcode: 1000001626
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-084',
    'CHILD HEALTH NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Child Health Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001626,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-084' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 143/152: MIDWIFERY & HEALTH CENTRE MGMT
-- Invoice: 38 (29-06-24) | Barcode: 1000001627
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-085',
    'MIDWIFERY & HEALTH CENTRE MGMT',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001627,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-085' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 144/152: A TEXTBOOK OF MIDWIFERY
-- Invoice: 38 (29-06-24) | Barcode: 1000001628
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-086',
    'A TEXTBOOK OF MIDWIFERY',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001628,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-086' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 145/152: A TEXTBOOK OF HEALTH CENTRE MGMT
-- Invoice: 38 (29-06-24) | Barcode: 1000001629
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV38-087',
    'A TEXTBOOK OF HEALTH CENTRE MGMT',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001629,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV38-087' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 146/152: TB OF ADULT HEALTH NURSING-I
-- Invoice: 53 (06-08-24) | Barcode: 1000001630
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV53-001',
    'TB OF ADULT HEALTH NURSING-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001630,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV53-001' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 147/152: TEXTBOOK OF PATHOLOGY, GENETICS & PHARMACOLOGY-I
-- Invoice: 53 (06-08-24) | Barcode: 1000001631
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV53-002',
    'TEXTBOOK OF PATHOLOGY, GENETICS & PHARMACOLOGY-I',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001631,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV53-002' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 148/152: MOSBY''S 2024 NURSING DRG REFERENCE
-- Invoice: 53 (06-08-24) | Barcode: 1000001632
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV53-003',
    'MOSBY''S 2024 NURSING DRG REFERENCE',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001632,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV53-003' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 149/152: TEXTBOOK OF PATHOLOGY & GENETICS IN NURSING
-- Invoice: 53 (06-08-24) | Barcode: 1000001633
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV53-004',
    'TEXTBOOK OF PATHOLOGY & GENETICS IN NURSING',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 1, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001633,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV53-004' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 150/152: LEWIS -MEDICAL SURGICAL NURING-I, II
-- Invoice: 53 (06-08-24) | Barcode: 1000001634
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV53-005',
    'LEWIS -MEDICAL SURGICAL NURING-I, II',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Medical-Surgical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001634,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV53-005' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 151/152: HANDBOOK OF INSTRUMENTS
-- Invoice: 53 (06-08-24) | Barcode: 1000001635
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV53-006',
    'HANDBOOK OF INSTRUMENTS',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'General Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 5, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001635,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV53-006' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- Book 152/152: TB OF GENERAL NURSING & MIDWIFERY
-- Invoice: 53 (06-08-24) | Barcode: 1000001636
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    library_branch_id, book_status, no_of_copies, organization_id, batch_id,
    barcode_auto_generated, academic_year_id, allow_issue, type, is_active,
    created_by, created_at, updated_at
) VALUES (
    'INV53-007',
    'TB OF GENERAL NURSING & MIDWIFERY',
    (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1),
    (SELECT id FROM "Library_booksubcategory" WHERE category_id = (SELECT id FROM "Library_bookcategory" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND category_name = 'Midwifery and Obstetrical Nursing' LIMIT 1) AND sub_category_name = 'General' LIMIT 1),
    (SELECT library_branch FROM "LibraryBranch" WHERE organization_id = 1 AND batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1) AND library_branch_name = 'Main Library' LIMIT 1),
    'Available', 2, 1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 1, 'Y', 'book', TRUE, 0, NOW(), NOW()
);

INSERT INTO "Library_librarybooksbarcode" (
    barcode, book_id, book_barcode_status, barcode_auto_generated,
    organization_id, batch_id, is_active, created_by, created_at, updated_at
) VALUES (
    1000001636,
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'INV53-007' LIMIT 1),
    'Available', TRUE,
    1,
    (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1),
    TRUE, 0, NOW(), NOW()
);

-- ============================================
-- VERIFICATION QUERIES
-- ============================================
SELECT 'Invoice Books' as check_item, COUNT(*) as count FROM "Library_librarybook"
WHERE book_code LIKE 'INV%';