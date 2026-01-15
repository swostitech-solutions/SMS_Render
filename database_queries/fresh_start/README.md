# FRESH START EXECUTION GUIDE
## Complete Database Rebuild with org_id=1, branch_id=1

---

## 📋 OVERVIEW

This guide provides step-by-step instructions to:
1. **DELETE** all existing data (students, staff, library, batches, etc.)
2. **REBUILD** with new student data from 3 Excel files
3. **IMPORT** all library books (1,636 books)

### Key Configuration
- **org_id**: 1
- **branch_id**: 1
- **Total New Students**: 148 (47 B.Sc. + 26 GNM 2025-2028 + 75 GNM 2023-2024)
- **Total Library Books**: 1,636 (1,484 original + 152 invoices)
- **Staff**: No new staff (B.Sc. Staff Details sheet is empty)

---

## ⚠️ CRITICAL - BEFORE EXECUTION

### 1. BACKUP DATABASE
**MANDATORY**: Create a full database backup before running any SQL.

```bash
# Example backup command (adjust for your database)
pg_dump -h <host> -U <user> -d schoolmanagement_8r7x > backup_$(date +%Y%m%d_%H%M%S).sql
```

### 2. VERIFY org_id and branch_id
Ensure your database has:
- `org_id = 1` in Acadix_organization
- `branch_id = 1` in Acadix_branch

```sql
SELECT * FROM "Acadix_organization" WHERE id = 1;
SELECT * FROM "Acadix_branch" WHERE id = 1;
```

---

## 📁 SQL FILES GENERATED

All files are in: `database_queries/fresh_start/`

### Phase 1: Cleanup
- `00_complete_cleanup.sql` - Deletes ALL data (students, staff, library, batches, etc.)

### Phase 2: Students (Execute in Order)
- `01_bsc_2023_2027_students.sql` - 47 B.Sc. Nursing 2nd Year students
- `02_gnm_2025_2028_students.sql` - 26 GNM 1st Year students
- `03_gnm_2023_2024_students.sql` - 75 GNM 3rd Year students

### Phase 3: Library (Execute in Order)
- `04a_library_master_data_setup.sql` - Categories, subcategories, library branch
- `04_library_books_original.sql` - 1,484 original books
- `05a_invoice_books_setup.sql` - Invoice book categories
- `05_library_books_invoices.sql` - 152 invoice books

---

## 🚀 EXECUTION ORDER

### STEP 1: Complete Cleanup
**⚠️ WARNING**: This deletes ALL data. Ensure backup is complete.

```sql
-- Execute: 00_complete_cleanup.sql
-- Expected result: All students, staff, library, batches deleted
-- Verification: Should show 0 for all counts
```

**Verification Query**:
```sql
SELECT 'Students' as table_name, COUNT(*) as remaining FROM "Acadix_studentregistration" WHERE org_id = 1
UNION ALL
SELECT 'Staff', COUNT(*) FROM "STAFF_staffregistration" WHERE org_id = 1
UNION ALL
SELECT 'Library Books', COUNT(*) FROM "Library_librarybook" WHERE batch_id IN (SELECT id FROM "Acadix_batch" WHERE org_id = 1)
UNION ALL
SELECT 'Batches', COUNT(*) FROM "Acadix_batch" WHERE org_id = 1;
```

Expected output: All counts = 0

---

### STEP 2: Import Students

#### 2.1 B.Sc. Nursing 2nd Year (2023-2027)
```sql
-- Execute: 01_bsc_2023_2027_students.sql
-- Expected: 47 students imported
```

**Verification**:
```sql
SELECT COUNT(*) as total_students 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027' AND org_id = 1);
-- Expected: 47
```

#### 2.2 GNM 1st Year (2025-2028)
```sql
-- Execute: 02_gnm_2025_2028_students.sql
-- Expected: 26 students imported
```

**Verification**:
```sql
SELECT COUNT(*) as total_students 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'GNM-2025-2028' AND org_id = 1);
-- Expected: 26
```

#### 2.3 GNM 3rd Year (2023-2024)
```sql
-- Execute: 03_gnm_2023_2024_students.sql
-- Expected: 75 students imported
```

**Verification**:
```sql
SELECT COUNT(*) as total_students 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'GNM-2023-2024' AND org_id = 1);
-- Expected: 75
```

**Total Students Verification**:
```sql
SELECT COUNT(*) as total_all_students 
FROM "Acadix_studentregistration" 
WHERE org_id = 1;
-- Expected: 148
```

---

### STEP 3: Import Library Books

#### 3.1 Library Master Data Setup
```sql
-- Execute: 04a_library_master_data_setup.sql
-- Creates: LIBRARY-SHARED batch, categories, subcategories, library branch
```

**Verification**:
```sql
SELECT batch_code, batch_name FROM "Acadix_batch" WHERE batch_code = 'LIBRARY-SHARED';
SELECT COUNT(*) as categories FROM "Library_bookcategory";
SELECT COUNT(*) as subcategories FROM "Library_booksubcategory";
```

#### 3.2 Original Library Books
```sql
-- Execute: 04_library_books_original.sql
-- Expected: 1,484 books imported
```

**Verification**:
```sql
SELECT COUNT(*) FROM "Library_librarybook" 
WHERE book_code LIKE 'LIB%';
-- Expected: 1,484
```

#### 3.3 Invoice Book Categories
```sql
-- Execute: 05a_invoice_books_setup.sql
-- Creates: Invoice book categories
```

#### 3.4 Invoice Books
```sql
-- Execute: 05_library_books_invoices.sql
-- Expected: 152 books imported
```

**Verification**:
```sql
SELECT COUNT(*) FROM "Library_librarybook" 
WHERE book_code LIKE 'INV%';
-- Expected: 152
```

**Total Books Verification**:
```sql
SELECT COUNT(*) as total_books FROM "Library_librarybook";
-- Expected: 1,636

SELECT COUNT(*) as total_barcodes FROM "Library_librarybooksbarcode";
-- Expected: 1,636
```

---

## ✅ FINAL VERIFICATION

Run this comprehensive check after all imports:

```sql
-- Database Summary
SELECT 
    'Students' as entity,
    COUNT(*) as total
FROM "Acadix_studentregistration" 
WHERE org_id = 1
UNION ALL
SELECT 'B.Sc. Students', COUNT(*) 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'BSC-2023-2027')
UNION ALL
SELECT 'GNM 2025-2028', COUNT(*) 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'GNM-2025-2028')
UNION ALL
SELECT 'GNM 2023-2024', COUNT(*) 
FROM "Acadix_studentregistration" 
WHERE batch_id = (SELECT id FROM "Acadix_batch" WHERE batch_code = 'GNM-2023-2024')
UNION ALL
SELECT 'Library Books', COUNT(*) FROM "Library_librarybook"
UNION ALL
SELECT 'Original Books', COUNT(*) FROM "Library_librarybook" WHERE book_code LIKE 'LIB%'
UNION ALL
SELECT 'Invoice Books', COUNT(*) FROM "Library_librarybook" WHERE book_code LIKE 'INV%'
UNION ALL
SELECT 'Barcodes', COUNT(*) FROM "Library_librarybooksbarcode"
UNION ALL
SELECT 'Batches', COUNT(*) FROM "Acadix_batch" WHERE org_id = 1;
```

### Expected Results:
| Entity | Total |
|--------|-------|
| Students | 148 |
| B.Sc. Students | 47 |
| GNM 2025-2028 | 26 |
| GNM 2023-2024 | 75 |
| Library Books | 1,636 |
| Original Books | 1,484 |
| Invoice Books | 152 |
| Barcodes | 1,636 |
| Batches | 4 |

---

## 📊 BATCH DETAILS

### Student Batches:
1. **BSC-2023-2027** - B.Sc. Nursing 2nd Year (3rd Year, 5th Semester)
2. **GNM-2025-2028** - GNM 1st Year (1st Year, 1st Semester)
3. **GNM-2023-2024** - GNM 3rd Year (3rd Year, 3rd Semester)

### Library Batch:
4. **LIBRARY-SHARED** - All library books

---

## 🔍 TROUBLESHOOTING

### Issue: "Batch not found"
- Ensure previous SQL files executed successfully
- Check batch creation in each student SQL file

### Issue: "Course not found"
- Ensure BSC-NURS and GNM courses exist in Acadix_course
- These should already exist from initial setup

### Issue: "Foreign key constraint violation"
- Execute files in exact order listed
- Don't skip setup files (04a, 05a)

### Issue: "Duplicate entry"
- Some files use `ON CONFLICT DO NOTHING`
- Check if data already exists before re-running

---

## 📝 NOTES

1. **Staff**: No new staff imported (B.Sc. Staff Details sheet is empty)
2. **org_id and branch_id**: All data uses org_id=1, branch_id=1
3. **Courses**: Uses existing BSC-NURS and GNM courses
4. **Library Batch**: LIBRARY-SHARED batch is independent of student batches

---

## 🎯 SUCCESS CRITERIA

✅ All 148 students imported successfully  
✅ All 1,636 library books imported with barcodes  
✅ 4 batches created (3 student + 1 library)  
✅ All verification queries return expected counts  
✅ No errors in database logs  

---

## 📞 SUPPORT

If you encounter issues:
1. Check error message carefully
2. Verify org_id and branch_id are correct
3. Ensure backup is available for rollback
4. Review execution order

---

**Generated**: January 14, 2026  
**Database**: schoolmanagement_8r7x  
**Configuration**: org_id=1, branch_id=1  
**Total Files**: 9 SQL files
