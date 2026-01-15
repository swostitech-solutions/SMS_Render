-- =====================================================
-- STEP 00: SCHEMA MODIFICATIONS
-- Run this FIRST on a fresh database
-- Modifies constraints to allow same codes per batch
-- =====================================================

BEGIN;

-- =====================================================
-- 1. Extend column sizes for longer values
-- =====================================================

-- Registration numbers can be 11+ digits
ALTER TABLE "Acadix_studentregistration" 
ALTER COLUMN registration_no TYPE varchar(15);

ALTER TABLE "Acadix_studentregistration" 
ALTER COLUMN college_admission_no TYPE varchar(15);

ALTER TABLE "Acadix_studentregistration" 
ALTER COLUMN enrollment_no TYPE varchar(15);

-- Father phone can have 11+ digits (typos in data)
ALTER TABLE "Acadix_studentregistration" 
ALTER COLUMN father_contact_number TYPE varchar(15);

-- =====================================================
-- 2. Modify unique constraints to allow same code per batch
-- =====================================================

-- Course: Allow same course_code for different batches
ALTER TABLE "Acadix_course" DROP CONSTRAINT IF EXISTS "Acadix_course_course_code_key";

-- Department: Allow same department_code for different batches  
ALTER TABLE "Acadix_department" DROP CONSTRAINT IF EXISTS "Acadix_department_department_code_key";

COMMIT;

-- Verification
SELECT 'Schema modifications completed' as status;
