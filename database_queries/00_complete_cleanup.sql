-- =====================================================
-- COMPLETE DATABASE CLEANUP - FRESH START
-- =====================================================
-- This script deletes ALL data except org_id=1 and branch_id=1
-- 
-- Execution Order: RUN THIS FIRST before any imports
-- 
-- WARNING: This will delete:
-- - All students (168 records)
-- - All staff (9 records)  
-- - All library books (1,636 records + barcodes)
-- - All batches, departments, academic years, sections, semesters
-- - All book categories and subcategories
-- 
-- NOTE: Table names are case-sensitive and match Django models
-- =====================================================

-- =====================================================
-- PHASE 1: Delete Student Data
-- =====================================================

-- Delete student registrations (StudentRegistration model - no separate details table)
DELETE FROM "Acadix_studentregistration" 
WHERE organization_id = 1;

-- =====================================================
-- PHASE 2: Delete Staff Data
-- =====================================================

-- Delete employee assignments
DELETE FROM "EmployeeAssignment"
WHERE organization_id = 1;

-- Delete employee courses
DELETE FROM "EmployeeCourse"
WHERE organization_id = 1;

-- Delete employee experiences
DELETE FROM "EmployeeExperience"
WHERE organization_id = 1;

-- Delete employee master records
DELETE FROM "Acadix_employeemaster"
WHERE organization_id = 1;

-- =====================================================
-- PHASE 3: Delete Library Data
-- =====================================================

-- Delete library book issues first (has foreign keys to barcodes)
DELETE FROM "LibraryBooksIssues"
WHERE book_detail_id IN (
    SELECT id FROM "Library_librarybooksbarcode"
    WHERE batch_id IN (
        SELECT id FROM "Acadix_batch" 
        WHERE organization_id = 1 AND batch_code = 'LIBRARY-SHARED'
    )
);

-- Delete library book barcodes
DELETE FROM "Library_librarybooksbarcode" 
WHERE batch_id IN (
    SELECT id FROM "Acadix_batch" 
    WHERE organization_id = 1 AND batch_code = 'LIBRARY-SHARED'
);

-- Delete library purchases
DELETE FROM "Library_librarypurchase"
WHERE book_id IN (
    SELECT id FROM "Library_librarybook"
    WHERE batch_id IN (
        SELECT id FROM "Acadix_batch" 
        WHERE organization_id = 1 AND batch_code = 'LIBRARY-SHARED'
    )
);

-- Delete library books
DELETE FROM "Library_librarybook" 
WHERE batch_id IN (
    SELECT id FROM "Acadix_batch" 
    WHERE organization_id = 1 AND batch_code = 'LIBRARY-SHARED'
);

-- Delete book locations
DELETE FROM "Library_booklocation"
WHERE batch_id IN (
    SELECT id FROM "Acadix_batch" 
    WHERE organization_id = 1 AND batch_code = 'LIBRARY-SHARED'
);

-- Delete library branches
DELETE FROM "LibraryBranch"
WHERE batch_id IN (
    SELECT id FROM "Acadix_batch" 
    WHERE organization_id = 1 AND batch_code = 'LIBRARY-SHARED'
);

-- Delete book subcategories
DELETE FROM "Library_booksubcategory" 
WHERE category_id IN (
    SELECT id FROM "Library_bookcategory" 
    WHERE batch_id IN (
        SELECT id FROM "Acadix_batch" 
        WHERE organization_id = 1 AND batch_code = 'LIBRARY-SHARED'
    )
);

-- Delete book categories
DELETE FROM "Library_bookcategory" 
WHERE batch_id IN (
    SELECT id FROM "Acadix_batch" 
    WHERE organization_id = 1 AND batch_code = 'LIBRARY-SHARED'
);

-- =====================================================
-- PHASE 4: Delete Academic Structure
-- =====================================================

-- Delete designations first (has FK to departments)
DELETE FROM "Designation" 
WHERE organization_id = 1;

-- Delete sections
DELETE FROM "Acadix_section" 
WHERE organization_id = 1;

-- Delete semesters
DELETE FROM "Acadix_semester" 
WHERE organization_id = 1;

-- Delete academic years
DELETE FROM "Acadix_academicyear" 
WHERE organization_id = 1;

-- Delete departments
DELETE FROM "Acadix_department" 
WHERE organization_id = 1;

-- =====================================================
-- PHASE 5: Delete Batches
-- =====================================================

-- Delete courses first (has FK to batches)
DELETE FROM "Acadix_course" 
WHERE organization_id = 1;

-- Delete all batches (students, staff, library)
DELETE FROM "Acadix_batch" 
WHERE organization_id = 1;

-- =====================================================
-- Verification Queries
-- =====================================================

-- Check counts after deletion (should all be 0)
SELECT 'Students' as table_name, COUNT(*) as remaining FROM "Acadix_studentregistration" WHERE organization_id = 1
UNION ALL
SELECT 'Staff', COUNT(*) FROM "Acadix_employeemaster" WHERE organization_id = 1
UNION ALL
SELECT 'Library Books', COUNT(*) FROM "Library_librarybook" WHERE batch_id IN (SELECT id FROM "Acadix_batch" WHERE organization_id = 1)
UNION ALL
SELECT 'Batches', COUNT(*) FROM "Acadix_batch" WHERE organization_id = 1
UNION ALL
SELECT 'Departments', COUNT(*) FROM "Acadix_department" WHERE organization_id = 1;

-- =====================================================
-- Post-Cleanup Status:
-- - org_id=1 and branch_id=1 preserved
-- - All student, staff, library data deleted
-- - Ready for fresh import
-- =====================================================
