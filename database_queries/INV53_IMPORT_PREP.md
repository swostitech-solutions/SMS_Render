# INV-53 IMPORT PREPARATION

## 📋 Invoice Details
- **Invoice Number:** PADMALAYA-INV-53
- **Invoice Date:** 06-08-2024
- **Vendor:** PADMALAYA
- **Total Books:** 8 unique titles
- **Total Copies:** 24 physical books
- **Total Bill Value:** ₹34,280.00

---

## 📚 Books in This Invoice

| # | Title | Author | Publisher | Category | QTY | Price |
|---|-------|--------|-----------|----------|-----|-------|
| 1 | TB OF ADULT HEALTH NURSING-I | I. CLEMENT | EMMESS | Nursing | 5 | ₹1,195 |
| 2 | TEXTBOOK OF PATHOLOGY, GENETICS & PHARMACOLOGY-I | KRISHNARAJ | EMMESS | Nursing | 5 | ₹895 |
| 3 | PPLIED PHARMACOLOGY | B.HAZRA | SN PUBLICATIONS | Nursing | 2 | ₹1,495 |
| 4 | TEXTBOOK OF BIOCHEMISTRY FOR GNM | I. CLEMENT | EMMESS | Nursing | 2 | ₹895 |
| 5 | TEXTBOOK OF PATHOLOGY FOR GNM | I. CLEMENT | EMMESS | Nursing | 2 | ₹895 |
| 6 | PHARMACOLOGY | N. SURESH | SN PUBLICATIONS | Nursing | 3 | ₹990 |
| 7 | TEXTBOOK OF SOCIOLOGY & HEALTH EDUCATION | I. CLEMENT | EMMESS | Nursing | 3 | ₹995 |
| 8 | TEXTBOOK OF OBSTETRICS & MIDWIFERY | N. CLEMENT | EMMESS | Nursing | 2 | ₹1,975 |

---

## 🎯 Import Requirements

### Categories/SubCategories Needed:
- **Category:** "NURSING" or "Nursing"
- **SubCategory:** "NURSING" or "Nursing"

### Publishers:
- EMMESS
- SN PUBLICATIONS

### Data to Generate:
- Book codes: BK001, BK002, BK003... (8 codes)
- Barcodes: 24 sequential barcodes (total copies)

---

## 🔍 Database Queries to Run

**I've created a file:** `check_db_before_inv53.sql`

Please run these 10 queries and give me the results:

### **QUERY 1: Check Category**
```sql
SELECT id, category_name FROM "BookCategory"
WHERE UPPER(category_name) LIKE '%NURSING%' AND is_active = true;
```
**Need:** category_id

### **QUERY 2: Check SubCategory**
```sql
SELECT id, sub_category_name, category_id FROM "BookSubCategory"
WHERE UPPER(sub_category_name) LIKE '%NURSING%' AND is_active = true;
```
**Need:** subcategory_id

### **QUERY 3: Next Book Code**
```sql
SELECT COALESCE(MAX(CAST(REGEXP_REPLACE(book_code, '[^0-9]', '', 'g') AS INTEGER)), 0) + 1 
FROM "LibraryBook" WHERE book_code ~ '^BK[0-9]+$';
```
**Need:** Starting number for BK001, BK002...

### **QUERY 4: Next Barcode**
```sql
SELECT COALESCE(MAX(barcode), 1000000) + 1 FROM "LibraryBooksBarcode";
```
**Need:** Starting barcode number

### **QUERY 5: Academic Year**
```sql
SELECT id FROM "Acadix_academicyear" WHERE is_active = true LIMIT 1;
```
**Need:** academic_year_id

### **QUERY 6: Organization & Batch**
```sql
SELECT o.id AS org_id, b.id AS batch_id 
FROM "Acadix_organization" o 
CROSS JOIN "Acadix_batch" b 
WHERE o.is_active = true AND b.is_active = true LIMIT 1;
```
**Need:** org_id and batch_id

### **QUERY 7-10:** Optional (LibraryBranch, Location, User)

---

## 📊 What I Need From You

Please run the queries in `check_db_before_inv53.sql` and provide:

1. **category_id** (from QUERY 1) - e.g., `1`
2. **subcategory_id** (from QUERY 2) - e.g., `1`
3. **next_book_code_number** (from QUERY 3) - e.g., `1` (will become BK001)
4. **next_barcode** (from QUERY 4) - e.g., `1000001`
5. **academic_year_id** (from QUERY 5) - e.g., `1`
6. **organization_id** (from QUERY 6) - e.g., `1`
7. **batch_id** (from QUERY 6) - e.g., `1`
8. **created_by** (user_id) - Usually `1`

**Format:**
```
category_id = 1
subcategory_id = 1
next_book_code = 1
next_barcode = 1000001
academic_year_id = 1
org_id = 1
batch_id = 1
created_by = 1
```

---

## ⚠️ If Category/SubCategory Don't Exist

I've included CREATE statements in the SQL file. Let me know and I'll help create them.

---

## 🚀 After You Provide Values

Once you give me these values, I will:

1. ✅ Generate complete SQL INSERT scripts
2. ✅ Create 8 LibraryBook records (BK001-BK008)
3. ✅ Create 1 LibraryPurchase record (INV-53)
4. ✅ Create 24 LibraryBooksBarcode records (sequential barcodes)
5. ✅ Include validation queries to verify

All ready and waiting for your database values! 🎯
