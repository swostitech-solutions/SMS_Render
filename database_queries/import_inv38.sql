-- ================================================================================
-- INV-38 LIBRARY BOOKS IMPORT
-- Generated: 2026-01-22 13:58:54
-- Invoice: PADMALAYA-INV-38 | Date: 2024-06-29
-- Total Books: 87 | Total Copies: 428
-- ================================================================================

-- VALUES USED:
-- category_id = 29
-- subcategory_id = 46
-- library_branch_id = 2
-- academic_year_id = 25
-- org_id = 1
-- batch_id = 1
-- created_by = 2
-- book_codes: BK008 to BK094
-- barcodes: 1000025 to 1000452

-- ================================================================================
-- STEP 1: INSERT BOOKS (87 books)
-- ================================================================================

BEGIN;

-- Book 2: ESSENTIALS OF ADULT HEALTH NURS-I... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK009', 'ESSENTIALS OF ADULT HEALTH NURS-I', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'D. SETHI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 3: ADULT HEALTH NURSING-I ... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK010', 'ADULT HEALTH NURSING-I ', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', '', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 4: COMPREHENSIVE TB OF APPLIED MICROBIOLOGY FOR NURSI... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK011', 'COMPREHENSIVE TB OF APPLIED MICROBIOLOGY FOR NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'U. BHUMBLA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 5: TB OF APPLIED MICROBIOLOGY AND INFECTION CONTROL... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK012', 'TB OF APPLIED MICROBIOLOGY AND INFECTION CONTROL', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'I CLEMENT', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 6: ESSENTIALS OF APPLIED MICROBIOLOGY FOR NURSES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK013', 'ESSENTIALS OF APPLIED MICROBIOLOGY FOR NURSES', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'SASTRY', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 7: PHARMACOLOGY FOR GRADUATE NURSES... (4 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK014', 'PHARMACOLOGY FOR GRADUATE NURSES', 29, 46,
    'Active', 4, 1, 1,
    'JAYPEE', 'SARKAR', NULL, 4, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 8: TB OF PATHALOGY & GENETICS FOR NURSES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK015', 'TB OF PATHALOGY & GENETICS FOR NURSES', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'NAYAK', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 9: JAYPEE''S NURSING DRUG BOOK... (4 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK016', 'JAYPEE''S NURSING DRUG BOOK', 29, 46,
    'Active', 4, 1, 1,
    'JAYPEE', 'S. SHARMA', NULL, 4, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 10: SYNOPSIS OF MEDICAL INSTRUMENTS AND PROCEDURES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK017', 'SYNOPSIS OF MEDICAL INSTRUMENTS AND PROCEDURES', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'YADAV', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 11: CLINICAL RECORD BOOK FOR ADULT HEALTH NURSING-I... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK018', 'CLINICAL RECORD BOOK FOR ADULT HEALTH NURSING-I', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'D. SETHI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 12: ADULT HEALTH NURSING-II (MSN)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK019', 'ADULT HEALTH NURSING-II (MSN)', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'M. KUMARI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 13: ADULT HEALTH NURSING-II (MSN)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK020', 'ADULT HEALTH NURSING-II (MSN)', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'S. KAUR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 14: PHARMACOLOGY & PATHOLOGY-I... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK021', 'PHARMACOLOGY & PATHOLOGY-I', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', '', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 15: PHARMACOLOGY & PATHOLOGY-II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK022', 'PHARMACOLOGY & PATHOLOGY-II', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', '', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 16: TEXTBOOK OF MICROBIOLOGY... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK023', 'TEXTBOOK OF MICROBIOLOGY', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'S.KUMAR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 17: PHARMACOLOGY-I & II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK024', 'PHARMACOLOGY-I & II', 29, 46,
    'Active', 5, 1, 1,
    'FRONTLINE', 'S. MATHUR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 18: TEXTBOOK OF PATHOLOGY -I & II ... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK025', 'TEXTBOOK OF PATHOLOGY -I & II ', 29, 46,
    'Active', 5, 1, 1,
    'FRONTLINE', 'T. BHOPAL', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 19: GENETICS (4TH SEM)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK026', 'GENETICS (4TH SEM)', 29, 46,
    'Active', 5, 1, 1,
    'FRONTLINE', 'AYESHA ALVI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 20: ADULT HEALTH NURSING-I (MSN)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK027', 'ADULT HEALTH NURSING-I (MSN)', 29, 46,
    'Active', 5, 1, 1,
    'FRONTLINE', 'V. SHARMA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 21: PROFESSIONALISM PROFESSIONAL VALUES & ETHICS INCLU... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK028', 'PROFESSIONALISM PROFESSIONAL VALUES & ETHICS INCLUDING BIOETHI..', 29, 46,
    'Active', 5, 1, 1,
    'FRONTLINE', 'S. ARYA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 22: PROFESSIONALISM PROFESSIONAL VALUES & ETHICS INCLU... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK029', 'PROFESSIONALISM PROFESSIONAL VALUES & ETHICS INCLUDING BIOETHI..', 29, 46,
    'Active', 5, 1, 1,
    'FRONTLINE', 'GANAPRASUNNA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 23: TB OF APPLIED MICROBIOLOGY FOR NURSES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK030', 'TB OF APPLIED MICROBIOLOGY FOR NURSES', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'MURUGAN', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 24: TB OF APPLIED MICROBIOLOGY, INFECTION CONTROL & SA... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK031', 'TB OF APPLIED MICROBIOLOGY, INFECTION CONTROL & SAFETY', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'ADHIKARI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 25: ADULT HEALTH NURSING-I... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK032', 'ADULT HEALTH NURSING-I', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'VENKETESH', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 26: TEXTBOOK OF PHARMACOLOGY-I & II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK033', 'TEXTBOOK OF PHARMACOLOGY-I & II', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'CHANDRASEKHAR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 27: ADULT HEALTH NURSING-II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK034', 'ADULT HEALTH NURSING-II', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'VENKETESH', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 28: PRACTICAL RECORD BOOK FOR ADULT HEALTH NURSING-II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK035', 'PRACTICAL RECORD BOOK FOR ADULT HEALTH NURSING-II', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'VENKETESH', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 29: MICROBIOLOGY FOR NURSES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK036', 'MICROBIOLOGY FOR NURSES', 29, 46,
    'Active', 5, 1, 1,
    'ELSEVIER', 'SOOD', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 30: PHARMACOLOGY FOR NURSES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK037', 'PHARMACOLOGY FOR NURSES', 29, 46,
    'Active', 5, 1, 1,
    'ELSEVIER', 'SHANBHAG', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 31: BLACK''S ADULT HEALTH NURSING-I & II... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK038', 'BLACK''S ADULT HEALTH NURSING-I & II', 29, 46,
    'Active', 2, 1, 1,
    'ELSEVIER', 'MALARVIZHI', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 32: APPLIED MICROBIOLGY & INFECTION CONTROL (INCLUDING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK039', 'APPLIED MICROBIOLGY & INFECTION CONTROL (INCLUDING SAFETY)', 29, 46,
    'Active', 5, 1, 1,
    'LOTUS', 'SANDEEP KAUR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 33: CHILD HEALTH NUIRSING, 3RD SEM.... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK040', 'CHILD HEALTH NUIRSING, 3RD SEM.', 29, 46,
    'Active', 5, 1, 1,
    'VIJAYAM', '', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 34: APPLIED MICROBIOLOGY... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK041', 'APPLIED MICROBIOLOGY', 29, 46,
    'Active', 5, 1, 1,
    'JAIN PUB', 'AGARWAL', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 35: ADULT HEALTH NURSING-I, (MSN)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK042', 'ADULT HEALTH NURSING-I, (MSN)', 29, 46,
    'Active', 5, 1, 1,
    'JAIN PUB', 'MADHU GUPTA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 36: TEXTBOOK OF MENTAL HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK043', 'TEXTBOOK OF MENTAL HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAIN PUB', 'PATIDAR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 37: APPLIED MICROBIOLOGY, 3RD SEM.... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK044', 'APPLIED MICROBIOLOGY, 3RD SEM.', 29, 46,
    'Active', 5, 1, 1,
    'CBS', '', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 38: PHARMACOLOGY, 3RD & 4TH SEM.... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK045', 'PHARMACOLOGY, 3RD & 4TH SEM.', 29, 46,
    'Active', 5, 1, 1,
    'CBS', '', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 39: ADULT HEALTH NURSING-I & II (SET)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK046', 'ADULT HEALTH NURSING-I & II (SET)', 29, 46,
    'Active', 5, 1, 1,
    'CBS', 'HERBERT', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 40: ADULT HEALTH NURSING-I... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK047', 'ADULT HEALTH NURSING-I', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'JOHA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 41: PHARMACOLOGY-II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK048', 'PHARMACOLOGY-II', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'CHAUDIRA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 42: PATHOLOGY & GENETICS-II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK049', 'PATHOLOGY & GENETICS-II', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'KAVIMANI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 43: ADULT HEALTH NURSING-II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK050', 'ADULT HEALTH NURSING-II', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'JOHA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 44: APPLIED MICROBIOLGY & INFECTION CONTROL (INCLUDING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK051', 'APPLIED MICROBIOLGY & INFECTION CONTROL (INCLUDING SAFETY)', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'PREMA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 45: PHARMACOLOGY-I... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK052', 'PHARMACOLOGY-I', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'CHAUDIRA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 46: PATHOLOGY-I... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK053', 'PATHOLOGY-I', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'KAVIMANI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 47: PROFESSIONALISM PROFESSIONAL VALUES & ETHICS ... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK054', 'PROFESSIONALISM PROFESSIONAL VALUES & ETHICS ', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'MOSES', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 49: MEDICAL SURGICAL NURSING(2 VOL.)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK056', 'MEDICAL SURGICAL NURSING(2 VOL.)', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'THOMAS', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 50: MEDICAL SURGICAL NURSING(2 VOL.)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK057', 'MEDICAL SURGICAL NURSING(2 VOL.)', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'CORREIA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 51: MEDICAL SURGICAL NURSING(2 VOL.)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK058', 'MEDICAL SURGICAL NURSING(2 VOL.)', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'BASAVANTHAPPA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 52: ESSENTIALS OF PEDIATRIC NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK059', 'ESSENTIALS OF PEDIATRIC NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'SHARMA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 53: PEDIATRIC NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK060', 'PEDIATRIC NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'SARKAR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 54: TEXTBOOK OF CHILD HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK061', 'TEXTBOOK OF CHILD HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'PADMAJA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 55: PEDIATRIC NEONATAL NURSING MANUAL... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK062', 'PEDIATRIC NEONATAL NURSING MANUAL', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'P. JOSHI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 56: PEDIATRIC DRUG DOSES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK063', 'PEDIATRIC DRUG DOSES', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'CHATTRI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 57: PEDIATRIC NURSING PROCEDURES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK064', 'PEDIATRIC NURSING PROCEDURES', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'KAVITHA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 58: CHILD HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK065', 'CHILD HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'PADMAJA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 59: PEDIATRIC NURSING PROCEDURE MANUAL... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK066', 'PEDIATRIC NURSING PROCEDURE MANUAL', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'PADMAJA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 60: TEXTBOOK OF PSYCHIATRIC NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK067', 'TEXTBOOK OF PSYCHIATRIC NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'KANNUR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 61: ESSENTIALS OF MENTAL HEALTH & PSYCHIATRIC NURSING ... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK068', 'ESSENTIALS OF MENTAL HEALTH & PSYCHIATRIC NURSING (2VOL)', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'NEERAJA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 62: PSYCHIATRIC FOR NURSES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK069', 'PSYCHIATRIC FOR NURSES', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'NAMBI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 63: MENTAL HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK070', 'MENTAL HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAYPEE', 'SREEVANI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 64: MEDICAL SURGICAL NURSING-I... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK071', 'MEDICAL SURGICAL NURSING-I', 29, 46,
    'Active', 5, 1, 1,
    'FRONTLINE', 'B.J. BEHNUR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 65: MEDICAL SURGICAL NURSING-II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK072', 'MEDICAL SURGICAL NURSING-II', 29, 46,
    'Active', 5, 1, 1,
    'FRONTLINE', 'B.J. BEHNUR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 66: CHILD HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK073', 'CHILD HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'FRONTLINE', 'JYOTHI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 67: MEDICAL SURGICAL NURSING-I, II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK074', 'MEDICAL SURGICAL NURSING-I, II', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'VENKETESH', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 68: EXAM BOOSTER FOR GNM, VOL.-3... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK075', 'EXAM BOOSTER FOR GNM, VOL.-3', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', '', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 69: TB OF GENERAL NURSING & MIDWIFERY... (3 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK076', 'TB OF GENERAL NURSING & MIDWIFERY', 29, 46,
    'Active', 3, 1, 1,
    'EMMESS', 'N. CLEMENT', NULL, 3, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 70: TEXTBOOK OF PSYCHIATRIC NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK077', 'TEXTBOOK OF PSYCHIATRIC NURSING', 29, 46,
    'Active', 5, 1, 1,
    'EMMESS', 'T. ANBU', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 71: A TB OF MEDICAL SURGICAL NURSING-I ... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK078', 'A TB OF MEDICAL SURGICAL NURSING-I ', 29, 46,
    'Active', 5, 1, 1,
    'VIJAYAM', 'P.M. PRATHIBA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 72: A TB OF MEDICAL SURGICAL NURSING-II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK079', 'A TB OF MEDICAL SURGICAL NURSING-II', 29, 46,
    'Active', 5, 1, 1,
    'VIJAYAM', 'P.M. PRATHIBA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 73: A TB OF MENTAL HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK080', 'A TB OF MENTAL HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'VIJAYAM', 'K. MADHAVI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 74: A TB OF CHILD HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK081', 'A TB OF CHILD HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'VIJAYAM', 'S. GOMATHI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 75: MENTAL HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK082', 'MENTAL HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'CBS', 'KUMARI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 76: MEDICAL SURGICAL NURSING-I & II (SET)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK083', 'MEDICAL SURGICAL NURSING-I & II (SET)', 29, 46,
    'Active', 5, 1, 1,
    'JAIN PUB', 'AGGARWAL', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 77: MENTAL HEALTH & PSYCHIATRIC NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK084', 'MENTAL HEALTH & PSYCHIATRIC NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAIN PUB', 'PATIDAR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 78: A TB OF MIDWIFERY & GYNAEOCOLGICAL NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK085', 'A TB OF MIDWIFERY & GYNAEOCOLGICAL NURSING', 29, 46,
    'Active', 5, 1, 1,
    'JAIN PUB', 'P.K. SHARMA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 79: MIDWIFERY FOR NURSES... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK086', 'MIDWIFERY FOR NURSES', 29, 46,
    'Active', 5, 1, 1,
    'JAIN PUB', 'AGARWAL', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 80: COMMUNITY HEALTH NURSING-II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK087', 'COMMUNITY HEALTH NURSING-II', 29, 46,
    'Active', 5, 1, 1,
    'JAIN PUB', 'AGARWAL', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 81: MEDICAL SURGICAL NURSING(COLORED)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK088', 'MEDICAL SURGICAL NURSING(COLORED)', 29, 46,
    'Active', 5, 1, 1,
    'LOTUS', 'L.KAUR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 82: MEDICAL SURGICAL NURSING(B/W)... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK089', 'MEDICAL SURGICAL NURSING(B/W)', 29, 46,
    'Active', 5, 1, 1,
    'LOTUS', 'L.KAUR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 83: MEDICAL SURGICAL NURSING -I... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK090', 'MEDICAL SURGICAL NURSING -I', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'KUMAR', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 84: MEDICAL SURGICAL NURSING -II... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK091', 'MEDICAL SURGICAL NURSING -II', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'MOSES', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 85: MENTAL HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK092', 'MENTAL HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'SINGH', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 86: CHILD HEALTH NURSING... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK093', 'CHILD HEALTH NURSING', 29, 46,
    'Active', 5, 1, 1,
    'THAKUR', 'LODHI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 88: MIDWIFERY & HEALTH CENTRE MGMT... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK095', 'MIDWIFERY & HEALTH CENTRE MGMT', 29, 46,
    'Active', 5, 1, 1,
    'PV BOOKS', 'S. BANSAL', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 89: A TEXTBOOK OF MIDWIFERY... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK096', 'A TEXTBOOK OF MIDWIFERY', 29, 46,
    'Active', 5, 1, 1,
    'VIJAYAM', 'SEETA DEVI', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 90: A TEXTBOOK OF HEALTH CENTRE MGMT... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK097', 'A TEXTBOOK OF HEALTH CENTRE MGMT', 29, 46,
    'Active', 5, 1, 1,
    'VIJAYAM', 'G.S. KRISHNA', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

COMMIT;


-- ================================================================================
-- STEP 2: INSERT PURCHASE RECORDS (87 records)
-- ================================================================================

BEGIN;

INSERT INTO "Library_librarypurchase" (
    book_id, purchase_date, purchase_from, bill_no,
    bill_value, bill_concession, no_of_copies,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    id,
    '2024-06-29',
    'PADMALAYA',
    'PADMALAYA-INV-38',
    CASE book_code
        WHEN 'BK009' THEN 3975.00
        WHEN 'BK010' THEN 4625.00
        WHEN 'BK011' THEN 2750.00
        WHEN 'BK012' THEN 3475.00
        WHEN 'BK013' THEN 3475.00
        WHEN 'BK014' THEN 3180.00
        WHEN 'BK015' THEN 2875.00
        WHEN 'BK016' THEN 3580.00
        WHEN 'BK017' THEN 4125.00
        WHEN 'BK018' THEN 2475.00
        WHEN 'BK019' THEN 4625.00
        WHEN 'BK020' THEN 5975.00
        WHEN 'BK021' THEN 4250.00
        WHEN 'BK022' THEN 4250.00
        WHEN 'BK023' THEN 3125.00
        WHEN 'BK024' THEN 3250.00
        WHEN 'BK025' THEN 3250.00
        WHEN 'BK026' THEN 2250.00
        WHEN 'BK027' THEN 6000.00
        WHEN 'BK028' THEN 2000.00
        WHEN 'BK029' THEN 2250.00
        WHEN 'BK030' THEN 3975.00
        WHEN 'BK031' THEN 5975.00
        WHEN 'BK032' THEN 2675.00
        WHEN 'BK033' THEN 4200.00
        WHEN 'BK034' THEN 4875.00
        WHEN 'BK035' THEN 3250.00
        WHEN 'BK036' THEN 3575.00
        WHEN 'BK037' THEN 3825.00
        WHEN 'BK038' THEN 6290.00
        WHEN 'BK039' THEN 2475.00
        WHEN 'BK040' THEN 3975.00
        WHEN 'BK041' THEN 2500.00
        WHEN 'BK042' THEN 3750.00
        WHEN 'BK043' THEN 1500.00
        WHEN 'BK044' THEN 4475.00
        WHEN 'BK045' THEN 3975.00
        WHEN 'BK046' THEN 12975.00
        WHEN 'BK047' THEN 3350.00
        WHEN 'BK048' THEN 1650.00
        WHEN 'BK049' THEN 1350.00
        WHEN 'BK050' THEN 2700.00
        WHEN 'BK051' THEN 1750.00
        WHEN 'BK052' THEN 1850.00
        WHEN 'BK053' THEN 850.00
        WHEN 'BK054' THEN 950.00
        WHEN 'BK056' THEN 9475.00
        WHEN 'BK057' THEN 7375.00
        WHEN 'BK058' THEN 14750.00
        WHEN 'BK059' THEN 5125.00
        WHEN 'BK060' THEN 5875.00
        WHEN 'BK061' THEN 6975.00
        WHEN 'BK062' THEN 2625.00
        WHEN 'BK063' THEN 3625.00
        WHEN 'BK064' THEN 2375.00
        WHEN 'BK065' THEN 3475.00
        WHEN 'BK066' THEN 3125.00
        WHEN 'BK067' THEN 5625.00
        WHEN 'BK068' THEN 5475.00
        WHEN 'BK069' THEN 3125.00
        WHEN 'BK070' THEN 3975.00
        WHEN 'BK071' THEN 5000.00
        WHEN 'BK072' THEN 5000.00
        WHEN 'BK073' THEN 3500.00
        WHEN 'BK074' THEN 13250.00
        WHEN 'BK075' THEN 2475.00
        WHEN 'BK076' THEN 5925.00
        WHEN 'BK077' THEN 3975.00
        WHEN 'BK078' THEN 5495.00
        WHEN 'BK079' THEN 5495.00
        WHEN 'BK080' THEN 2975.00
        WHEN 'BK081' THEN 3875.00
        WHEN 'BK082' THEN 2475.00
        WHEN 'BK083' THEN 3500.00
        WHEN 'BK084' THEN 1250.00
        WHEN 'BK085' THEN 850.00
        WHEN 'BK086' THEN 3250.00
        WHEN 'BK087' THEN 2000.00
        WHEN 'BK088' THEN 8150.00
        WHEN 'BK089' THEN 4650.00
        WHEN 'BK090' THEN 2900.00
        WHEN 'BK091' THEN 3100.00
        WHEN 'BK092' THEN 1750.00
        WHEN 'BK093' THEN 2050.00
        WHEN 'BK095' THEN 1475.00
        WHEN 'BK096' THEN 1625.00
        WHEN 'BK097' THEN 625.00
    END,
    0.00,
    no_of_copies,
    true, 2, 2, NOW(), NOW()
FROM "Library_librarybook"
WHERE book_code IN (
    'BK008', 'BK009', 'BK010', 'BK011', 'BK012', 'BK013', 'BK014', 'BK015', 'BK016', 'BK017',
    'BK018', 'BK019', 'BK020', 'BK021', 'BK022', 'BK023', 'BK024', 'BK025', 'BK026', 'BK027',
    'BK028', 'BK029', 'BK030', 'BK031', 'BK032', 'BK033', 'BK034', 'BK035', 'BK036', 'BK037',
    'BK038', 'BK039', 'BK040', 'BK041', 'BK042', 'BK043', 'BK044', 'BK045', 'BK046', 'BK047',
    'BK048', 'BK049', 'BK050', 'BK051', 'BK052', 'BK053', 'BK054', 'BK055', 'BK056', 'BK057',
    'BK058', 'BK059', 'BK060', 'BK061', 'BK062', 'BK063', 'BK064', 'BK065', 'BK066', 'BK067',
    'BK068', 'BK069', 'BK070', 'BK071', 'BK072', 'BK073', 'BK074', 'BK075', 'BK076', 'BK077',
    'BK078', 'BK079', 'BK080', 'BK081', 'BK082', 'BK083', 'BK084', 'BK085', 'BK086', 'BK087',
    'BK088', 'BK089', 'BK090', 'BK091', 'BK092', 'BK093', 'BK094'
);

COMMIT;


-- ================================================================================
-- STEP 3: INSERT BARCODES (428 barcodes)
-- ================================================================================

BEGIN;

-- BK009: 5 copies (ESSENTIALS OF ADULT HEALTH NUR...) - Barcodes 1000025-1000029
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK009'),
    1000024 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK010: 5 copies (ADULT HEALTH NURSING-I ...) - Barcodes 1000030-1000034
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK010'),
    1000029 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK011: 5 copies (COMPREHENSIVE TB OF APPLIED MI...) - Barcodes 1000035-1000039
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK011'),
    1000034 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK012: 5 copies (TB OF APPLIED MICROBIOLOGY AND...) - Barcodes 1000040-1000044
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK012'),
    1000039 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK013: 5 copies (ESSENTIALS OF APPLIED MICROBIO...) - Barcodes 1000045-1000049
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK013'),
    1000044 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK014: 4 copies (PHARMACOLOGY FOR GRADUATE NURS...) - Barcodes 1000050-1000053
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK014'),
    1000049 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 4) AS n;

-- BK015: 5 copies (TB OF PATHALOGY & GENETICS FOR...) - Barcodes 1000054-1000058
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK015'),
    1000053 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK016: 4 copies (JAYPEE'S NURSING DRUG BOOK...) - Barcodes 1000059-1000062
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK016'),
    1000058 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 4) AS n;

-- BK017: 5 copies (SYNOPSIS OF MEDICAL INSTRUMENT...) - Barcodes 1000063-1000067
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK017'),
    1000062 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK018: 5 copies (CLINICAL RECORD BOOK FOR ADULT...) - Barcodes 1000068-1000072
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK018'),
    1000067 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK019: 5 copies (ADULT HEALTH NURSING-II (MSN)...) - Barcodes 1000073-1000077
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK019'),
    1000072 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK020: 5 copies (ADULT HEALTH NURSING-II (MSN)...) - Barcodes 1000078-1000082
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK020'),
    1000077 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK021: 5 copies (PHARMACOLOGY & PATHOLOGY-I...) - Barcodes 1000083-1000087
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK021'),
    1000082 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK022: 5 copies (PHARMACOLOGY & PATHOLOGY-II...) - Barcodes 1000088-1000092
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK022'),
    1000087 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK023: 5 copies (TEXTBOOK OF MICROBIOLOGY...) - Barcodes 1000093-1000097
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK023'),
    1000092 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK024: 5 copies (PHARMACOLOGY-I & II...) - Barcodes 1000098-1000102
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK024'),
    1000097 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK025: 5 copies (TEXTBOOK OF PATHOLOGY -I & II ...) - Barcodes 1000103-1000107
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK025'),
    1000102 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK026: 5 copies (GENETICS (4TH SEM)...) - Barcodes 1000108-1000112
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK026'),
    1000107 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK027: 5 copies (ADULT HEALTH NURSING-I (MSN)...) - Barcodes 1000113-1000117
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK027'),
    1000112 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK028: 5 copies (PROFESSIONALISM PROFESSIONAL V...) - Barcodes 1000118-1000122
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK028'),
    1000117 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK029: 5 copies (PROFESSIONALISM PROFESSIONAL V...) - Barcodes 1000123-1000127
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK029'),
    1000122 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK030: 5 copies (TB OF APPLIED MICROBIOLOGY FOR...) - Barcodes 1000128-1000132
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK030'),
    1000127 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK031: 5 copies (TB OF APPLIED MICROBIOLOGY, IN...) - Barcodes 1000133-1000137
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK031'),
    1000132 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK032: 5 copies (ADULT HEALTH NURSING-I...) - Barcodes 1000138-1000142
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK032'),
    1000137 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK033: 5 copies (TEXTBOOK OF PHARMACOLOGY-I & I...) - Barcodes 1000143-1000147
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK033'),
    1000142 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK034: 5 copies (ADULT HEALTH NURSING-II...) - Barcodes 1000148-1000152
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK034'),
    1000147 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK035: 5 copies (PRACTICAL RECORD BOOK FOR ADUL...) - Barcodes 1000153-1000157
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK035'),
    1000152 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK036: 5 copies (MICROBIOLOGY FOR NURSES...) - Barcodes 1000158-1000162
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK036'),
    1000157 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK037: 5 copies (PHARMACOLOGY FOR NURSES...) - Barcodes 1000163-1000167
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK037'),
    1000162 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK038: 2 copies (BLACK'S ADULT HEALTH NURSING-I...) - Barcodes 1000168-1000169
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK038'),
    1000167 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK039: 5 copies (APPLIED MICROBIOLGY & INFECTIO...) - Barcodes 1000170-1000174
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK039'),
    1000169 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK040: 5 copies (CHILD HEALTH NUIRSING, 3RD SEM...) - Barcodes 1000175-1000179
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK040'),
    1000174 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK041: 5 copies (APPLIED MICROBIOLOGY...) - Barcodes 1000180-1000184
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK041'),
    1000179 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK042: 5 copies (ADULT HEALTH NURSING-I, (MSN)...) - Barcodes 1000185-1000189
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK042'),
    1000184 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK043: 5 copies (TEXTBOOK OF MENTAL HEALTH NURS...) - Barcodes 1000190-1000194
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK043'),
    1000189 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK044: 5 copies (APPLIED MICROBIOLOGY, 3RD SEM....) - Barcodes 1000195-1000199
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK044'),
    1000194 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK045: 5 copies (PHARMACOLOGY, 3RD & 4TH SEM....) - Barcodes 1000200-1000204
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK045'),
    1000199 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK046: 5 copies (ADULT HEALTH NURSING-I & II (S...) - Barcodes 1000205-1000209
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK046'),
    1000204 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK047: 5 copies (ADULT HEALTH NURSING-I...) - Barcodes 1000210-1000214
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK047'),
    1000209 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK048: 5 copies (PHARMACOLOGY-II...) - Barcodes 1000215-1000219
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK048'),
    1000214 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK049: 5 copies (PATHOLOGY & GENETICS-II...) - Barcodes 1000220-1000224
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK049'),
    1000219 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK050: 5 copies (ADULT HEALTH NURSING-II...) - Barcodes 1000225-1000229
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK050'),
    1000224 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK051: 5 copies (APPLIED MICROBIOLGY & INFECTIO...) - Barcodes 1000230-1000234
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK051'),
    1000229 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK052: 5 copies (PHARMACOLOGY-I...) - Barcodes 1000235-1000239
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK052'),
    1000234 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK053: 5 copies (PATHOLOGY-I...) - Barcodes 1000240-1000244
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK053'),
    1000239 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK054: 5 copies (PROFESSIONALISM PROFESSIONAL V...) - Barcodes 1000245-1000249
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK054'),
    1000244 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK056: 5 copies (MEDICAL SURGICAL NURSING(2 VOL...) - Barcodes 1000250-1000254
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK056'),
    1000249 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK057: 5 copies (MEDICAL SURGICAL NURSING(2 VOL...) - Barcodes 1000255-1000259
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK057'),
    1000254 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK058: 5 copies (MEDICAL SURGICAL NURSING(2 VOL...) - Barcodes 1000260-1000264
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK058'),
    1000259 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK059: 5 copies (ESSENTIALS OF PEDIATRIC NURSIN...) - Barcodes 1000265-1000269
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK059'),
    1000264 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK060: 5 copies (PEDIATRIC NURSING...) - Barcodes 1000270-1000274
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK060'),
    1000269 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK061: 5 copies (TEXTBOOK OF CHILD HEALTH NURSI...) - Barcodes 1000275-1000279
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK061'),
    1000274 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK062: 5 copies (PEDIATRIC NEONATAL NURSING MAN...) - Barcodes 1000280-1000284
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK062'),
    1000279 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK063: 5 copies (PEDIATRIC DRUG DOSES...) - Barcodes 1000285-1000289
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK063'),
    1000284 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK064: 5 copies (PEDIATRIC NURSING PROCEDURES...) - Barcodes 1000290-1000294
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK064'),
    1000289 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK065: 5 copies (CHILD HEALTH NURSING...) - Barcodes 1000295-1000299
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK065'),
    1000294 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK066: 5 copies (PEDIATRIC NURSING PROCEDURE MA...) - Barcodes 1000300-1000304
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK066'),
    1000299 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK067: 5 copies (TEXTBOOK OF PSYCHIATRIC NURSIN...) - Barcodes 1000305-1000309
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK067'),
    1000304 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK068: 5 copies (ESSENTIALS OF MENTAL HEALTH & ...) - Barcodes 1000310-1000314
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK068'),
    1000309 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK069: 5 copies (PSYCHIATRIC FOR NURSES...) - Barcodes 1000315-1000319
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK069'),
    1000314 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK070: 5 copies (MENTAL HEALTH NURSING...) - Barcodes 1000320-1000324
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK070'),
    1000319 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK071: 5 copies (MEDICAL SURGICAL NURSING-I...) - Barcodes 1000325-1000329
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK071'),
    1000324 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK072: 5 copies (MEDICAL SURGICAL NURSING-II...) - Barcodes 1000330-1000334
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK072'),
    1000329 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK073: 5 copies (CHILD HEALTH NURSING...) - Barcodes 1000335-1000339
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK073'),
    1000334 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK074: 5 copies (MEDICAL SURGICAL NURSING-I, II...) - Barcodes 1000340-1000344
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK074'),
    1000339 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK075: 5 copies (EXAM BOOSTER FOR GNM, VOL.-3...) - Barcodes 1000345-1000349
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK075'),
    1000344 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK076: 3 copies (TB OF GENERAL NURSING & MIDWIF...) - Barcodes 1000350-1000352
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK076'),
    1000349 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 3) AS n;

-- BK077: 5 copies (TEXTBOOK OF PSYCHIATRIC NURSIN...) - Barcodes 1000353-1000357
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK077'),
    1000352 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK078: 5 copies (A TB OF MEDICAL SURGICAL NURSI...) - Barcodes 1000358-1000362
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK078'),
    1000357 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK079: 5 copies (A TB OF MEDICAL SURGICAL NURSI...) - Barcodes 1000363-1000367
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK079'),
    1000362 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK080: 5 copies (A TB OF MENTAL HEALTH NURSING...) - Barcodes 1000368-1000372
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK080'),
    1000367 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK081: 5 copies (A TB OF CHILD HEALTH NURSING...) - Barcodes 1000373-1000377
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK081'),
    1000372 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK082: 5 copies (MENTAL HEALTH NURSING...) - Barcodes 1000378-1000382
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK082'),
    1000377 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK083: 5 copies (MEDICAL SURGICAL NURSING-I & I...) - Barcodes 1000383-1000387
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK083'),
    1000382 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK084: 5 copies (MENTAL HEALTH & PSYCHIATRIC NU...) - Barcodes 1000388-1000392
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK084'),
    1000387 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK085: 5 copies (A TB OF MIDWIFERY & GYNAEOCOLG...) - Barcodes 1000393-1000397
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK085'),
    1000392 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK086: 5 copies (MIDWIFERY FOR NURSES...) - Barcodes 1000398-1000402
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK086'),
    1000397 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK087: 5 copies (COMMUNITY HEALTH NURSING-II...) - Barcodes 1000403-1000407
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK087'),
    1000402 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK088: 5 copies (MEDICAL SURGICAL NURSING(COLOR...) - Barcodes 1000408-1000412
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK088'),
    1000407 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK089: 5 copies (MEDICAL SURGICAL NURSING(B/W)...) - Barcodes 1000413-1000417
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK089'),
    1000412 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK090: 5 copies (MEDICAL SURGICAL NURSING -I...) - Barcodes 1000418-1000422
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK090'),
    1000417 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK091: 5 copies (MEDICAL SURGICAL NURSING -II...) - Barcodes 1000423-1000427
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK091'),
    1000422 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK092: 5 copies (MENTAL HEALTH NURSING...) - Barcodes 1000428-1000432
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK092'),
    1000427 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK093: 5 copies (CHILD HEALTH NURSING...) - Barcodes 1000433-1000437
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK093'),
    1000432 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK095: 5 copies (MIDWIFERY & HEALTH CENTRE MGMT...) - Barcodes 1000438-1000442
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK095'),
    1000437 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK096: 5 copies (A TEXTBOOK OF MIDWIFERY...) - Barcodes 1000443-1000447
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK096'),
    1000442 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK097: 5 copies (A TEXTBOOK OF HEALTH CENTRE MG...) - Barcodes 1000448-1000452
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK097'),
    1000447 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

COMMIT;


-- ================================================================================
-- STEP 4: VERIFICATION QUERIES
-- ================================================================================

-- Check books
SELECT book_code, book_name, author, publisher, no_of_copies
FROM "Library_librarybook"
WHERE book_code BETWEEN 'BK008' AND 'BK094'
ORDER BY book_code;

-- Check barcodes per book
SELECT 
    lb.book_code,
    lb.no_of_copies AS expected,
    COUNT(lbb.id) AS actual,
    MIN(lbb.barcode) AS first_barcode,
    MAX(lbb.barcode) AS last_barcode
FROM "Library_librarybook" lb
LEFT JOIN "Library_librarybooksbarcode" lbb ON lb.id = lbb.book_id
WHERE lb.book_code BETWEEN 'BK008' AND 'BK094'
GROUP BY lb.id, lb.book_code, lb.no_of_copies
ORDER BY lb.book_code;

-- Total summary
SELECT 
    (SELECT COUNT(*) FROM "Library_librarybook" WHERE book_code BETWEEN 'BK008' AND 'BK094') AS total_books,
    (SELECT SUM(no_of_copies) FROM "Library_librarybook" WHERE book_code BETWEEN 'BK008' AND 'BK094') AS total_copies,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode" WHERE book_id IN 
        (SELECT id FROM "Library_librarybook" WHERE book_code BETWEEN 'BK008' AND 'BK094')) AS total_barcodes;

-- Expected: 87 books, 428 copies, 428 barcodes

-- ================================================================================
-- INV-38 COMPLETED: 87 Books | 428 Copies
-- ================================================================================