-- ============================================
-- INVOICE BOOKS - MASTER DATA SETUP
-- Ensure all categories exist before importing books
-- ============================================

-- Categories needed for invoice books
INSERT INTO "Library_bookcategory" (category_name, category_description, organization_id, batch_id, is_active, created_by, created_at, updated_at)
VALUES 
    ('General Nursing', 'General Nursing Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('Medical-Surgical Nursing', 'Medical-Surgical Nursing Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('Child Health Nursing', 'Child Health Nursing Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('Mental Health Nursing', 'Mental Health Nursing Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('Midwifery and Obstetrical Nursing', 'Midwifery and Obstetrical Nursing Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('Community Health Nursing', 'Community Health Nursing Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('Anatomy', 'Anatomy Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('Physiology', 'Physiology Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('Nutrition and Biochemistry', 'Nutrition and Biochemistry Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('Microbiology', 'Microbiology Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW()),
    ('English', 'English Language Books', 1, (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1), TRUE, 0, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- Create 'General' subcategory for each category
INSERT INTO "Library_booksubcategory" (category_id, sub_category_name, sub_category_description, is_active, created_by, created_at, updated_at)
SELECT 
    id,
    'General',
    'General ' || category_name,
    TRUE,
    0,
    NOW(),
    NOW()
FROM "Library_bookcategory"
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1)
ON CONFLICT DO NOTHING;

-- ============================================
-- VERIFICATION
-- ============================================
SELECT 'Categories' as item, COUNT(*) as count FROM "Library_bookcategory" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED' LIMIT 1);

SELECT 'Subcategories' as item, COUNT(*) as count FROM "Library_booksubcategory";
