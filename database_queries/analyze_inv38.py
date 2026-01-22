import pandas as pd
import os

file_path = 'D:/intern2/lib excel files/PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx'

print("="*100)
print("DETAILED ANALYSIS: PADMALAYA INV-38 (29-06-2024)")
print("="*100)

# Try different header rows to find the correct one
for header_row in range(6):
    try:
        df = pd.read_excel(file_path, header=header_row)
        df.columns = df.columns.str.strip()
        
        # Check if this looks like the right header
        col_str = ' '.join([str(c).lower() for c in df.columns])
        if 'title' in col_str or 'qty' in col_str or 'author' in col_str:
            print(f"\n✅ FOUND VALID HEADER AT ROW {header_row}")
            break
    except:
        continue

# Clean the data
df = df.dropna(how='all')

# Remove header rows that appear in data
df = df[df['Title'].notna()]
df = df[~df['Title'].str.contains('TITLE|B.SC NURSING|GNM', case=False, na=False)]

# Clean numeric columns
if 'QTY' in df.columns:
    df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')

print(f"\nCOLUMNS FOUND:")
for i, col in enumerate(df.columns):
    print(f"  {i+1}. {col}")

print(f"\nTotal Rows (after cleaning): {len(df)}")
print(f"Total Copies (QTY): {df['QTY'].sum()}")

print("\n" + "="*100)
print("SAMPLE BOOKS (First 10):")
print("="*100)
for idx in range(min(10, len(df))):
    row = df.iloc[idx]
    print(f"\nBook {idx+1}:")
    print(f"  Title: {row.get('Title', 'N/A')}")
    print(f"  Author: {row.get('Author', 'N/A')}")
    print(f"  Publisher: {row.get('Pub.', 'N/A')}")
    print(f"  Category: {row.get('Category', 'N/A')}")
    print(f"  QTY: {int(row['QTY']) if pd.notna(row.get('QTY')) else 0}")
    print(f"  Price: ₹{row.get('Price', 'N/A')}")

print("\n" + "="*100)
print("UNIQUE CATEGORIES:")
print("="*100)
if 'Category' in df.columns:
    categories = df['Category'].dropna().unique()
    for cat in categories:
        count = len(df[df['Category'] == cat])
        total_qty = df[df['Category'] == cat]['QTY'].sum()
        print(f"  - {cat}: {count} titles, {int(total_qty)} copies")

print("\n" + "="*100)
print("UNIQUE PUBLISHERS:")
print("="*100)
if 'Pub.' in df.columns:
    publishers = df['Pub.'].dropna().unique()
    for pub in publishers[:10]:  # Show first 10
        count = len(df[df['Pub.'] == pub])
        print(f"  - {pub}: {count} titles")
    if len(publishers) > 10:
        print(f"  ... and {len(publishers)-10} more publishers")

print("\n" + "="*100)
print("DATA QUALITY CHECK:")
print("="*100)
print(f"Books without Title: {df['Title'].isna().sum()}")
print(f"Books without Author: {df['Author'].isna().sum()}")
print(f"Books without Publisher: {df['Pub.'].isna().sum()}")
print(f"Books without QTY: {df['QTY'].isna().sum()}")
print(f"Books without Price: {df['Price'].isna().sum()}")

print("\n" + "="*100)
print("INVOICE SUMMARY:")
print("="*100)
print(f"Invoice Number: INV-38")
print(f"Invoice Date: 29-06-2024")
print(f"Vendor: PADMALAYA")
print(f"Total Titles: {len(df)}")
print(f"Total Copies: {int(df['QTY'].sum())}")
print(f"Total Bill Value: ₹{(df['Price'] * df['QTY']).sum():.2f}")

# Save clean data
df_export = df[['Sln.', 'Category', 'SubCategory', 'Title', 'Author', 'Pub.', 'QTY', 'Price']].copy()
df_export.to_csv('D:/intern2/database_queries/inv38_books.csv', index=False)
print("\n✅ Clean data saved to: inv38_books.csv")

# Check for any issues
print("\n" + "="*100)
print("POTENTIAL ISSUES:")
print("="*100)

# Check for very long titles
long_titles = df[df['Title'].str.len() > 100]
if len(long_titles) > 0:
    print(f"⚠️ {len(long_titles)} books have very long titles (>100 chars)")

# Check for missing critical data
missing_critical = df[(df['Title'].isna()) | (df['QTY'].isna())]
if len(missing_critical) > 0:
    print(f"⚠️ {len(missing_critical)} books missing critical data (Title or QTY)")

# Check QTY range
print(f"\nQTY Range: Min={df['QTY'].min()}, Max={df['QTY'].max()}")
print(f"Price Range: Min=₹{df['Price'].min()}, Max=₹{df['Price'].max()}")

print("\n" + "="*100)
print("ANALYSIS COMPLETE!")
print("="*100)
