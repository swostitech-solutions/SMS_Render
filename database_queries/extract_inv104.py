import pandas as pd

file_path = 'D:/intern2/lib excel files/PADMALAYA INV. 104(SPARSH) 21-08-25.xlsx'

# Read with header=4
df = pd.read_excel(file_path, header=4)
df.columns = df.columns.str.strip()

# Clean data
df = df.dropna(how='all')
df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')

# Remove header/section rows and total rows
df = df[df['Title'].notna()]
df = df[~df['Title'].str.contains('^TITLE$|COMMUNITY HEALTH', case=False, na=False, regex=True)]
df = df[(df['QTY'] > 0) & (df['QTY'] < 100)]

print(f"✅ INV-104 Analysis:")
print(f"Total Books: {len(df)}")
print(f"Total Copies: {int(df['QTY'].sum())}")

print(f"\nColumns: {list(df.columns)}")

print(f"\nFirst 5 books:")
for idx in range(min(5, len(df))):
    row = df.iloc[idx]
    print(f"\n{idx+1}. {row['Title']}")
    print(f"   Author: {row.get('Author', 'N/A')}")
    print(f"   Publisher: {row.get('Pub.', 'N/A')}")
    print(f"   QTY: {int(row['QTY'])}")

print(f"\nLast 3 books:")
for idx in range(len(df)-3, len(df)):
    row = df.iloc[idx]
    print(f"\n{idx+1}. {row['Title']}")
    print(f"   QTY: {int(row['QTY'])}")

# Save clean data
df.to_csv('D:/intern2/database_queries/inv104_books_clean.csv', index=False)
print(f"\n✅ Saved to: inv104_books_clean.csv")
