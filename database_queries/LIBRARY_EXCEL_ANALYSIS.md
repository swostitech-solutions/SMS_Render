# LIBRARY EXCEL FILES - STRUCTURE ANALYSIS

## 📊 Overview

**Total Files:** 4  
**Total Books:** ~173 unique titles  
**Total Copies:** ~948 physical books  
**Vendor:** PADMALAYA

---

## 📁 File Details

### **File 1: PADMALAYA INV. 38 (29-06-2024)**
- **Rows:** 91 books
- **Copies:** 856
- **Header Row:** 3
- **Columns:**
  - Sln. (Serial Number)
  - Category (e.g., "Nursing")
  - SubCategory (e.g., "Nursing")
  - Title (Book Name)
  - Author
  - Pub. (Publisher)
  - QTY (Quantity/Copies)
  - Price (Per book)

### **File 2: PADMALAYA INV. 53 (06-08-2024)**
- **Rows:** 10 books
- **Copies:** 48
- **Header Row:** 3
- **Same structure as File 1**

### **File 3: PADMALAYA INV. 104 (21-08-2025)** ⚠️
- **Rows:** 55 books
- **Copies:** Not calculated (QTY column issue)
- **Header Row:** Different structure
- **Issue:** Header row seems to be at different position

### **File 4: PADMALAYA INV. 116 (26-08-2025)**
- **Rows:** 17 books
- **Copies:** 44
- **Header Row:** 3
- **Columns:**
  - Sln.
  - Categoey (typo in source)
  - Subcategoey (typo in source)
  - Title
  - Author
  - Pub.
  - Con (unknown - possibly condition/version)
  - QTY
  - Price

---

## 🔑 Key Columns for Import

### **Essential Data Available:**
1. **Title** - Book name ✅
2. **Author** - Author name ✅
3. **Publisher** (Pub.) ✅
4. **Category** - Book category ✅
5. **SubCategory** - Book sub-category ✅
6. **QTY** - Number of copies ✅
7. **Price** - Cost per book ✅

### **Missing Data (Need defaults):**
- ISBN ❌
- Volume ❌
- Edition ❌
- Pages ❌
- Book Code (need to generate) ❌
- Publication Year ❌
- Library Branch ❌
- Location ❌

---

## 🎯 Import Strategy

### **Approach 1: One Purchase Per Invoice** (Recommended)
Each Excel file = One purchase transaction

**Benefits:**
- Matches real-world scenario (invoice = purchase)
- Easy to track by invoice number
- Purchase date from filename

**Example:**
```
Invoice INV-38 (29-06-2024):
  - 1 LibraryPurchase record (bill_no = "INV-38", purchase_date = "29-06-2024")
  - Contains 91 books
  - 856 total copies
  
  For each book:
    - 1 LibraryBook record
    - 1+ LibraryBooksBarcode records (based on QTY)
```

### **Approach 2: One Purchase Per Book**
Each book = Separate purchase

**Benefits:**
- More granular tracking
- Can have different prices per book

**Drawback:**
- Not accurate to real invoice structure

---

## 📝 Data Mapping

### **Excel → Database Mapping:**

```
Excel Column          → Database Table.Field
=====================================
Title                 → LibraryBook.book_name
Author                → LibraryBook.author
Pub.                  → LibraryBook.publisher
Category              → BookCategory.category_name (lookup/create)
SubCategory           → BookSubCategory.sub_category_name (lookup/create)
QTY                   → LibraryBook.no_of_copies
                      → LibraryPurchase.no_of_copies
                      → COUNT(LibraryBooksBarcode) 
Price                 → LibraryPurchase.bill_value (Price × QTY)
Invoice No.           → LibraryPurchase.bill_no
Invoice Date          → LibraryPurchase.purchase_date
Vendor (PADMALAYA)    → LibraryPurchase.purchase_from
```

### **Generated Fields:**

```
book_code             → Auto-generate (e.g., "BK001", "BK002", ...)
barcode               → Auto-generate sequential (1000001, 1000002, ...)
book_status           → "Active"
book_barcode_status   → "Available"
allow_issue           → "T"
type                  → "BOOK"
barcode_auto_generated→ true
academic_year_id      → Current academic year (get from DB)
organization_id       → 1 (or from config)
batch_id              → 1 (or from config)
library_branch_id     → NULL or default
location_id           → NULL (assign later)
```

---

## ⚠️ Data Quality Issues

### **1. Missing Critical Info:**
- No ISBN numbers
- No edition/volume info
- No publication year
- No book codes

### **2. Inconsistent Naming:**
- "Categoey" vs "Category" (typos)
- "Subcategoey" vs "SubCategory"

### **3. Excel Structure Variance:**
- File 3 (INV-104) has different header structure
- Need to handle each file individually

### **4. Category/SubCategory:**
- Most are "Nursing" / "Nursing"
- Need to check if these categories exist in DB
- May need to create them first

---

## 🔧 Pre-Import Requirements

### **1. Check Existing Categories:**
```sql
SELECT id, category_name FROM "BookCategory" 
WHERE category_name = 'NURSING' OR category_name = 'Nursing';

SELECT id, sub_category_name, category_id 
FROM "BookSubCategory" 
WHERE sub_category_name = 'NURSING' OR sub_category_name = 'Nursing';
```

### **2. Get Next Book Code:**
```sql
SELECT COALESCE(MAX(CAST(SUBSTRING(book_code, 3) AS INTEGER)), 0) + 1 
FROM "LibraryBook" 
WHERE book_code LIKE 'BK%';
```

### **3. Get Next Barcode:**
```sql
SELECT COALESCE(MAX(barcode), 1000000) + 1 
FROM "LibraryBooksBarcode";
```

### **4. Get Academic Year:**
```sql
SELECT id FROM "Acadix_academicyear" 
WHERE is_active = true 
ORDER BY id DESC 
LIMIT 1;
```

---

## 📋 Import Workflow

### **Step 1: Create/Verify Categories**
```python
categories_needed = ['Nursing']  # From Excel
# Check if exists, create if not
```

### **Step 2: Process Each Invoice File**
```python
For each invoice file:
  1. Read Excel with correct header row
  2. Extract invoice metadata (number, date)
  3. Create ONE LibraryPurchase record
  4. For each book row:
     a. Generate book_code
     b. Insert LibraryBook
     c. Insert LibraryPurchase detail (optional, or use file-level)
     d. Generate QTY number of barcodes
     e. Insert LibraryBooksBarcode (QTY rows)
```

### **Step 3: Validation**
```python
For each invoice:
  - SUM(LibraryPurchase.no_of_copies) = total QTY from Excel
  - COUNT(LibraryBooksBarcode) = SUM(QTY from all books)
  - All barcodes are unique
  - All book_codes are unique
```

---

## 💡 Recommendations

### **1. Use Invoice-Based Import:**
- One Python script per invoice file
- Easier to debug
- Matches real purchase workflow

### **2. Generate Book Codes Sequentially:**
```
BK001, BK002, BK003, ...
```
Starting from max existing + 1

### **3. Generate Barcodes Sequentially:**
```
Get MAX(barcode) → Start from next
1000050, 1000051, 1000052, ...
```

### **4. Default Values:**
```python
defaults = {
    'book_status': 'Active',
    'allow_issue': 'T',
    'type': 'BOOK',
    'barcode_auto_generated': True,
    'book_barcode_status': 'Available',
    'ISBN': None,
    'edition': None,
    'volume': None,
    'pages': None,
    'publish_year': None,
    'library_branch_id': None,
    'location_id': None
}
```

### **5. Purchase Details:**
```python
purchase_details = {
    'purchase_from': 'PADMALAYA',
    'bill_no': 'INV-38',
    'purchase_date': '2024-06-29',
    'bill_value': sum(Price × QTY),
    'bill_concession': 0,
    'no_of_copies': sum(QTY)
}
```

---

## 🚀 Next Steps

1. **Query Database** for:
   - Existing categories
   - Next book_code number
   - Next barcode number
   - Current academic year

2. **Create Category/SubCategory** (if missing):
   - "Nursing" → "Nursing"

3. **Generate Import Scripts:**
   - One Python script to generate SQL INSERT statements
   - Or direct Python + SQLAlchemy insertion

4. **Validate After Import:**
   - Check totals match
   - Verify all barcodes unique
   - Test book search/issue functionality

---

## 📄 Sample Book Entry

```
Title: "ESSENTIALS OF ADULT HEALTH NURS-I"
Author: "D. SETHI"
Publisher: "JAYPEE"
Category: "Nursing"
SubCategory: "Nursing"
QTY: 5
Price: 795

Will create:
  1 LibraryBook (book_code: BK001, no_of_copies: 5)
  1 LibraryPurchase (part of INV-38, no_of_copies: 5)
  5 LibraryBooksBarcode (barcodes: 1000050-1000054)
```
