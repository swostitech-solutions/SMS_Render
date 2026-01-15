-- =====================================================
-- UPDATE LOOKUP TABLES TO MATCH API FORMAT
-- Run this FIRST before student imports
-- Makes code = name for all lookup tables
-- =====================================================

BEGIN;

-- =====================================================
-- UPDATE Religion: HIN -> Hindu, MUS -> Islam, CHR -> Christian
-- =====================================================
UPDATE "Acadix_religion" SET religion_code = 'Hindu' WHERE religion_code = 'HIN';
UPDATE "Acadix_religion" SET religion_code = 'Islam' WHERE religion_code = 'MUS';
UPDATE "Acadix_religion" SET religion_code = 'Christian' WHERE religion_code = 'CHR';

-- =====================================================
-- UPDATE Nationality: IND -> Indian
-- =====================================================
UPDATE "Acadix_nationality" SET nationality_code = 'Indian' WHERE nationality_code = 'IND';

-- =====================================================
-- UPDATE MotherTongue: ODI -> Odia, HIN -> Hindi, etc.
-- =====================================================
UPDATE "Acadix_mothertongue" SET mother_tongue_code = 'Odia' WHERE mother_tongue_code = 'ODI';
UPDATE "Acadix_mothertongue" SET mother_tongue_code = 'Hindi' WHERE mother_tongue_code = 'HIN';
UPDATE "Acadix_mothertongue" SET mother_tongue_code = 'English' WHERE mother_tongue_code = 'ENG';
UPDATE "Acadix_mothertongue" SET mother_tongue_code = 'Bengali' WHERE mother_tongue_code = 'BEN';
UPDATE "Acadix_mothertongue" SET mother_tongue_code = 'Telugu' WHERE mother_tongue_code = 'TEL';

-- =====================================================
-- UPDATE Category: GEN -> GENERAL
-- =====================================================
UPDATE "Acadix_category" SET category_code = 'GENERAL', category_name = 'GENERAL' WHERE category_code = 'GEN';

-- =====================================================
-- UPDATE House: DEF -> Ganga (or delete and add proper houses)
-- =====================================================
UPDATE "Acadix_house" SET house_code = 'Ganga', house_name = 'Ganga' WHERE house_code = 'DEF';

-- Add Yamuna house if not exists
INSERT INTO "Acadix_house" (organization_id, branch_id, house_code, house_name, house_color, is_active, created_by, created_at, updated_at)
VALUES (1, 1, 'Yamuna', 'Yamuna', '1', true, 1, NOW(), NOW())
ON CONFLICT DO NOTHING;

COMMIT;

-- =====================================================
-- VERIFY CHANGES
-- =====================================================
SELECT 'Religion' as tbl, religion_code as code, religion_name as name FROM "Acadix_religion"
UNION ALL SELECT 'Nationality', nationality_code, nationality_name FROM "Acadix_nationality"
UNION ALL SELECT 'MotherTongue', mother_tongue_code, mother_tongue_name FROM "Acadix_mothertongue"
UNION ALL SELECT 'Category', category_code, category_name FROM "Acadix_category"
UNION ALL SELECT 'House', house_code, house_name FROM "Acadix_house";
