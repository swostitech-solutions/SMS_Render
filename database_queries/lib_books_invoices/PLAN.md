# LIBRARY BOOKS - INVOICE IMPORTS

## Data Source
4 invoice Excel files from PADMALAYA supplier:
- INV. 104 (21-08-2025): 46 books
- INV. 116 (26-08-2025): 12 books
- INV. 38 (29-06-2024): 87 books
- INV. 53 (06-08-2024): 7 books

**Total: 152 books**

## Data Structure
- **Sln.**: Serial number in invoice
- **Title**: Book title
- **Author**: Author name
- **Pub.**: Publisher
- **Con**: Condition (some invoices)
- **QTY**: Quantity ordered
- **Price**: Unit price
- **invoice_no**: Invoice number for tracking
- **invoice_date**: Invoice date

## Database Integration

### Existing Setup (from previous import)
- LIBRARY-SHARED batch already exists
- Main Library branch already exists
- Library Shelf A-Z location already exists
- Last barcode used: 1000001484

### Import Strategy
1. Continue barcode sequence from 1000001485
2. Map book titles to existing BookCategory (if match found) or create new
3. Use same LIBRARY-SHARED batch
4. Track invoice metadata in book_code field: `INV{invoice_no}-{sln}`

### Book Code Format
- Example: `INV104-001` (Invoice 104, Serial 1)
- Example: `INV038-087` (Invoice 38, Serial 87)

### Category Mapping Strategy
Will attempt to match titles to existing categories:
- "Community Health" → Community Health Nursing
- "Preventive" / "Social Medicine" → Community Health Nursing
- "Adult Health" → Medical-Surgical Nursing
- "Pediatric" / "Child Health" → Child Health Nursing
- "Mental Health" / "Psychiatric" → Mental Health Nursing
- "Midwifery" / "Obstetric" → Midwifery and Obstetrical Nursing
- "Anatomy" → Anatomy
- "Physiology" → Physiology
- "Nutrition" → Nutrition and Biochemistry
- Default: "General Nursing" category

## Files to Generate
1. `00_invoice_books_setup.sql` - Verify batch/branch/location exist (should already)
2. `01_invoice_books_import.sql` - Insert 152 books with barcodes
3. `all_invoice_books.csv` - Raw extracted data (✓ DONE)

## Execution Order
1. No master data setup needed (already exists from previous import)
2. Run `01_invoice_books_import.sql` directly
3. Verify counts

## Notes
- These are ADDITIONAL purchases beyond the initial 1,484 book collection
- Invoice dates range from June 2024 to August 2025
- Prices available for cost tracking
- Quantities show how many copies of each title ordered
