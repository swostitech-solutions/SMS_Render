# Library Book Import - Database Structure & Logic Analysis

## Database Tables (5 Main Tables)

### 1. **LibraryBook** (Main book master table)
- book_code (unique identifier)
- book_name
- book_category_id (FK to BookCategory)
- book_sub_category_id (FK to BookSubCategory)
- library_branch_id (FK to LibraryBranch, optional)
- book_status (e.g., 'ACTIVE', 'INACTIVE')
- no_of_copies (total copies)
- organization_id (FK)
- batch_id (FK)
- publisher, author, publish_year
- volume, edition, pages
- ISBN
- front_cover, back_cover (file paths)
- barcode_auto_generated (boolean)
- academic_year_id (FK)
- createdDate
- allow_issue ('Y'/'N')
- type ('BOOK'/'JOURNAL')
- IssueNo, Period (for journals)
- created_by, updated_by, created_at, updated_at, is_active

### 2. **LibraryPurchase** (Purchase details for each book)
- book_id (FK to LibraryBook)
- purchase_date
- purchase_from (vendor name)
- bill_no
- bill_value (decimal)
- bill_concession (decimal)
- no_of_copies (copies in this purchase)
- created_by, updated_by, created_at, updated_at, is_active

### 3. **LibraryBooksBarcode** (Individual book copies with barcodes)
- book_id (FK to LibraryBook)
- barcode (unique number for each physical copy)
- book_barcode_status (e.g., 'Active', 'Lost', 'Damaged')
- remarks
- barcode_auto_generated (boolean)
- organization_id (FK)
- batch_id (FK)
- location_id (FK to BookLocation, optional)
- created_by, updated_by, created_at, updated_at, is_active

### 4. **BookCategory** (Book categories)
- category_name
- category_description
- organization_id, batch_id
- is_active, created_by, updated_by

### 5. **BookSubCategory** (Book sub-categories)
- category_id (FK to BookCategory)
- sub_category_name
- sub_category_description
- is_active, created_by, updated_by

## Supporting Tables

### 6. **BookLocation** (Physical locations in library)
- book_location (name)
- book_location_desc
- organization_id, batch_id
- is_active, created_by, updated_by

### 7. **LibraryBranch** (Library branches)
- library_branch_id (PK)
- library_branch_name
- organization_id, batch_id
- is_active

### 8. **LibraryBooksIssues** (Book issue/return tracking)
- student_id (FK, optional)
- professor_id (FK, optional)
- book_detail_id (FK to LibraryBooksBarcode)
- issue_date, return_date
- lost ('Y'/'N')
- remarks
- academic_year_id
- issued_by, returned_by
- is_active

---

## Backend Logic (LibraryBookCreateAPIView)

### Transaction Flow:
1. **Parse Request Data**
   - Handles multipart/form-data (for file uploads)
   - Handles application/json
   - Extracts: libraryBookdetails, librarypurchesDetails, libraryBookBarcodeDetails

2. **Validate Foreign Keys**
   - BookCategory (must exist, is_active=True)
   - BookSubCategory (must exist, is_active=True)
   - Organization (must exist, is_active=True)
   - Batch (must exist, is_active=True)
   - AcademicYear (must exist, is_active=True)

3. **Handle Optional LibraryBranch**
   - If library_branch_Id provided:
     - Try to get existing LibraryBranch
     - If not found: **AUTO-CREATE** with name "Branch {id}"

4. **Create LibraryBook Record**
   - Save book master details
   - Upload front_cover and back_cover files (if provided)
   - Store file paths in database

5. **Create LibraryPurchase Records** (Loop)
   - For each purchase detail in librarypurchesDetails array
   - Link to the created LibraryBook

6. **Create LibraryBooksBarcode Records** (Loop)
   - For each barcode detail in libraryBookBarcodeDetails array
   - Handle optional BookLocation:
     - If locationId provided and not found: **AUTO-CREATE** with name "Location {id}"
   - Link to the created LibraryBook

7. **Transaction Commit**
   - All or nothing (atomic transaction)

---

## Frontend Logic (AdmBookMaster.js)

### Key Features:
1. **Barcode Auto-Generation**
   - Checkbox to enable/disable
   - Fetches next available barcode from API: `/LIBRARYBOOK/NextbarcodeNo/`
   - Auto-fills barcode fields sequentially

2. **Dynamic Row Management**
   - Purchase Details Table: Add/remove rows
   - Accession/Barcode Table: Auto-generated based on total copies
   - Total copies = sum of all purchase rows' no_of_copies

3. **Barcode Validation** (if manual entry)
   - API: `/LIBRARYBOOK/LibraryBarcodeValidation/?barcodeList=[...]`
   - Checks if barcodes already exist
   - Prevents duplicate barcodes

4. **Data Structure Sent to Backend**
```json
{
  "libraryBookdetails": {
    "loginId": 1,
    "academicyearId": 1,
    "book_code": "BK001",
    "book_name": "Book Title",
    "library_branch_Id": 1,
    "book_category_Id": 1,
    "book_sub_category_Id": 1,
    "book_status": "ACTIVE",
    "total_no_of_copies": 5,
    "org_id": 1,
    "branch_id": 1,
    "publisher": "Publisher Name",
    "author": "Author Name",
    "publish_year": "2024",
    "volume": 1,
    "edition": "First",
    "pages": 500,
    "barcode_auto_generated": true,
    "ISBN": "978-3-16-148410-0",
    "createdDate": "2024-01-01",
    "allow_issue": "Y",
    "type": "BOOK",
    "IssueNo": null,
    "Period": null
  },
  "librarypurchesDetails": [
    {
      "purchase_date": "2024-01-01",
      "purchase_from": "Vendor Name",
      "bill_no": "BILL001",
      "bill_value": "1500",
      "bill_concession": "50",
      "no_of_copies": "5",
      "created_by": 1
    }
  ],
  "libraryBookBarcodeDetails": [
    {
      "barcode": "1000001",
      "book_barcode_status": "Active",
      "remarks": "",
      "barcode_auto_generated": true,
      "org_id": 1,
      "branch_id": 1,
      "locationId": 1,
      "created_by": 1
    },
    // ... 4 more barcode entries
  ],
  "front_cover": <File>,
  "back_cover": <File>
}
```

---

## SQL Import Requirements

### When importing books via SQL, you MUST:

1. **Insert into LibraryBook first** (get the book_id)

2. **Insert into LibraryPurchase** (link to book_id)

3. **Insert into LibraryBooksBarcode** (one row per physical copy, link to book_id)

4. **Handle Dependencies:**
   - BookCategory must exist
   - BookSubCategory must exist
   - LibraryBranch (optional, can be NULL)
   - BookLocation (optional, can be NULL)
   - Organization, Batch, AcademicYear must exist

5. **Auto-increment Barcodes:**
   - Query current max barcode: `SELECT MAX(barcode) FROM LibraryBooksBarcode`
   - Start from next number
   - Or use manual barcodes from Excel

6. **Required Fields:**
   - book_code (unique)
   - book_name
   - book_category_id
   - book_sub_category_id
   - book_status
   - no_of_copies
   - organization_id
   - batch_id
   - academic_year_id
   - created_by
   - barcode (for each copy in LibraryBooksBarcode)

7. **Optional but Recommended:**
   - publisher, author, publish_year
   - ISBN
   - edition, pages, volume
   - purchase details (date, vendor, bill_no, cost)
   - location for each barcode

---

## Important Logic to Replicate in SQL

### 1. Total Copies Calculation
```sql
-- no_of_copies in LibraryBook should equal:
-- SUM of no_of_copies in all related LibraryPurchase records
-- AND
-- COUNT of LibraryBooksBarcode records for that book
```

### 2. Barcode Generation
```sql
-- If barcode_auto_generated = true:
SELECT COALESCE(MAX(barcode), 1000000) + 1 AS next_barcode
FROM "LibraryBooksBarcode";

-- Then increment for each copy
```

### 3. Default Values
- book_status: 'ACTIVE'
- book_barcode_status: 'Active'
- allow_issue: 'Y'
- type: 'BOOK' (or 'JOURNAL')
- barcode_auto_generated: true
- is_active: true
- createdDate: current_date
- created_at, updated_at: NOW()

### 4. File Uploads
- front_cover and back_cover are file paths
- If importing via SQL, leave NULL or provide existing file paths
- Format: 'Book_cover/filename_uuid.ext'

---

## Excel to SQL Mapping Strategy

### Step 1: Prepare Master Data
```sql
-- Ensure categories exist
INSERT INTO "BookCategory" (category_name, organization_id, batch_id, is_active, created_by, updated_by)
VALUES ('NURSING', 1, 1, true, 1, 1)
ON CONFLICT DO NOTHING;

-- Ensure sub-categories exist
INSERT INTO "BookSubCategory" (category_id, sub_category_name, is_active, created_by, updated_by)
VALUES (
  (SELECT id FROM "BookCategory" WHERE category_name = 'NURSING'),
  'GENERAL NURSING',
  true, 1, 1
)
ON CONFLICT DO NOTHING;
```

### Step 2: Import Books
```sql
-- For each book in Excel:
INSERT INTO "LibraryBook" (
  book_code, book_name, book_category_id, book_sub_category_id,
  book_status, no_of_copies, organization_id, batch_id,
  publisher, author, publish_year, ISBN, edition, pages,
  academic_year_id, barcode_auto_generated, allow_issue, type,
  created_by, updated_by, is_active
) VALUES (
  'BK001',
  'Fundamentals of Nursing',
  (SELECT id FROM "BookCategory" WHERE category_name = 'NURSING'),
  (SELECT id FROM "BookSubCategory" WHERE sub_category_name = 'GENERAL NURSING'),
  'ACTIVE',
  5,
  1,
  1,
  'Elsevier',
  'Potter & Perry',
  '2023',
  '978-0-323-67765-0',
  '10th Edition',
  1200,
  (SELECT id FROM "Acadix_academicyear" WHERE academic_year_code = '1st year' LIMIT 1),
  true,
  'Y',
  'BOOK',
  1,
  1,
  true
) RETURNING id;
```

### Step 3: Import Purchase Details
```sql
INSERT INTO "LibraryPurchase" (
  book_id, purchase_date, purchase_from, bill_no,
  bill_value, bill_concession, no_of_copies,
  created_by, updated_by, is_active
) VALUES (
  (SELECT id FROM "LibraryBook" WHERE book_code = 'BK001'),
  '2024-01-15',
  'Medical Book Store',
  'BILL2024001',
  7500.00,
  500.00,
  5,
  1,
  1,
  true
);
```

### Step 4: Import Barcodes (one per copy)
```sql
-- Get next barcode
WITH next_barcode AS (
  SELECT COALESCE(MAX(barcode), 1000000) + 1 AS barcode
  FROM "LibraryBooksBarcode"
)
-- Insert 5 barcodes for 5 copies
INSERT INTO "LibraryBooksBarcode" (
  book_id, barcode, book_barcode_status, remarks,
  barcode_auto_generated, organization_id, batch_id,
  location_id, created_by, updated_by, is_active
)
SELECT
  (SELECT id FROM "LibraryBook" WHERE book_code = 'BK001'),
  (SELECT barcode FROM next_barcode) + (row_number() OVER () - 1),
  'Active',
  '',
  true,
  1,
  1,
  NULL,
  1,
  1,
  true
FROM generate_series(1, 5);
```

---

## Summary for SQL Import

**3-Table Insert Pattern:**
1. LibraryBook (1 row per book title)
2. LibraryPurchase (1+ rows per book, one per purchase transaction)
3. LibraryBooksBarcode (N rows per book, one per physical copy)

**Key Constraints:**
- no_of_copies in LibraryBook = COUNT(*) in LibraryBooksBarcode for that book
- SUM(no_of_copies) in LibraryPurchase should = no_of_copies in LibraryBook
- Each barcode must be unique across entire table
- book_code should be unique

**Auto-Creation Logic:**
- LibraryBranch: Can be auto-created if ID provided but doesn't exist
- BookLocation: Can be auto-created if ID provided but doesn't exist
- Both are optional (can be NULL)
