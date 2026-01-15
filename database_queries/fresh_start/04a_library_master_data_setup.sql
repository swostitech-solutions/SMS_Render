-- ============================================
-- LIBRARY MASTER DATA SETUP
-- SPARSH COLLEGE OF NURSING AND ALLIED HEALTH SCIENCES
-- Database: schoolmanagement_8r7x (PostgreSQL on Render)
-- Created: 2026-01-13
-- ============================================

-- NOTE: Update these values if needed:
-- organization_id = 1
-- branch_id = 1 (not used in Library tables)
-- batch_id = will use shared library batch
-- created_by = 0

-- 1. Create Library Batch (shared resource across all academic batches)
INSERT INTO "Acadix_batch" (organization_id, branch_id, batch_code, batch_description, date_from, date_to, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 2, 'LIBRARY-SHARED', 'Library Shared Resources', '2020-01-01', '2099-12-31', true, 0, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- 2. Create Library Branch (Main Library)
INSERT INTO "LibraryBranch" (library_branch_name, organization_id, batch_id, is_active)
VALUES 
    ('Main Library', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true);

-- 3. Create Book Location (Default shelf)
INSERT INTO "Library_booklocation" (book_location, book_location_desc, organization_id, batch_id, is_active, created_by, created_at, updated_at)
VALUES 
    ('Library Shelf A-Z', 'Main library shelving area', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW());

-- 4. Create Book Categories (17 subjects)
INSERT INTO "Library_bookcategory" (category_name, category_description, organization_id, batch_id, is_active, created_by, created_at, updated_at)
VALUES 
    ('Anatomy and Physiology', 'Books on Anatomy and Physiology', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Nutrition', 'Books on Nutrition', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Bio-Chemistry', 'Books on Bio-Chemistry', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Microbiology', 'Books on Microbiology', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Fundamentals of Nursing', 'Books on Fundamentals of Nursing', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Sociology', 'Books on Sociology', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Medical Surgical Nursing', 'Books on Medical Surgical Nursing', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Community Health Nursing', 'Books on Community Health Nursing', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Child Health Nursing', 'Books on Child Health Nursing', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Psychology', 'Books on Psychology', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('English', 'Books on English', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Obstetrical & Gynecological Nursing', 'Books on Obstetrical & Gynecological Nursing', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Nursing Management', 'Books on Nursing Management', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Nursing Research', 'Books on Nursing Research', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Nursing Education', 'Books on Nursing Education', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Mental Health Nursing', 'Books on Mental Health Nursing', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW()),
    ('Forensic Nursing and Indian Laws', 'Books on Forensic Nursing and Indian Laws', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'), true, 0, NOW(), NOW());

-- 5. Create Book Sub-Categories (General sub-category for each subject)
INSERT INTO "Library_booksubcategory" (category_id, sub_category_name, sub_category_description, is_active, created_by, created_at, updated_at)
VALUES 
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Anatomy and Physiology'), 'General', 'General Anatomy and Physiology books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Nutrition'), 'General', 'General Nutrition books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Bio-Chemistry'), 'General', 'General Bio-Chemistry books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Microbiology'), 'General', 'General Microbiology books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Fundamentals of Nursing'), 'General', 'General Fundamentals of Nursing books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Sociology'), 'General', 'General Sociology books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Medical Surgical Nursing'), 'General', 'General Medical Surgical Nursing books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Community Health Nursing'), 'General', 'General Community Health Nursing books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Child Health Nursing'), 'General', 'General Child Health Nursing books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Psychology'), 'General', 'General Psychology books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'English'), 'General', 'General English books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Obstetrical & Gynecological Nursing'), 'General', 'General Obstetrical & Gynecological Nursing books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Nursing Management'), 'General', 'General Nursing Management books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Nursing Research'), 'General', 'General Nursing Research books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Nursing Education'), 'General', 'General Nursing Education books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Mental Health Nursing'), 'General', 'General Mental Health Nursing books', true, 0, NOW(), NOW()),
    ((SELECT id FROM "Library_bookcategory" WHERE category_name = 'Forensic Nursing and Indian Laws'), 'General', 'General Forensic Nursing and Indian Laws books', true, 0, NOW(), NOW());

-- ============================================
-- VERIFICATION QUERIES
-- ============================================
SELECT 'Library Batch' as check_item, COUNT(*) as count FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED'
UNION ALL
SELECT 'Library Branch', COUNT(*) FROM "LibraryBranch" WHERE library_branch_name = 'Main Library'
UNION ALL
SELECT 'Book Locations', COUNT(*) FROM "Library_booklocation"
UNION ALL
SELECT 'Book Categories', COUNT(*) FROM "Library_bookcategory"
UNION ALL
SELECT 'Book Sub-Categories', COUNT(*) FROM "Library_booksubcategory";

-- List all categories
SELECT id, category_name FROM "Library_bookcategory" ORDER BY id;
