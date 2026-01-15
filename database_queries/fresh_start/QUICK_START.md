# QUICK START - Fresh Database Build

## 🎯 Goal
Complete clean slate rebuild with org_id=1, branch_id=1

## 📦 What You'll Get
- ✅ 148 students (47 B.Sc. + 26 GNM 2025 + 75 GNM 2023)
- ✅ 1,636 library books (1,484 original + 152 invoices)
- ✅ 0 staff (Staff Details sheet was empty)

## ⚡ Quick Execution

### 1. Backup First! 🚨
```bash
# Create backup before proceeding
pg_dump -h <host> -U <user> -d schoolmanagement_8r7x > backup.sql
```

### 2. Execute in Order
```
cd database_queries/fresh_start/

1. 00_complete_cleanup.sql          (Delete everything)
2. 01_bsc_2023_2027_students.sql    (47 students)
3. 02_gnm_2025_2028_students.sql    (26 students)
4. 03_gnm_2023_2024_students.sql    (75 students)
5. 04a_library_master_data_setup.sql (Library setup)
6. 04_library_books_original.sql     (1,484 books)
7. 05a_invoice_books_setup.sql       (Invoice categories)
8. 05_library_books_invoices.sql     (152 books)
```

### 3. Verify
```sql
SELECT COUNT(*) FROM "Acadix_studentregistration" WHERE org_id = 1;
-- Expected: 148

SELECT COUNT(*) FROM "Library_librarybook";
-- Expected: 1,636
```

## ✅ Success
- Students: 148 ✓
- Books: 1,636 ✓
- Batches: 4 (BSC-2023-2027, GNM-2025-2028, GNM-2023-2024, LIBRARY-SHARED) ✓

## 📖 Full Documentation
See [README.md](README.md) for detailed instructions and troubleshooting.
