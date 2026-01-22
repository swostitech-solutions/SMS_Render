-- ================================================================================
-- INV-104 LIBRARY BOOKS IMPORT
-- Generated: 2026-01-22 18:11:11
-- Invoice: PADMALAYA-INV-104 | Date: 2025-08-21
-- Total Books: 46 | Total Copies: 98
-- ================================================================================

-- book_codes: BK095 to BK140
-- barcodes: 1000443 to 1000540

-- ================================================================================
-- STEP 1: INSERT BOOKS (46 books)
-- ================================================================================

BEGIN;

-- Book 1: Park''s Text book of Preventive And Social Medicin... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK095', 'Park''s Text book of Preventive And Social Medicine ', 29, 46,
    'Active', 2, 1, 1,
    'Banarsidas Bhanot', 'K. Park', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 2: A Comprehensive Textbook of Community Health Nursi... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK096', 'A Comprehensive Textbook of Community Health Nursing', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Bijayalaskhmi Dash', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 3: Community Health Nursing... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK097', 'Community Health Nursing', 29, 46,
    'Active', 2, 1, 1,
    'N.R. Brothers', 'K. Swarnkar', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 4: Textbook of Child Health Nursing... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK098', 'Textbook of Child Health Nursing', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Padmaja', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 5: A Quick Reference Guide to child''s growth and Dev... (3 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK099', 'A Quick Reference Guide to child''s growth and Devlopment for Nurses', 29, 46,
    'Active', 3, 1, 1,
    'Jaypee', 'Kalaimathi', NULL, 3, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 6: Pediatric Nursing Procedures... (3 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK100', 'Pediatric Nursing Procedures', 29, 46,
    'Active', 3, 1, 1,
    'Jaypee', 'Kalia', NULL, 3, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 7: Child Health Nursing : Nursing Process Approcah... (4 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK101', 'Child Health Nursing : Nursing Process Approcah', 29, 46,
    'Active', 4, 1, 1,
    'Jaypee', 'Padmaja', NULL, 4, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 8: Pediatric Nursing... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK102', 'Pediatric Nursing', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Sarkar', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 9: Psychiatry for Nurses... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK103', 'Psychiatry for Nurses', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Nambi', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 10: Essentials of Mental Health and Psychiatric Nursin... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK104', 'Essentials of Mental Health and Psychiatric Nursing(2 Vols)', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Neeraja', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 11: A Guide To Mental Health & Psychiatric Nursing... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK105', 'A Guide To Mental Health & Psychiatric Nursing', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Sreevani', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 12: Foundations of Mental Health Care,      8th Ed.... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK106', 'Foundations of Mental Health Care,      8th Ed.', 29, 46,
    'Active', 1, 1, 1,
    'Elsevier', 'Morrison- Valfre', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 13: Essentials of Psychiatric Mental Health Nursing: A... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK107', 'Essentials of Psychiatric Mental Health Nursing: A CommunicationApproachto Evidence-Based Care, 5th ed.', 29, 46,
    'Active', 1, 1, 1,
    'Elsevier', 'Varcarolis', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 14: Manual of Psychiatric Nursing Care Planning,7e... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK108', 'Manual of Psychiatric Nursing Care Planning,7e', 29, 46,
    'Active', 1, 1, 1,
    'Elsevier', 'Varcarolis', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 15: Varcarolis'' Foundations of Psychiatric Mental Hea... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK109', 'Varcarolis'' Foundations of Psychiatric Mental Health Nursing: A Clinical Approach, 8th ed.', 29, 46,
    'Active', 1, 1, 1,
    'Elsevier', 'Halter', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 16: Communication in Nursing, 10th Ed.... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK110', 'Communication in Nursing, 10th Ed.', 29, 46,
    'Active', 1, 1, 1,
    'Elsevier', 'Balzer Riley', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 17: TB On Nursing Research & Statistics... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK111', 'TB On Nursing Research & Statistics', 29, 46,
    'Active', 2, 1, 1,
    'Emmess Publication ', 'Nisha Clement/I. Clement', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 18: Nursing Research & Statistics... (3 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK112', 'Nursing Research & Statistics', 29, 46,
    'Active', 3, 1, 1,
    'Elserier Publication', 'S. K. sharma', NULL, 3, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 19: Research & Biostatistics for Nurses (Asper INC syl... (3 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK113', 'Research & Biostatistics for Nurses (Asper INC syllabus)', 29, 46,
    'Active', 3, 1, 1,
    'Jaypee', 'R.Sudha', NULL, 3, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 20: Burns & Grove''s The Practice of Nursing Research:... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK114', 'Burns & Grove''s The Practice of Nursing Research: Appraisal, Synthesis, & Generation of Evidence, 9e', 29, 46,
    'Active', 2, 1, 1,
    'Elsevier Publication', 'Gray', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 21: Statistics for Nursing Research: A WB for Evidence... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK115', 'Statistics for Nursing Research: A WB for Evidence-Based Practice, 4th Ed.', 29, 46,
    'Active', 1, 1, 1,
    'Elserier Publication', 'Grove', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 22: Nursing Research and Statistics, 5th ed.... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK116', 'Nursing Research and Statistics, 5th ed.', 29, 46,
    'Active', 2, 1, 1,
    'Elserier Publication', 'Sharma', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 23: Core Curriculum for ,Maternal-Newborn Nursing, 6th... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK117', 'Core Curriculum for ,Maternal-Newborn Nursing, 6th ed.', 29, 46,
    'Active', 1, 1, 1,
    'Elsevier', 'Awhonn', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 24: The Midwife''s Pocket Formulary,4e... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK118', 'The Midwife''s Pocket Formulary,4e', 29, 46,
    'Active', 1, 1, 1,
    'Elsevier', 'Davey', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 25: Elsevier Clinical Skills Manual Vol.4 OBG Nursing,... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK119', 'Elsevier Clinical Skills Manual Vol.4 OBG Nursing,', 29, 46,
    'Active', 5, 1, 1,
    'Elsevier', 'Naidu', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 26: Anatomy & Physiology for Midwives,4e.... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK120', 'Anatomy & Physiology for Midwives,4e.', 29, 46,
    'Active', 2, 1, 1,
    'Elsevier', 'Coad', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 27: Textbook of Obstetrics... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK121', 'Textbook of Obstetrics', 29, 46,
    'Active', 2, 1, 1,
    'Elsevier', 'Usha ', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 28: Fetal Monitoring in Practice,  5th ed.... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK122', 'Fetal Monitoring in Practice,  5th ed.', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Gibb', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 29: Undergraduate Manual for Clinical Cases in Obstetr... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK123', 'Undergraduate Manual for Clinical Cases in Obstetrics & Gynaecology, 3e.', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Hephzibah', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 30: Mayes'' Midwifery,16th ed.... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK124', 'Mayes'' Midwifery,16th ed.', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Macdonald', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 31: Physiology in Child bearing: with Anatomy & Relate... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK125', 'Physiology in Child bearing: with Anatomy & Related Biosciences, 5th ed.', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Rankin', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 32: Myles Survival Guide to Midwifery,3e... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK126', 'Myles Survival Guide to Midwifery,3e', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Raynor', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 33: The Midwives'' Guide to Key Medical Conditions: Pr... (1 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK127', 'The Midwives'' Guide to Key Medical Conditions: Pregnancy & Child birth,2e', 29, 46,
    'Active', 1, 1, 1,
    'elsevier', 'Wylie', NULL, 1, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 34: Textbook of Midwifery and Obstetrics for Nurses,1e... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK128', 'Textbook of Midwifery and Obstetrics for Nurses,1e', 29, 46,
    'Active', 2, 1, 1,
    'elsevier', 'Rao', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 35: DC Dutta''s Textbook of Gynecology... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK129', 'DC Dutta''s Textbook of Gynecology', 29, 46,
    'Active', 5, 1, 1,
    'Jaypee', 'Hiralal Konar', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 36: DC Dutta''s Textbook of Obstertrics... (5 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK130', 'DC Dutta''s Textbook of Obstertrics', 29, 46,
    'Active', 5, 1, 1,
    'Jaypee', 'Hiralal Konar', NULL, 5, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 37: MCQs in Midwifery/Obstetrics and Gynecological Nur... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK131', 'MCQs in Midwifery/Obstetrics and Gynecological Nursing', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Thakur', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 38: Management of Nursing Services and Education,2nd e... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK132', 'Management of Nursing Services and Education,2nd ed.', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Basavanthappa', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 39: Text Book Of Nursing Management And Leadership... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK133', 'Text Book Of Nursing Management And Leadership', 29, 46,
    'Active', 2, 1, 1,
    'Elsevier', 'I Clement ', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 40: Text Book of Nursing Management in Service & Educa... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK134', 'Text Book of Nursing Management in Service & Education ', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'C Manivannan', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 41: Essentials of management of Nursing Service & Educ... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK135', 'Essentials of management of Nursing Service & Education', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Nisha Clement ', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 42: Principles & Practice of Nursing Management & Admi... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK136', 'Principles & Practice of Nursing Management & Administration', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Jogindra Vati ', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 43: Textbook of Management & Leadership... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK137', 'Textbook of Management & Leadership', 29, 46,
    'Active', 2, 1, 1,
    'Emmess Publication ', 'T. Anbu ', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 44: Text Book of Nursing Management & Leadership... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK138', 'Text Book of Nursing Management & Leadership', 29, 46,
    'Active', 2, 1, 1,
    'VHS', 'Unnikrishinan/ Rohini T.', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 45: Essentials of Forensic Nursing ... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK139', 'Essentials of Forensic Nursing ', 29, 46,
    'Active', 2, 1, 1,
    'Jaypee', 'Rimple Sharma', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

-- Book 46: Introduction to Forensic Nursing and Indian Laws ... (2 copies)
INSERT INTO "Library_librarybook" (
    book_code, book_name, book_category_id, book_sub_category_id,
    book_status, no_of_copies, organization_id, batch_id,
    publisher, author, publish_year, volume, edition, pages,
    library_branch_id, barcode_auto_generated, allow_issue, type,
    academic_year_id,
    is_active, created_by, updated_by, created_at, updated_at
) VALUES (
    'BK140', 'Introduction to Forensic Nursing and Indian Laws ', 29, 46,
    'Active', 2, 1, 1,
    'Lotus Pub.', 'Raman Kalia ', NULL, 2, 1, NULL,
    2, true, 'T', 'BOOK',
    25,
    true, 2, 2, NOW(), NOW()
);

COMMIT;

-- ================================================================================
-- STEP 2: INSERT PURCHASES (46 records)
-- ================================================================================

BEGIN;

INSERT INTO "Library_librarypurchase" (
    book_id, purchase_date, purchase_from, bill_no,
    bill_value, bill_concession, no_of_copies,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT id, '2025-08-21', 'PADMALAYA', 'PADMALAYA-INV-104',
    CASE book_code
        WHEN 'BK095' THEN 3600.00
        WHEN 'BK096' THEN 2790.00
        WHEN 'BK097' THEN 3200.00
        WHEN 'BK098' THEN 2990.00
        WHEN 'BK099' THEN 1185.00
        WHEN 'BK100' THEN 1485.00
        WHEN 'BK101' THEN 2900.00
        WHEN 'BK102' THEN 2750.00
        WHEN 'BK103' THEN 1350.00
        WHEN 'BK104' THEN 2390.00
        WHEN 'BK105' THEN 1590.00
        WHEN 'BK106' THEN 68.99
        WHEN 'BK107' THEN 94.99
        WHEN 'BK108' THEN 53.99
        WHEN 'BK109' THEN 118.99
        WHEN 'BK110' THEN 85.99
        WHEN 'BK111' THEN 1780.00
        WHEN 'BK112' THEN 2985.00
        WHEN 'BK113' THEN 2625.00
        WHEN 'BK114' THEN 231.98
        WHEN 'BK115' THEN 68.99
        WHEN 'BK116' THEN 1990.00
        WHEN 'BK117' THEN 116.99
        WHEN 'BK118' THEN 33.95
        WHEN 'BK119' THEN 2250.00
        WHEN 'BK120' THEN 97.98
        WHEN 'BK121' THEN 3150.00
        WHEN 'BK122' THEN 103.98
        WHEN 'BK123' THEN 2290.00
        WHEN 'BK124' THEN 143.98
        WHEN 'BK125' THEN 105.98
        WHEN 'BK126' THEN 71.90
        WHEN 'BK127' THEN 45.95
        WHEN 'BK128' THEN 2210.00
        WHEN 'BK129' THEN 6750.00
        WHEN 'BK130' THEN 7475.00
        WHEN 'BK131' THEN 990.00
        WHEN 'BK132' THEN 2300.00
        WHEN 'BK133' THEN 1830.00
        WHEN 'BK134' THEN 1300.00
        WHEN 'BK135' THEN 1790.00
        WHEN 'BK136' THEN 1900.00
        WHEN 'BK137' THEN 1790.00
        WHEN 'BK138' THEN 1390.00
        WHEN 'BK139' THEN 450.00
        WHEN 'BK140' THEN 580.00
    END, 0.00, no_of_copies,
    true, 2, 2, NOW(), NOW()
FROM "Library_librarybook"
WHERE book_code IN (
    'BK095', 'BK096', 'BK097', 'BK098', 'BK099', 'BK100', 'BK101', 'BK102', 'BK103', 'BK104',
    'BK105', 'BK106', 'BK107', 'BK108', 'BK109', 'BK110', 'BK111', 'BK112', 'BK113', 'BK114',
    'BK115', 'BK116', 'BK117', 'BK118', 'BK119', 'BK120', 'BK121', 'BK122', 'BK123', 'BK124',
    'BK125', 'BK126', 'BK127', 'BK128', 'BK129', 'BK130', 'BK131', 'BK132', 'BK133', 'BK134',
    'BK135', 'BK136', 'BK137', 'BK138', 'BK139', 'BK140'
);

COMMIT;

-- ================================================================================
-- STEP 3: INSERT BARCODES (98 barcodes)
-- ================================================================================

BEGIN;

-- BK095: 2 copies (Park's Text book of Preventive...) - Barcodes 1000443-1000444
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK095'),
    1000442 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK096: 2 copies (A Comprehensive Textbook of Co...) - Barcodes 1000445-1000446
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK096'),
    1000444 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK097: 2 copies (Community Health Nursing...) - Barcodes 1000447-1000448
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK097'),
    1000446 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK098: 2 copies (Textbook of Child Health Nursi...) - Barcodes 1000449-1000450
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK098'),
    1000448 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK099: 3 copies (A Quick Reference Guide to chi...) - Barcodes 1000451-1000453
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK099'),
    1000450 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 3) AS n;

-- BK100: 3 copies (Pediatric Nursing Procedures...) - Barcodes 1000454-1000456
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK100'),
    1000453 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 3) AS n;

-- BK101: 4 copies (Child Health Nursing : Nursing...) - Barcodes 1000457-1000460
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK101'),
    1000456 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 4) AS n;

-- BK102: 2 copies (Pediatric Nursing...) - Barcodes 1000461-1000462
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK102'),
    1000460 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK103: 2 copies (Psychiatry for Nurses...) - Barcodes 1000463-1000464
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK103'),
    1000462 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK104: 2 copies (Essentials of Mental Health an...) - Barcodes 1000465-1000466
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK104'),
    1000464 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK105: 2 copies (A Guide To Mental Health & Psy...) - Barcodes 1000467-1000468
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK105'),
    1000466 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK106: 1 copies (Foundations of Mental Health C...) - Barcodes 1000469-1000469
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK106'),
    1000469, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK107: 1 copies (Essentials of Psychiatric Ment...) - Barcodes 1000470-1000470
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK107'),
    1000470, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK108: 1 copies (Manual of Psychiatric Nursing ...) - Barcodes 1000471-1000471
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK108'),
    1000471, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK109: 1 copies (Varcarolis' Foundations of Psy...) - Barcodes 1000472-1000472
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK109'),
    1000472, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK110: 1 copies (Communication in Nursing, 10th...) - Barcodes 1000473-1000473
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK110'),
    1000473, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK111: 2 copies (TB On Nursing Research & Stati...) - Barcodes 1000474-1000475
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK111'),
    1000473 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK112: 3 copies (Nursing Research & Statistics...) - Barcodes 1000476-1000478
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK112'),
    1000475 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 3) AS n;

-- BK113: 3 copies (Research & Biostatistics for N...) - Barcodes 1000479-1000481
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK113'),
    1000478 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 3) AS n;

-- BK114: 2 copies (Burns & Grove's The Practice o...) - Barcodes 1000482-1000483
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK114'),
    1000481 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK115: 1 copies (Statistics for Nursing Researc...) - Barcodes 1000484-1000484
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK115'),
    1000484, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK116: 2 copies (Nursing Research and Statistic...) - Barcodes 1000485-1000486
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK116'),
    1000484 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK117: 1 copies (Core Curriculum for ,Maternal-...) - Barcodes 1000487-1000487
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK117'),
    1000487, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK118: 1 copies (The Midwife's Pocket Formulary...) - Barcodes 1000488-1000488
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK118'),
    1000488, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK119: 5 copies (Elsevier Clinical Skills Manua...) - Barcodes 1000489-1000493
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK119'),
    1000488 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK120: 2 copies (Anatomy & Physiology for Midwi...) - Barcodes 1000494-1000495
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK120'),
    1000493 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK121: 2 copies (Textbook of Obstetrics...) - Barcodes 1000496-1000497
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK121'),
    1000495 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK122: 2 copies (Fetal Monitoring in Practice, ...) - Barcodes 1000498-1000499
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK122'),
    1000497 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK123: 2 copies (Undergraduate Manual for Clini...) - Barcodes 1000500-1000501
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK123'),
    1000499 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK124: 2 copies (Mayes' Midwifery,16th ed....) - Barcodes 1000502-1000503
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK124'),
    1000501 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK125: 2 copies (Physiology in Child bearing: w...) - Barcodes 1000504-1000505
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK125'),
    1000503 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK126: 2 copies (Myles Survival Guide to Midwif...) - Barcodes 1000506-1000507
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK126'),
    1000505 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK127: 1 copies (The Midwives' Guide to Key Med...) - Barcodes 1000508-1000508
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK127'),
    1000508, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW();

-- BK128: 2 copies (Textbook of Midwifery and Obst...) - Barcodes 1000509-1000510
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK128'),
    1000508 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK129: 5 copies (DC Dutta's Textbook of Gynecol...) - Barcodes 1000511-1000515
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK129'),
    1000510 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK130: 5 copies (DC Dutta's Textbook of Obstert...) - Barcodes 1000516-1000520
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK130'),
    1000515 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 5) AS n;

-- BK131: 2 copies (MCQs in Midwifery/Obstetrics a...) - Barcodes 1000521-1000522
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK131'),
    1000520 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK132: 2 copies (Management of Nursing Services...) - Barcodes 1000523-1000524
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK132'),
    1000522 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK133: 2 copies (Text Book Of Nursing Managemen...) - Barcodes 1000525-1000526
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK133'),
    1000524 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK134: 2 copies (Text Book of Nursing Managemen...) - Barcodes 1000527-1000528
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK134'),
    1000526 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK135: 2 copies (Essentials of management of Nu...) - Barcodes 1000529-1000530
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK135'),
    1000528 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK136: 2 copies (Principles & Practice of Nursi...) - Barcodes 1000531-1000532
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK136'),
    1000530 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK137: 2 copies (Textbook of Management & Leade...) - Barcodes 1000533-1000534
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK137'),
    1000532 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK138: 2 copies (Text Book of Nursing Managemen...) - Barcodes 1000535-1000536
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK138'),
    1000534 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK139: 2 copies (Essentials of Forensic Nursing...) - Barcodes 1000537-1000538
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK139'),
    1000536 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

-- BK140: 2 copies (Introduction to Forensic Nursi...) - Barcodes 1000539-1000540
INSERT INTO "Library_librarybooksbarcode" (
    book_id, barcode, book_barcode_status, remarks,
    barcode_auto_generated, organization_id, batch_id, location_id_id,
    is_active, created_by, updated_by, created_at, updated_at
)
SELECT 
    (SELECT id FROM "Library_librarybook" WHERE book_code = 'BK140'),
    1000538 + n, 'Available', '',
    true, 1, 1, NULL,
    true, 2, 2, NOW(), NOW()
FROM generate_series(1, 2) AS n;

COMMIT;

-- ================================================================================
-- VERIFICATION
-- ================================================================================

SELECT 
    (SELECT COUNT(*) FROM "Library_librarybook" WHERE book_code BETWEEN 'BK095' AND 'BK140') AS total_books,
    (SELECT SUM(no_of_copies) FROM "Library_librarybook" WHERE book_code BETWEEN 'BK095' AND 'BK140') AS total_copies,
    (SELECT COUNT(*) FROM "Library_librarybooksbarcode" WHERE book_id IN 
        (SELECT id FROM "Library_librarybook" WHERE book_code BETWEEN 'BK095' AND 'BK140')) AS total_barcodes;

-- Expected: 46 books, 98 copies, 98 barcodes