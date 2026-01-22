# INV-53 IMPORT - READY TO EXECUTE

## ✅ Database Values Collected

```
category_id      = 29
subcategory_id   = 46
next_book_code   = 1 (BK001-BK008)
next_barcode     = 1000001 (1000001-1000024)
org_id           = 1
batch_id         = 23
created_by       = 2
```

## 📋 What Will Be Created

### Books (8):
1. BK001 - TB OF ADULT HEALTH NURSING-I (5 copies)
2. BK002 - TEXTBOOK OF PATHOLOGY, GENETICS & PHARMACOLOGY-I (5 copies)
3. BK003 - APPLIED PHARMACOLOGY (2 copies)
4. BK004 - TEXTBOOK OF BIOCHEMISTRY FOR GNM (2 copies)
5. BK005 - TEXTBOOK OF PATHOLOGY FOR GNM (2 copies)
6. BK006 - PHARMACOLOGY (3 copies)
7. BK007 - TEXTBOOK OF SOCIOLOGY & HEALTH EDUCATION (3 copies)
8. BK008 - TEXTBOOK OF OBSTETRICS & MIDWIFERY (2 copies)

### Purchases (8):
- One purchase record per book
- Invoice: PADMALAYA-INV-53
- Date: 06-08-2024
- Total: ₹34,280

### Barcodes (24):
- Sequential: 1000001 to 1000024
- Status: Available
- Auto-generated: true

---

## 🚀 HOW TO EXECUTE

### **Step 1: Get Academic Year ID**
Run this query first:
```sql
SELECT id, academic_year_code 
FROM "Acadix_academicyear" 
WHERE is_active = true 
ORDER BY id DESC 
LIMIT 1;
```

**Copy the `id` value** (e.g., 5)

---

### **Step 2: Update the SQL File**
Open `import_inv53.sql` and replace ALL instances of:
```
@ACADEMIC_YEAR_ID@
```
with the actual ID (e.g., `5`)

---

### **Step 3: Execute the Script**
Run the entire `import_inv53.sql` file in pgAdmin or psql.

It will:
1. ✅ Insert 8 LibraryBook records
2. ✅ Insert 8 LibraryPurchase records
3. ✅ Insert 24 LibraryBooksBarcode records
4. ✅ Run verification queries

---

### **Step 4: Verify Results**
The script includes verification queries at the end. Check:

**Expected Results:**
```
total_books           = 8
total_from_books      = 24
total_from_purchases  = 24
total_barcodes        = 24
```

All four values should be correct!

---

## ⚠️ BEFORE RUNNING

1. ✅ Get academic_year_id (Step 1)
2. ✅ Replace @ACADEMIC_YEAR_ID@ in SQL file
3. ✅ Backup database (optional but recommended)
4. ✅ Run in a transaction (already wrapped in BEGIN/COMMIT)

---

## 📊 After Import

Books will be:
- ✅ Searchable in Book Search
- ✅ Available for Issue
- ✅ Tracked by barcode
- ✅ Linked to purchase invoice

**Ready to execute!** 🎯
