import pandas as pd

# Read Excel
df = pd.read_excel('D:/intern2/lib excel files/PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx', header=3)
df.columns = df.columns.str.strip()

# Clean data
df = df.dropna(how='all')
df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')

# Remove rows where Title is NaN (total row)
df = df[df['Title'].notna()]

# Remove header/section rows
df = df[~df['Title'].str.contains('TITLE|B.SC NURSING|GNM|TOTAL', case=False, na=False)]

# Keep only rows with valid QTY > 0
df = df[(df['QTY'].notna()) & (df['QTY'] > 0) & (df['QTY'] < 100)]  # Filter out total row (QTY=428)

print(f"✅ CORRECTED COUNT:")
print(f"Total books: {len(df)}")
print(f"Total copies: {int(df['QTY'].sum())}")

# Verify with you
print(f"\nFirst 3 books:")
for idx in range(3):
    row = df.iloc[idx]
    print(f"  {idx+1}. {row['Title']} - QTY: {int(row['QTY'])}")

print(f"\nLast 3 books:")
for idx in range(len(df)-3, len(df)):
    row = df.iloc[idx]
    print(f"  {idx+1}. {row['Title']} - QTY: {int(row['QTY'])}")

# Save corrected data
df[['Sln.', 'Category', 'SubCategory', 'Title', 'Author', 'Pub.', 'QTY', 'Price']].to_csv(
    'D:/intern2/database_queries/inv38_books_CORRECTED.csv',
    index=False
)
print("\n✅ Saved to: inv38_books_CORRECTED.csv")
