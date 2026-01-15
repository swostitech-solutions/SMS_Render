# Library Books Data Import Plan

## Data Overview
- **Source**: SPARSH COLLEGE OF NURSING AND ALLIED HEALTH SCIENCES KANTABADA-BHUVANESWAR
- **Data Type**: Library books by subject
- **Total Subjects**: 17
- **Total Books**: 1,487 books across all subjects

## Database Schema Analysis

### Tables Involved:

1. **BookCategory** (Library_bookcategory)
   - category_name (subject name)
   - category_description
   - organization_id (1)
   - batch_id (need to determine - likely shared across batches)
   - is_active (true)
   - created_by (0)

2. **LibraryBook** (Library_librarybook)
   - book_code (auto-generate: SUBJECT-CODE-###)
   - book_name (can be generic: "{Subject} Book - Volume {n}")
   - book_category_id (FK to BookCategory)
   - book_sub_category_id (FK to BookSubCategory - can create default)
   - library_branch_id (need to create/reference)
   - book_status ('AVAILABLE')
   - no_of_copies (1 per book instance OR total count)
   - organization_id (1)
   - batch_id
   - publisher (NULL for now)
   - author (NULL for now)
   - publish_year (NULL for now)
   - academic_year_id (current academic year)
   - is_active (true)
   - created_by (0)

3. **BookSubCategory** (Library_booksubcategory)
   - category_id (FK to BookCategory)
   - sub_category_name ('General')
   - sub_category_description
   - is_active (true)
   - created_by (0)

4. **LibraryBranch** (LibraryBranch)
   - library_branch_name ('Main Library')
   - organization_id (1)
   - batch_id
   - is_active (true)

5. **LibraryBooksBarcode** (Library_librarybooksbarcode)
   - book_id (FK to LibraryBook)
   - barcode (auto-generate sequential)
   - book_barcode_status ('AVAILABLE')
   - barcode_auto_generated (true)
   - organization_id (1)
   - batch_id
   - location_id (FK to BookLocation - create default)
   - is_active (true)
   - created_by (0)

6. **BookLocation** (Library_booklocation)
   - book_location ('Shelf A', 'Shelf B', etc.)
   - book_location_desc
   - organization_id (1)
   - batch_id
   - is_active (true)
   - created_by (0)

## Implementation Strategy

### Option 1: One Book Entry Per Physical Book
- Create individual LibraryBook records for each book
- Each book gets unique barcode via LibraryBooksBarcode
- **Pros**: Can track individual books, issue/return tracking
- **Cons**: 1,487 INSERT statements for LibraryBook + 1,487 for barcodes

### Option 2: One Book Entry with no_of_copies (RECOMMENDED)
- Create ONE LibraryBook record per subject with total count in no_of_copies
- Generate individual barcodes based on no_of_copies count
- **Pros**: Simpler data entry, manageable SQL size
- **Cons**: Less granular tracking initially (can expand later)

### **CHOSEN APPROACH: Hybrid (Option 1)**
Since library systems need individual book tracking for issue/return:
- Create individual LibraryBook entries for each physical copy
- Each book gets unique book_code and barcode
- Enables proper issue/return tracking from day one

## SQL Files to Create

1. **00_library_master_data_setup.sql**
   - Create LibraryBranch (Main Library)
   - Create BookLocation (Default location: 'Library Shelf A-Z')
   - Create 17 BookCategory entries (one per subject)
   - Create 17 BookSubCategory entries ('General' sub-category for each)

2. **01_library_books_import.sql**
   - Create 1,487 LibraryBook entries
   - Create 1,487 LibraryBooksBarcode entries
   - Book codes: ANAT-001 to ANAT-161, NUTR-001 to NUTR-088, etc.
   - Barcodes: Sequential from 1000000001 onwards

## Data Mapping

| S.NO | Subject | Book Count | Book Code Prefix | Category Name |
|------|---------|------------|------------------|---------------|
| 1 | ANATOMY AND PHYSIOLOGY | 161 | ANAT | Anatomy and Physiology |
| 2 | NUTRITION | 88 | NUTR | Nutrition |
| 3 | BIO-CHEMISTRY | 35 | BIOC | Bio-Chemistry |
| 4 | MICROBIOLOGY | 157 | MICR | Microbiology |
| 5 | FUNDAMENTALS OF NURSING | 165 | FUND | Fundamentals of Nursing |
| 6 | SOCIOLOGY | 85 | SOCI | Sociology |
| 7 | MEDICAL SURGICAL NURSING | 196 | MESU | Medical Surgical Nursing |
| 8 | COMMUNITY HEALTH NURSING | 139 | COMH | Community Health Nursing |
| 9 | CHILD HEALTH NURSING | 100 | CHHE | Child Health Nursing |
| 10 | PSYCHOLOGY | 107 | PSYC | Psychology |
| 11 | ENGLISH | 40 | ENGL | English |
| 12 | OBSTETRICAL & GYNECOLOGICAL NURSING | 73 | OBGY | Obstetrical & Gynecological Nursing |
| 13 | NURSING MANAGEMENT | 12 | NMAN | Nursing Management |
| 14 | NURSING RESEARCH | 13 | NRES | Nursing Research |
| 15 | NURSING EDUCATION | 2 | NEDU | Nursing Education |
| 16 | MENTAL HEALTH NURSING | 107 | MENH | Mental Health Nursing |
| 17 | FORENSIC NURSING AND INDIAN LAWS | 4 | FORI | Forensic Nursing and Indian Laws |

**Total Books: 1,487**

## Required Information
- [ ] Which batch_id to use? (shared resource or specific batch?)
- [ ] Which academic_year_id to reference?
- [ ] Default book names format (or import from another source?)

## Assumptions
- organization_id = 1
- branch_id = 2
- Batch: Use a shared batch or "LIBRARY-BATCH" (to be created)
- Academic Year: Current year 2025-2026
- Book names: "{Subject} - Volume {n}" format
- All books status: 'AVAILABLE'
- Library branch: 'Main Library'
- Book location: 'Library Shelf A-Z'
- created_by = 0
