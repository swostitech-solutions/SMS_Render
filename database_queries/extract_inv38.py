# INV-38 Import Script Generator
# Based on successful INV-53 pattern

import pandas as pd

# Read Excel (using header=3 like INV-53)
df = pd.read_excel('D:/intern2/lib excel files/PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx', header=3)
df.columns = df.columns.str.strip()

# Clean data
df = df.dropna(how='all')
df = df[df['Title'].notna()]
df = df[~df['Title'].str.contains('TITLE|B.SC NURSING|GNM', case=False, na=False)]

# Convert QTY to numeric
df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')
df = df[df['QTY'] > 0]

print(f"Total books to import: {len(df)}")
print(f"Total copies: {int(df['QTY'].sum())}")

# Save for review
df[['Sln.', 'Category', 'SubCategory', 'Title', 'Author', 'Pub.', 'QTY', 'Price']].to_csv(
    'D:/intern2/database_queries/inv38_books_clean.csv', 
    index=False
)
print("✅ Saved to inv38_books_clean.csv")
print("\nFirst 5 books:")
print(df[['Title', 'Author', 'Pub.', 'QTY']].head())
