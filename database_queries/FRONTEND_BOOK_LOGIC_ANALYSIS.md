# FRONTEND ANALYSIS - Book Master Form Logic

## Complete Workflow Analysis

### **Form State Management**

#### 1. **Book Details State**
```javascript
const [bookDetails, setBookDetails] = useState({
  book_code: "",
  book_name: "",
  publisher: "",
  author: "",
  publish_year: "",
  volume: "",
  ISBN: "",
  edition: "",
  pages: "",
  type: "",
  total_no_of_copies: 0,  // AUTO-CALCULATED
  book_status: "ACTIVE",
  front_cover: "",
  back_cover: "",
});
```

#### 2. **Purchase Rows State**
```javascript
const initialRows = [{
  id: 1,
  dateOfPurchase: "",
  purchasedFrom: "",
  billNo: "",
  noOfCopies: "",
  cost: "",
  concession: "",
}];
const [rows, setRows] = useState(initialRows);
```

#### 3. **Accession/Barcode Rows State**
```javascript
const [accessionRows, setAccessionRows] = useState([]);
// Each row:
{
  id: uniqueId,
  barcode: "",
  location: "",
  status: "Available",
  remarks: ""
}
```

---

## **CRITICAL AUTO-CALCULATION LOGIC**

### **1. Total Copies Calculation**
**Location:** `handleNoOfCopiesChange` function (line 4935-4956)

**Logic:**
```javascript
const handleNoOfCopiesChange = (id, field, value) => {
  // Update purchase row
  const updatedRows = rows.map((row) =>
    row.id === id ? { ...row, [field]: value } : row
  );
  setRows(updatedRows);

  // AUTO-CALCULATE total_no_of_copies
  const totalCopies = updatedRows.reduce(
    (sum, row) => sum + (parseInt(row.noOfCopies) || 0),
    0
  );

  // Update bookDetails.total_no_of_copies
  setBookDetails((prevDetails) => ({
    ...prevDetails,
    total_no_of_copies: totalCopies,
  }));

  // Update accession rows to match total copies
  updateAccessionRows(updatedRows, isChecked ? nextBarcode : null);
};
```

**Key Point:** 
`total_no_of_copies` = SUM of all `noOfCopies` in purchase rows
This is AUTOMATICALLY calculated, NOT manually entered!

---

### **2. Accession Rows Auto-Generation**
**Location:** `updateAccessionRows` function (line 4958-4999)

**Logic:**
```javascript
const updateAccessionRows = (rows, startingBarcode) => {
  // Calculate total copies from purchase rows
  const totalCopies = rows.reduce(
    (sum, row) => sum + (parseInt(row.noOfCopies) || 0),
    0
  );

  // Generate exactly totalCopies number of accession rows
  const newAccessionRows = [];
  
  for (let i = 0; i < totalCopies; i++) {
    if (existingRowIndex < accessionRows.length) {
      // Preserve existing row data
      newAccessionRows.push({
        ...existingRow,
        barcode: startingBarcode 
          ? (parseInt(startingBarcode) + i).toString()
          : existingRow.barcode || "",
        status: existingRow.status || "Available",
      });
    } else {
      // Create new row
      newAccessionRows.push({
        id: Date.now() + i,
        barcode: starting Barcode 
          ? (parseInt(startingBarcode) + i).toString()
          : "",
        location: "",
        status: "Available",
        remarks: "",
      });
    }
  }

  setAccessionRows(newAccessionRows);
};
```

**Key Points:**
- Number of accession rows = total_no_of_copies (from purchase rows)
- If auto-generate enabled: barcodes are sequential (1000001, 1000002, ...)
- If manual: user must fill all barcodes
- Default status: "Available"

---

## **VALIDATION LOGIC**

### **Pre-Submission Checks** (handleSave - line 5264-5455)

#### 1. **Required Fields**
```javascript
if (!bookDetails?.book_code || !bookDetails?.book_name) {
  alert("Book Code and Book Name are required.");
  return;
}
```

#### 2. **Accession Rows Must Exist**
```javascript
if (!accessionRows || accessionRows.length === 0) {
  alert("Please add at least one accession row with barcode details.");
  return;
}
```

#### 3. **Status Required for All Barcode Rows**
```javascript
const hasBlankStatus = accessionRows.some(
  (row) => !row.status || row.status.trim() === ""
);
if (hasBlankStatus) {
  alert("Please select a status for all barcode rows.");
  return;
}
```

#### 4. **Barcode Validation (Manual Entry Only)**
```javascript
if (!isChecked && !isUpdate) {
  const barcodeList = accessionRows
    .map((item) => item.barcode)
    .filter((barcode) => barcode && String(barcode).trim() !== "");

  // All barcodes must be filled
  if (barcodeList.length !== accessionRows.length) {
    alert("Please fill all barcode fields or enable auto-generate.");
    return;
  }

  // Check for duplicates via API
  const response = await fetch(
    `${ApiUrl}/LIBRARYBOOK/LibraryBarcodeValidation/?barcodeList=[...]`
  );
  
  if (validationData.exists) {
    alert("Some of the entered barcodes already exist.");
    return;
  }
}
```

#### 5. **At Least One Barcode with Barcode Number**
```javascript
const libraryBookBarcodeDetails = accessionRows
  .filter((row) => row.barcode && String(row.barcode).trim() !== "")
  .map(...);

if (!libraryBookBarcodeDetails.length) {
  alert("At least one barcode detail with barcode number is required.");
  return;
}
```

#### 6. **At Least One Purchase with Copies**
```javascript
const librarypurchesDetails = rows
  .filter((row) => row.noOfCopies && parseInt(row.noOfCopies) > 0)
  .map(...);

if (!librarypurchesDetails.length) {
  alert("Please add at least one purchase detail with number of copies.");
  return;
}
```

---

## **DATA SUBMISSION STRUCTURE**

### **FormData Payload**

```javascript
const formData = new FormData();

// 1. File uploads
formData.append("front_cover", frontCover.file);
formData.append("back_cover", backCover.file);

// 2. Book details (JSON string)
formData.append("libraryBookdetails", JSON.stringify({
  loginId,
  academicyearId,
  book_code,
  book_name,
  library_branch_Id,
  book_category_Id,
  book_sub_category_Id,
  book_status: "Active",        // HARDCODED
  total_no_of_copies: parseInt(total_no_of_copies),
  publisher,
  author,
  publish_year,
  edition,
  volume: parseInt(volume) || null,
  ISBN,
  createdDate: "2024-01-01",    // Current date
  IssueNo: "ISS123",
  Period: "Annual",
  org_id,
  branch_id,
  allow_issue: "T",             // HARDCODED
  type: "BOOK" or "JOURNAL",
}));

// 3. Purchase details (JSON string array)
formData.append("librarypurchesDetails", JSON.stringify([
  {
    purchase_date: dateOfPurchase || current_date,
    purchase_from: purchasedFrom || "",
    bill_no: billNo || "",
    bill_value: cost.toString() || "0",
    bill_concession: concession.toString() || "0",
    no_of_copies: noOfCopies.toString() || "1",
    created_by: loginId,
  }
  // ... more purchase rows
]));

// 4. Barcode details (JSON string array)
formData.append("libraryBookBarcodeDetails", JSON.stringify([
  {
    barcode: barcode,
    book_barcode_status: status || "Available",
    org_id,
    branch_id,
    locationId: location || null,
    created_by: loginId,
    remarks: remarks || "",
    barcode_auto_generated: isChecked,
  }
  // ... exactly total_no_of_copies rows
]));
```

---

## **KEY CONSTRAINTS FOR SQL IMPORT**

### **1. Data Consistency Rules**

✅ **RULE 1: Total Copies = Accession Count**
```
LibraryBook.no_of_copies 
  = COUNT(LibraryBooksBarcode WHERE book_id = ...)
  = SUM(LibraryPurchase.no_of_copies WHERE book_id = ...)
```

✅ **RULE 2: Each Physical Copy Needs a Barcode**
- If book has 5 copies → Must have 5 LibraryBooksBarcode rows
- Each with unique barcode number

✅ **RULE 3: Purchase Rows Match Copies**
- SUM of all LibraryPurchase.no_of_copies = LibraryBook.no_of_copies
- Can have multiple purchase transactions

✅ **RULE 4: Barcode Uniqueness**
- Each barcode must be globally unique in LibraryBooksBarcode table
- Frontend validates this via API before saving

---

### **2. Required Fields**

#### LibraryBook:
- ✅ book_code (unique)
- ✅ book_name
- ✅ book_category_id
- ✅ book_sub_category_id
- ✅ no_of_copies
- ✅ organization_id
- ✅ batch_id
- ✅ academic_year_id
- ✅ created_by

#### LibraryPurchase:
- ✅ book_id
- ✅ no_of_copies (at least 1 row with no_of_copies > 0)
- ✅ created_by

#### LibraryBooksBarcode:
- ✅ book_id
- ✅ barcode (unique, not null)
- ✅ book_barcode_status
- ✅ organization_id
- ✅ batch_id
- ✅ created_by

---

### **3. Default Values to Use**

```sql
-- LibraryBook
book_status = 'Active' (not 'ACTIVE')
allow_issue = 'T' (true)
type = 'BOOK' or 'JOURNAL'
barcode_auto_generated = true
is_active = true
createdDate = CURRENT_DATE

-- LibraryPurchase
is_active = true
purchase_date = CURRENT_DATE (if not provided)
bill_value = 0 (if not provided)
bill_concession = 0 (if not provided)

-- LibraryBooksBarcode
book_barcode_status = 'Available'
barcode_auto_generated = true
is_active = true
location_id = NULL (optional)
remarks = '' (empty string)
```

---

### **4. Optional Fields**

#### Can be NULL:
- library_branch_id (LibraryBook)
- location_id (LibraryBooksBarcode)
- publisher, author, publish_year, volume, ISBN, edition, pages (LibraryBook)
- front_cover, back_cover (LibraryBook)
- purchase_from, bill_no (LibraryPurchase)

---

## **BARCODE AUTO-GENERATION**

### **Frontend Logic:**
1. User checks "Auto-generate barcode" checkbox
2. Frontend calls: `GET /LIBRARYBOOK/NextbarcodeNo/`
3. API returns: `{ "next_barcode": 1000050 }`
4. Frontend generates sequential barcodes: 1000050, 1000051, 1000052, ...

### **SQL Equivalent:**
```sql
-- Get next barcode
SELECT COALESCE(MAX(barcode), 1000000) + 1 AS next_barcode
FROM "LibraryBooksBarcode";

-- Then insert with sequential barcodes
INSERT INTO "LibraryBooksBarcode" (book_id, barcode, ...)
SELECT 
  book_id,
  (SELECT next_barcode FROM ...) + (ROW_NUMBER() OVER () - 1),
  ...
FROM generate_series(1, no_of_copies);
```

---

## **FORM FLOW DIAGRAM**

```
1. User fills Book Details (book_code, book_name, etc.)
   ↓
2. User adds Purchase Rows (dateOfPurchase, purchasedFrom, noOfCopies)
   ↓
3. AUTO-CALCULATE: total_no_of_copies = SUM(noOfCopies)
   ↓
4. AUTO-GENERATE: accessionRows (count = total_no_of_copies)
   ↓
5. User chooses:
   a) AUTO-GENERATE BARCODES → API gives next barcode → Sequential fill
   b) MANUAL ENTRY → User fills each barcode → API validates uniqueness
   ↓
6. User fills status, location, remarks for each accession row
   ↓
7. VALIDATION:
   - book_code & book_name required
   - At least 1 purchase row with copies > 0
   - At least 1 accession row with barcode
   - All accession rows must have status
   - If manual: all barcodes filled & unique
   ↓
8. SUBMIT FormData with 3 JSON payloads:
   - libraryBookdetails
   - librarypurchesDetails (array)
   - libraryBookBarcodeDetails (array)
```

---

## **CRITICAL ERRORS TO AVOID IN SQL IMPORT**

### ❌ **ERROR 1: Mismatched Copy Counts**
```sql
-- WRONG:
LibraryBook.no_of_copies = 5
COUNT(LibraryBooksBarcode for this book) = 3  -- INCONSISTENT!

-- CORRECT:
LibraryBook.no_of_copies = 5
COUNT(LibraryBooksBarcode for this book) = 5  -- ✅
```

### ❌ **ERROR 2: Duplicate Barcodes**
```sql
-- WRONG:
INSERT INTO LibraryBooksBarcode (barcode, ...) VALUES (1000050, ...);
INSERT INTO LibraryBooksBarcode (barcode, ...) VALUES (1000050, ...);  -- DUPLICATE!

-- CORRECT:
-- Always check MAX(barcode) before inserting
-- Ensure each barcode is unique
```

### ❌ **ERROR 3: Missing Barcode Rows**
```sql
-- WRONG:
-- Book has 5 copies but only 1 barcode entry

-- CORRECT:
-- Insert exactly 5 LibraryBooksBarcode rows for 5 copies
```

### ❌ **ERROR 4: Wrong Status Value**
```sql
-- WRONG:
book_status = 'ACTIVE'  -- Frontend uses 'Active'
book_barcode_status = 'Active'  -- Should be 'Available'

-- CORRECT:
book_status = 'Active'
book_barcode_status = 'Available'
```

### ❌ **ERROR 5: Missing Purchase Details**
```sql
-- WRONG:
-- Insert LibraryBook but no LibraryPurchase rows

-- CORRECT:
-- Always insert at least one LibraryPurchase row
-- SUM(LibraryPurchase.no_of_copies) = LibraryBook.no_of_copies
```

---

## **SQL IMPORT CHECKLIST**

Before importing, verify:

- ✅ book_code is unique across all LibraryBook
- ✅ All barcodes are unique across all LibraryBooksBarcode
- ✅ Each book has matching counts:
  - LibraryBook.no_of_copies
  - SUM(LibraryPurchase.no_of_copies)
  - COUNT(LibraryBooksBarcode)
- ✅ All required foreign keys exist:
  - BookCategory
  - BookSubCategory
  - Organization, Batch, AcademicYear
- ✅ All LibraryBooksBarcode rows have book_barcode_status
- ✅ Using correct status values: "Active", "Available"
- ✅ Barcodes are sequential and don't overlap with existing ones
- ✅ All created_by, updated_by fields are populated
- ✅ All timestamps (created_at, updated_at) are set
- ✅ All is_active fields are true
