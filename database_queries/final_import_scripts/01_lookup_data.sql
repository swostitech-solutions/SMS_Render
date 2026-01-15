-- =====================================================
-- STEP 01: LOOKUP DATA
-- Run this SECOND on a fresh database
-- Creates all lookup/master tables data
-- =====================================================

BEGIN;

-- =====================================================
-- 1. GENDER
-- =====================================================
INSERT INTO "Acadix_gender" (organization_id, branch_id, gender_code, gender_name, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 1, 'M', 'Male', true, 1, NOW(), NOW()),
    (1, 1, 'F', 'Female', true, 1, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- =====================================================
-- 2. RELIGION
-- =====================================================
INSERT INTO "Acadix_religion" (organization_id, branch_id, religion_code, religion_name, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 1, 'Hindu', 'Hindu', true, 1, NOW(), NOW()),
    (1, 1, 'Islam', 'Islam', true, 1, NOW(), NOW()),
    (1, 1, 'Christian', 'Christian', true, 1, NOW(), NOW()),
    (1, 1, 'Sikh', 'Sikh', true, 1, NOW(), NOW()),
    (1, 1, 'Buddhist', 'Buddhist', true, 1, NOW(), NOW()),
    (1, 1, 'Jain', 'Jain', true, 1, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- =====================================================
-- 3. NATIONALITY
-- =====================================================
INSERT INTO "Acadix_nationality" (organization_id, branch_id, nationality_code, nationality_name, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 1, 'Indian', 'Indian', true, 1, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- =====================================================
-- 4. BLOOD GROUP
-- =====================================================
INSERT INTO "Acadix_blood" (organization_id, branch_id, blood_code, blood_name, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 1, 'A+', 'A Positive', true, 1, NOW(), NOW()),
    (1, 1, 'A-', 'A Negative', true, 1, NOW(), NOW()),
    (1, 1, 'B+', 'B Positive', true, 1, NOW(), NOW()),
    (1, 1, 'B-', 'B Negative', true, 1, NOW(), NOW()),
    (1, 1, 'AB+', 'AB Positive', true, 1, NOW(), NOW()),
    (1, 1, 'AB-', 'AB Negative', true, 1, NOW(), NOW()),
    (1, 1, 'O+', 'O Positive', true, 1, NOW(), NOW()),
    (1, 1, 'O-', 'O Negative', true, 1, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- =====================================================
-- 5. CATEGORY
-- =====================================================
INSERT INTO "Acadix_category" (organization_id, branch_id, category_code, category_name, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 1, 'GENERAL', 'General', true, 1, NOW(), NOW()),
    (1, 1, 'OBC', 'Other Backward Class', true, 1, NOW(), NOW()),
    (1, 1, 'SEBC', 'Socially and Educationally Backward Classes', true, 1, NOW(), NOW()),
    (1, 1, 'SC', 'Scheduled Caste', true, 1, NOW(), NOW()),
    (1, 1, 'ST', 'Scheduled Tribe', true, 1, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- =====================================================
-- 6. MOTHER TONGUE
-- =====================================================
INSERT INTO "Acadix_mothertongue" (organization_id, branch_id, mother_tongue_code, mother_tongue_name, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 1, 'Odia', 'Odia', true, 1, NOW(), NOW()),
    (1, 1, 'Hindi', 'Hindi', true, 1, NOW(), NOW()),
    (1, 1, 'English', 'English', true, 1, NOW(), NOW()),
    (1, 1, 'Bengali', 'Bengali', true, 1, NOW(), NOW()),
    (1, 1, 'Telugu', 'Telugu', true, 1, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- =====================================================
-- 7. HOUSE
-- =====================================================
INSERT INTO "Acadix_house" (organization_id, branch_id, house_code, house_name, house_color, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 1, 'Ganga', 'Ganga House', '#0000FF', true, 1, NOW(), NOW()),
    (1, 1, 'Yamuna', 'Yamuna House', '#00FF00', true, 1, NOW(), NOW()),
    (1, 1, 'Narmada', 'Narmada House', '#FF0000', true, 1, NOW(), NOW()),
    (1, 1, 'Godavari', 'Godavari House', '#FFFF00', true, 1, NOW(), NOW())
ON CONFLICT DO NOTHING;

COMMIT;

-- Verification
SELECT 'Lookup data created' as status,
    (SELECT COUNT(*) FROM "Acadix_gender") as genders,
    (SELECT COUNT(*) FROM "Acadix_religion") as religions,
    (SELECT COUNT(*) FROM "Acadix_blood") as blood_groups,
    (SELECT COUNT(*) FROM "Acadix_category") as categories;
