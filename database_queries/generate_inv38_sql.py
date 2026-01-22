"""
INV-38 SQL Import Generator
Generates SQL INSERT statements for 87 books with 428 copies
"""

import pandas as pd
from datetime import datetime

# Configuration
EXCEL_FILE = 'D:/intern2/lib excel files/PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx'
OUTPUT_FILE = 'D:/intern2/database_queries/import_inv38.sql'

# Database values (from INV-53 success)
CATEGORY_ID = 29
SUBCATEGORY_ID = 46
LIBRARY_BRANCH_ID = 2
ACADEMIC_YEAR_ID = 25
ORG_ID = 1
BATCH_ID = 1
CREATED_BY = 2

# Starting values
START_BOOK_CODE = 8  # BK008
START_BARCODE = 1000025

# Invoice details
INVOICE_NO = 'PADMALAYA-INV-38'
INVOICE_DATE = '2024-06-29'
VENDOR = 'PADMALAYA'

print("="*100)
print("INV-38 SQL GENERATOR")
print("="*100)

# Read Excel
df = pd.read_excel(EXCEL_FILE, header=3)
df.columns = df.columns.str.strip()

# Clean data
df = df.dropna(how='all')
df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')

# Remove rows without Title or with invalid QTY
df = df[df['Title'].notna()]
# Don't filter out books with EXAM in title - only filter actual header rows
df = df[~df['Title'].str.contains('^TITLE$|^B.SC NURSING|^GNM', case=False, na=False, regex=True)]
df = df[(df['QTY'] > 0) & (df['QTY'] < 100)]  # Exclude total row

# Fill NaN values - keep empty authors as empty string
df['Author'] = df['Author'].fillna('').astype(str)
df['Pub.'] = df['Pub.'].fillna('').astype(str)
df['Price'] = df['Price'].fillna(0)

print(f"\nBooks found: {len(df)}")
print(f"Total copies: {int(df['QTY'].sum())}")

# Generate SQL
sql_lines = []

# Header
sql_lines.append("-- " + "="*80)
sql_lines.append(f"-- INV-38 LIBRARY BOOKS IMPORT")
sql_lines.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
sql_lines.append(f"-- Invoice: {INVOICE_NO} | Date: {INVOICE_DATE}")
sql_lines.append(f"-- Total Books: {len(df)} | Total Copies: {int(df['QTY'].sum())}")
sql_lines.append("-- " + "="*80)
sql_lines.append("")

# Values used
sql_lines.append("-- VALUES USED:")
sql_lines.append(f"-- category_id = {CATEGORY_ID}")
sql_lines.append(f"-- subcategory_id = {SUBCATEGORY_ID}")
sql_lines.append(f"-- library_branch_id = {LIBRARY_BRANCH_ID}")
sql_lines.append(f"-- academic_year_id = {ACADEMIC_YEAR_ID}")
sql_lines.append(f"-- org_id = {ORG_ID}")
sql_lines.append(f"-- batch_id = {BATCH_ID}")
sql_lines.append(f"-- created_by = {CREATED_BY}")
sql_lines.append(f"-- book_codes: BK{START_BOOK_CODE:03d} to BK{START_BOOK_CODE+len(df)-1:03d}")
sql_lines.append(f"-- barcodes: {START_BARCODE} to {START_BARCODE+int(df['QTY'].sum())-1}")
sql_lines.append("")

# STEP 1: Insert Books
sql_lines.append("-- " + "="*80)
sql_lines.append(f"-- STEP 1: INSERT BOOKS ({len(df)} books)")
sql_lines.append("-- " + "="*80)
sql_lines.append("")
sql_lines.append("BEGIN;")
sql_lines.append("")

for idx, row in df.iterrows():
    book_code = f"BK{START_BOOK_CODE + idx:03d}"
    title = str(row['Title']).replace("'", "''")[:250]  # Escape quotes, limit length
    author = str(row['Author']).replace("'", "''")[:100] if pd.notna(row['Author']) else ''
    publisher = str(row['Pub.']).replace("'", "''")[:100] if pd.notna(row['Pub.']) else ''
    qty = int(row['QTY'])
    
    sql_lines.append(f"-- Book {idx+1}: {title[:50]}... ({qty} copies)")
    sql_lines.append("INSERT INTO \"Library_librarybook\" (")
    sql_lines.append("    book_code, book_name, book_category_id, book_sub_category_id,")
    sql_lines.append("    book_status, no_of_copies, organization_id, batch_id,")
    sql_lines.append("    publisher, author, publish_year, volume, edition, pages,")
    sql_lines.append("    library_branch_id, barcode_auto_generated, allow_issue, type,")
    sql_lines.append("    academic_year_id,")
    sql_lines.append("    is_active, created_by, updated_by, created_at, updated_at")
    sql_lines.append(") VALUES (")
    sql_lines.append(f"    '{book_code}', '{title}', {CATEGORY_ID}, {SUBCATEGORY_ID},")
    sql_lines.append(f"    'Active', {qty}, {ORG_ID}, {BATCH_ID},")
    sql_lines.append(f"    '{publisher}', '{author}', NULL, {qty}, 1, NULL,")
    sql_lines.append(f"    {LIBRARY_BRANCH_ID}, true, 'T', 'BOOK',")
    sql_lines.append(f"    {ACADEMIC_YEAR_ID},")
    sql_lines.append(f"    true, {CREATED_BY}, {CREATED_BY}, NOW(), NOW()")
    sql_lines.append(");")
    sql_lines.append("")

sql_lines.append("COMMIT;")
sql_lines.append("")

# STEP 2: Insert Purchases
sql_lines.append("")
sql_lines.append("-- " + "="*80)
sql_lines.append(f"-- STEP 2: INSERT PURCHASE RECORDS ({len(df)} records)")
sql_lines.append("-- " + "="*80)
sql_lines.append("")
sql_lines.append("BEGIN;")
sql_lines.append("")
sql_lines.append("INSERT INTO \"Library_librarypurchase\" (")
sql_lines.append("    book_id, purchase_date, purchase_from, bill_no,")
sql_lines.append("    bill_value, bill_concession, no_of_copies,")
sql_lines.append("    is_active, created_by, updated_by, created_at, updated_at")
sql_lines.append(")")
sql_lines.append("SELECT ")
sql_lines.append("    id,")
sql_lines.append(f"    '{INVOICE_DATE}',")
sql_lines.append(f"    '{VENDOR}',")
sql_lines.append(f"    '{INVOICE_NO}',")
sql_lines.append("    CASE book_code")

for idx, row in df.iterrows():
    book_code = f"BK{START_BOOK_CODE + idx:03d}"
    qty = int(row['QTY'])
    price = float(row['Price'])
    bill_value = qty * price
    sql_lines.append(f"        WHEN '{book_code}' THEN {bill_value:.2f}")

sql_lines.append("    END,")
sql_lines.append("    0.00,")
sql_lines.append("    no_of_copies,")
sql_lines.append(f"    true, {CREATED_BY}, {CREATED_BY}, NOW(), NOW()")
sql_lines.append("FROM \"Library_librarybook\"")
sql_lines.append("WHERE book_code IN (")
book_codes = [f"'BK{START_BOOK_CODE + i:03d}'" for i in range(len(df))]
# Split into chunks of 10 for readability
for i in range(0, len(book_codes), 10):
    chunk = book_codes[i:i+10]
    sql_lines.append("    " + ", ".join(chunk) + ("," if i+10 < len(book_codes) else ""))
sql_lines.append(");")
sql_lines.append("")
sql_lines.append("COMMIT;")
sql_lines.append("")

# STEP 3: Insert Barcodes
sql_lines.append("")
sql_lines.append("-- " + "="*80)
sql_lines.append(f"-- STEP 3: INSERT BARCODES ({int(df['QTY'].sum())} barcodes)")
sql_lines.append("-- " + "="*80)
sql_lines.append("")
sql_lines.append("BEGIN;")
sql_lines.append("")

current_barcode = START_BARCODE

for idx, row in df.iterrows():
    book_code = f"BK{START_BOOK_CODE + idx:03d}"
    qty = int(row['QTY'])
    title = str(row['Title'])[:30]
    
    first_barcode = current_barcode
    last_barcode = current_barcode + qty - 1
    
    sql_lines.append(f"-- {book_code}: {qty} copies ({title}...) - Barcodes {first_barcode}-{last_barcode}")
    
    if qty == 1:
        # Single barcode
        sql_lines.append("INSERT INTO \"Library_librarybooksbarcode\" (")
        sql_lines.append("    book_id, barcode, book_barcode_status, remarks,")
        sql_lines.append("    barcode_auto_generated, organization_id, batch_id, location_id_id,")
        sql_lines.append("    is_active, created_by, updated_by, created_at, updated_at")
        sql_lines.append(")")
        sql_lines.append("SELECT ")
        sql_lines.append(f"    (SELECT id FROM \"Library_librarybook\" WHERE book_code = '{book_code}'),")
        sql_lines.append(f"    {current_barcode}, 'Available', '',")
        sql_lines.append(f"    true, {ORG_ID}, {BATCH_ID}, NULL,")
        sql_lines.append(f"    true, {CREATED_BY}, {CREATED_BY}, NOW(), NOW();")
    else:
        # Multiple barcodes using generate_series
        sql_lines.append("INSERT INTO \"Library_librarybooksbarcode\" (")
        sql_lines.append("    book_id, barcode, book_barcode_status, remarks,")
        sql_lines.append("    barcode_auto_generated, organization_id, batch_id, location_id_id,")
        sql_lines.append("    is_active, created_by, updated_by, created_at, updated_at")
        sql_lines.append(")")
        sql_lines.append("SELECT ")
        sql_lines.append(f"    (SELECT id FROM \"Library_librarybook\" WHERE book_code = '{book_code}'),")
        sql_lines.append(f"    {current_barcode - 1} + n, 'Available', '',")
        sql_lines.append(f"    true, {ORG_ID}, {BATCH_ID}, NULL,")
        sql_lines.append(f"    true, {CREATED_BY}, {CREATED_BY}, NOW(), NOW()")
        sql_lines.append(f"FROM generate_series(1, {qty}) AS n;")
    
    sql_lines.append("")
    current_barcode += qty

sql_lines.append("COMMIT;")
sql_lines.append("")

# Verification queries
sql_lines.append("")
sql_lines.append("-- " + "="*80)
sql_lines.append("-- STEP 4: VERIFICATION QUERIES")
sql_lines.append("-- " + "="*80)
sql_lines.append("")
sql_lines.append("-- Check books")
sql_lines.append("SELECT book_code, book_name, author, publisher, no_of_copies")
sql_lines.append("FROM \"Library_librarybook\"")
sql_lines.append(f"WHERE book_code BETWEEN 'BK{START_BOOK_CODE:03d}' AND 'BK{START_BOOK_CODE+len(df)-1:03d}'")
sql_lines.append("ORDER BY book_code;")
sql_lines.append("")
sql_lines.append("-- Check barcodes per book")
sql_lines.append("SELECT ")
sql_lines.append("    lb.book_code,")
sql_lines.append("    lb.no_of_copies AS expected,")
sql_lines.append("    COUNT(lbb.id) AS actual,")
sql_lines.append("    MIN(lbb.barcode) AS first_barcode,")
sql_lines.append("    MAX(lbb.barcode) AS last_barcode")
sql_lines.append("FROM \"Library_librarybook\" lb")
sql_lines.append("LEFT JOIN \"Library_librarybooksbarcode\" lbb ON lb.id = lbb.book_id")
sql_lines.append(f"WHERE lb.book_code BETWEEN 'BK{START_BOOK_CODE:03d}' AND 'BK{START_BOOK_CODE+len(df)-1:03d}'")
sql_lines.append("GROUP BY lb.id, lb.book_code, lb.no_of_copies")
sql_lines.append("ORDER BY lb.book_code;")
sql_lines.append("")
sql_lines.append("-- Total summary")
sql_lines.append("SELECT ")
sql_lines.append(f"    (SELECT COUNT(*) FROM \"Library_librarybook\" WHERE book_code BETWEEN 'BK{START_BOOK_CODE:03d}' AND 'BK{START_BOOK_CODE+len(df)-1:03d}') AS total_books,")
sql_lines.append(f"    (SELECT SUM(no_of_copies) FROM \"Library_librarybook\" WHERE book_code BETWEEN 'BK{START_BOOK_CODE:03d}' AND 'BK{START_BOOK_CODE+len(df)-1:03d}') AS total_copies,")
sql_lines.append("    (SELECT COUNT(*) FROM \"Library_librarybooksbarcode\" WHERE book_id IN ")
sql_lines.append(f"        (SELECT id FROM \"Library_librarybook\" WHERE book_code BETWEEN 'BK{START_BOOK_CODE:03d}' AND 'BK{START_BOOK_CODE+len(df)-1:03d}')) AS total_barcodes;")
sql_lines.append("")
sql_lines.append(f"-- Expected: {len(df)} books, {int(df['QTY'].sum())} copies, {int(df['QTY'].sum())} barcodes")
sql_lines.append("")
sql_lines.append("-- " + "="*80)
sql_lines.append(f"-- INV-38 COMPLETED: {len(df)} Books | {int(df['QTY'].sum())} Copies")
sql_lines.append("-- " + "="*80)

# Write to file
with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
    f.write('\n'.join(sql_lines))

print(f"\n✅ SQL script generated successfully!")
print(f"📄 Output file: {OUTPUT_FILE}")
print(f"\n📊 Summary:")
print(f"   Books: {len(df)}")
print(f"   Copies: {int(df['QTY'].sum())}")
print(f"   Book codes: BK{START_BOOK_CODE:03d} to BK{START_BOOK_CODE+len(df)-1:03d}")
print(f"   Barcodes: {START_BARCODE} to {START_BARCODE+int(df['QTY'].sum())-1}")
print(f"\n🚀 Ready to execute!")
print("="*100)
