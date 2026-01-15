-- ============================================
-- STAFF MASTER DATA SETUP
-- SPARSH COLLEGE OF NURSING AND ALLIED HEALTH SCIENCES
-- Database: schoolmanagement_8r7x (PostgreSQL on Render)
-- Created: 2026-01-13
-- ============================================

-- 1. Create Staff Batch (shared resource for all staff)
INSERT INTO "Acadix_batch" (organization_id, branch_id, batch_code, batch_description, date_from, date_to, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 2, 'STAFF-BATCH', 'Staff Members Batch', '2020-01-01', '2099-12-31', true, 0, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- 2. Create Employee Types (if not exist)
INSERT INTO "EmployeeType" (organization_id, branch_id, employee_type_code, employee_type_description, is_active)
VALUES 
    (1, 2, 'TEACHING', 'Teaching Staff', true),
    (1, 2, 'NON-TEACHING', 'Non-Teaching Staff', true),
    (1, 2, 'TUTOR', 'Nursing Tutor', true),
    (1, 2, 'WARDEN', 'Hostel Warden', true),
    (1, 2, 'REGULAR', 'Regular Staff', true),
    (1, 2, 'PERMANENT', 'Permanent Staff', true)
ON CONFLICT DO NOTHING;

-- 3. Verify Telugu mother tongue exists
INSERT INTO "Acadix_mothertongue" (organization_id, branch_id, mother_tongue_code, mother_tongue_name, is_active, created_by, created_at, updated_at)
VALUES 
    (1, 2, 'TEL', 'Telugu', true, 0, NOW(), NOW())
ON CONFLICT (mother_tongue_code) DO NOTHING;

-- 4. Create default Designation (required for EmployeeMaster)
-- Uses the first available department since Designation requires a department_id
INSERT INTO "Designation" (designation_name, designation_description, enabled, organization_id, branch_id, department_id, is_active, created_by, updated_by, created_at, updated_at)
VALUES 
    ('Staff', 'General Staff Member', 'Y', 1, 2, 
     (SELECT id FROM "Acadix_department" WHERE organization_id = 1 AND branch_id = 2 ORDER BY id LIMIT 1),
     true, 0, 0, NOW(), NOW())
ON CONFLICT DO NOTHING;

-- ============================================
-- VERIFICATION QUERIES
-- ============================================
SELECT 'Staff Batch' as check_item, COUNT(*) as count FROM "Acadix_batch" WHERE batch_code = 'STAFF-BATCH'
UNION ALL
SELECT 'Employee Types', COUNT(*) FROM "EmployeeType"
UNION ALL
SELECT 'Mother Tongues', COUNT(*) FROM "Acadix_mothertongue"
UNION ALL
SELECT 'Designations', COUNT(*) FROM "Designation";

-- List Employee Types
SELECT id, employee_type_code, employee_type_description FROM "EmployeeType" ORDER BY employee_type_code;

-- List Designations
SELECT id, designation_name, designation_description FROM "Designation";
