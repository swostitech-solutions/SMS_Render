import pandas as pd

file_path = 'D:/intern2/lib excel files/PADMALAYA INV. 53(SPARSH) 06-08-24.xlsx'

print("="*100)
print("DETAILED ANALYSIS: PADMALAYA INV. 53 (06-08-24)")
print("="*100)

# Read with header=3
df = pd.read_excel(file_path, header=3)
df.columns = df.columns.str.strip()

# Drop completely empty rows
df = df.dropna(how='all')

# Drop header rows that appear in data
df = df[df['Title'].notna()]
df = df[~df['Title'].str.contains('B.SC NURSING|TITLE', case=False, na=False)]

print(f"\nTotal Books: {len(df)}")
print(f"Total Copies: {df['QTY'].sum()}")

print("\n" + "="*100)
print("ALL BOOKS IN THIS INVOICE:")
print("="*100)

for idx, row in df.iterrows():
    print(f"\nBook {idx+1}:")
    print(f"  Serial: {row.get('Sln.', 'N/A')}")
    print(f"  Title: {row['Title']}")
    print(f"  Author: {row.get('Author', 'N/A')}")
    print(f"  Publisher: {row.get('Pub.', 'N/A')}")
    print(f"  Category: {row.get('Category', 'N/A')}")
    print(f"  SubCategory: {row.get('SubCategory', 'N/A')}")
    print(f"  QTY: {int(row['QTY']) if pd.notna(row['QTY']) else 0}")
    print(f"  Price: ₹{row.get('Price', 'N/A')}")

print("\n" + "="*100)
print("UNIQUE CATEGORIES:")
print("="*100)
categories = df['Category'].dropna().unique()
for cat in categories:
    print(f"  - {cat}")

print("\n" + "="*100)
print("UNIQUE SUBCATEGORIES:")
print("="*100)
subcats = df['SubCategory'].dropna().unique()
for subcat in subcats:
    print(f"  - {subcat}")

print("\n" + "="*100)
print("UNIQUE PUBLISHERS:")
print("="*100)
publishers = df['Pub.'].dropna().unique()
for pub in publishers:
    print(f"  - {pub}")

print("\n" + "="*100)
print("INVOICE DETAILS:")
print("="*100)
print(f"Invoice Number: INV-53")
print(f"Invoice Date: 06-08-2024")
print(f"Vendor: PADMALAYA")
print(f"Total Books: {len(df)}")
print(f"Total Copies: {int(df['QTY'].sum())}")
print(f"Total Bill Value: ₹{(df['Price'] * df['QTY']).sum():.2f}")

# Save cleaned data
df_export = df[['Sln.', 'Category', 'SubCategory', 'Title', 'Author', 'Pub.', 'QTY', 'Price']].copy()
df_export.to_csv('D:/intern2/database_queries/inv53_books.csv', index=False)
print("\n✅ Cleaned data saved to: inv53_books.csv")
