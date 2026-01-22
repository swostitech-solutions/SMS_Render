"""
INV-104 SQL Import Generator
Generates SQL INSERT statements for 44 books with 94 copies
"""

import pandas as pd
from datetime import datetime

# Configuration
EXCEL_FILE = 'D:/intern2/lib excel files/PADMALAYA INV. 104(SPARSH) 21-08-25.xlsx'
OUTPUT_FILE = 'D:/intern2/database_queries/import_inv104.sql'

# Database values
CATEGORY_ID = 29
SUBCATEGORY_ID = 46
LIBRARY_BRANCH_ID = 2
ACADEMIC_YEAR_ID = 25
ORG_ID = 1
BATCH_ID = 1
CREATED_BY = 2

# Starting values  
START_BOOK_CODE = 95  # BK095
START_BARCODE = 1000443  # Next after current max 1000442

# Invoice details
INVOICE_NO = 'PADMALAYA-INV-104'
INVOICE_DATE = '2025-08-21'
VENDOR = 'PADMALAYA'

print("="*100)
print("INV-104 SQL GENERATOR")
print("="*100)

# Read Excel with header=4
df = pd.read_excel(EXCEL_FILE, header=4)
df.columns = df.columns.str.strip()

# Clean data
df = df.dropna(how='all')
df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')

# Only keep rows with valid Title and QTY
df = df[df['Title'].notna()]
df = df[df['QTY'].notna()]
df = df[df['QTY'] > 0]

# Fill NaN
df['Author'] = df['Author'].fillna('').astype(str)
df['Pub.'] = df['Pub.'].fillna('').astype(str)
df['Price'] = df['Price'].fillna(0)

print(f"\nBooks found: {len(df)}")
print(f"Total copies: {int(df['QTY'].sum())}")

#  Generate SQL (same structure as INV-38)
sql_lines = []

sql_lines.append("-- " + "="*80)
sql_lines.append(f"-- INV-104 LIBRARY BOOKS IMPORT")
sql_lines.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
sql_lines.append(f"-- Invoice: {INVOICE_NO} | Date: {INVOICE_DATE}")
sql_lines.append(f"-- Total Books: {len(df)} | Total Copies: {int(df['QTY'].sum())}")
sql_lines.append("-- " + "="*80)
sql_lines.append("")
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

for book_idx, (_, row) in enumerate(df.iterrows()):
    book_code = f"BK{START_BOOK_CODE + book_idx:03d}"
    title = str(row['Title']).replace("'", "''")[:250]
    author = str(row['Author']).replace("'", "''")[:100] if pd.notna(row['Author']) and row['Author'] else ''
    publisher = str(row['Pub.']).replace("'", "''")[:100] if pd.notna(row['Pub.']) and row['Pub.'] else ''
    qty = int(row['QTY'])
    
    sql_lines.append(f"-- Book {book_idx+1}: {title[:50]}... ({qty} copies)")
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
sql_lines.append("-- " + "="*80)
sql_lines.append(f"-- STEP 2: INSERT PURCHASES ({len(df)} records)")
sql_lines.append("-- " + "="*80)
sql_lines.append("")
sql_lines.append("BEGIN;")
sql_lines.append("")
sql_lines.append("INSERT INTO \"Library_librarypurchase\" (")
sql_lines.append("    book_id, purchase_date, purchase_from, bill_no,")
sql_lines.append("    bill_value, bill_concession, no_of_copies,")
sql_lines.append("    is_active, created_by, updated_by, created_at, updated_at")
sql_lines.append(")")
sql_lines.append(f"SELECT id, '{INVOICE_DATE}', '{VENDOR}', '{INVOICE_NO}',")
sql_lines.append("    CASE book_code")

for book_idx, (_, row) in enumerate(df.iterrows()):
    book_code = f"BK{START_BOOK_CODE + book_idx:03d}"
    qty = int(row['QTY'])
    price = float(row['Price'])
    bill_value = qty * price
    sql_lines.append(f"        WHEN '{book_code}' THEN {bill_value:.2f}")

sql_lines.append("    END, 0.00, no_of_copies,")
sql_lines.append(f"    true, {CREATED_BY}, {CREATED_BY}, NOW(), NOW()")
sql_lines.append("FROM \"Library_librarybook\"")
sql_lines.append("WHERE book_code IN (")
book_codes = [f"'BK{START_BOOK_CODE + i:03d}'" for i in range(len(df))]
for i in range(0, len(book_codes), 10):
    chunk = book_codes[i:i+10]
    sql_lines.append("    " + ", ".join(chunk) + ("," if i+10 < len(book_codes) else ""))
sql_lines.append(");")
sql_lines.append("")
sql_lines.append("COMMIT;")
sql_lines.append("")

# STEP 3: Insert Barcodes
sql_lines.append("-- " + "="*80)
sql_lines.append(f"-- STEP 3: INSERT BARCODES ({int(df['QTY'].sum())} barcodes)")
sql_lines.append("-- " + "="*80)
sql_lines.append("")
sql_lines.append("BEGIN;")
sql_lines.append("")

current_barcode = START_BARCODE

for book_idx, (_, row) in enumerate(df.iterrows()):
    book_code = f"BK{START_BOOK_CODE + book_idx:03d}"
    qty = int(row['QTY'])
    title = str(row['Title'])[:30]
    
    first_barcode = current_barcode
    last_barcode = current_barcode + qty - 1
    
    sql_lines.append(f"-- {book_code}: {qty} copies ({title}...) - Barcodes {first_barcode}-{last_barcode}")
    
    if qty == 1:
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

# Verification
sql_lines.append("-- " + "="*80)
sql_lines.append("-- VERIFICATION")
sql_lines.append("-- " + "="*80)
sql_lines.append("")
sql_lines.append("SELECT ")
sql_lines.append(f"    (SELECT COUNT(*) FROM \"Library_librarybook\" WHERE book_code BETWEEN 'BK{START_BOOK_CODE:03d}' AND 'BK{START_BOOK_CODE+len(df)-1:03d}') AS total_books,")
sql_lines.append(f"    (SELECT SUM(no_of_copies) FROM \"Library_librarybook\" WHERE book_code BETWEEN 'BK{START_BOOK_CODE:03d}' AND 'BK{START_BOOK_CODE+len(df)-1:03d}') AS total_copies,")
sql_lines.append("    (SELECT COUNT(*) FROM \"Library_librarybooksbarcode\" WHERE book_id IN ")
sql_lines.append(f"        (SELECT id FROM \"Library_librarybook\" WHERE book_code BETWEEN 'BK{START_BOOK_CODE:03d}' AND 'BK{START_BOOK_CODE+len(df)-1:03d}')) AS total_barcodes;")
sql_lines.append("")
sql_lines.append(f"-- Expected: {len(df)} books, {int(df['QTY'].sum())} copies, {int(df['QTY'].sum())} barcodes")

# Write to file
with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
    f.write('\n'.join(sql_lines))

print(f"\n✅ SQL script generated!")
print(f"📄 Output: {OUTPUT_FILE}")
print(f"\n📊 Summary:")
print(f"   Books: {len(df)}")
print(f"   Copies: {int(df['QTY'].sum())}")
print(f"   Book codes: BK{START_BOOK_CODE:03d} to BK{START_BOOK_CODE+len(df)-1:03d}")
print(f"   Barcodes: {START_BARCODE} to {START_BARCODE+int(df['QTY'].sum())-1}")
print("\n🚀 Ready to execute!")
print("="*100)
