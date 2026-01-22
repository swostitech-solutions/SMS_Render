import pandas as pd

# Read Excel
df = pd.read_excel('D:/intern2/lib excel files/PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx', header=3)
df.columns = df.columns.str.strip()
df = df.dropna(how='all')
df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')
df = df[df['Title'].notna()]
df = df[~df['Title'].str.contains('^TITLE$|^B.SC NURSING|^GNM', case=False, na=False, regex=True)]
df = df[(df['QTY'] > 0) & (df['QTY'] < 100)]

print(f"Total books in Excel: {len(df)}")
print("\nThe 3 missing books should be at positions:")
print(f"  Position 0 (BK008): {df.iloc[0]['Title']}")
print(f"  Position 47 (BK055): {df.iloc[47]['Title']}")
print(f"  Position 86 (BK094): {df.iloc[86]['Title']}")

print("\n" + "="*80)
print("BOOK AT POSITION 0 (BK008):")
print("="*80)
row = df.iloc[0]
for col in ['Sln.', 'Title', 'Author', 'Pub.', 'QTY', 'Price']:
    print(f"{col}: {row.get(col, 'N/A')}")

print("\n" + "="*80)
print("BOOK AT POSITION 47 (BK055):")
print("="*80)
row = df.iloc[47]
for col in ['Sln.', 'Title', 'Author', 'Pub.', 'QTY', 'Price']:
    print(f"{col}: {row.get(col, 'N/A')}")

print("\n" + "="*80)
print("BOOK AT POSITION 86 (BK094):")
print("="*80)
row = df.iloc[86]
for col in ['Sln.', 'Title', 'Author', 'Pub.', 'QTY', 'Price']:
    print(f"{col}: {row.get(col, 'N/A')}")

# Check for special characters or issues
print("\n" + "="*80)
print("CHECKING FOR SPECIAL CHARACTERS:")
print("="*80)
for idx in [0, 47, 86]:
    title = df.iloc[idx]['Title']
    print(f"\nPosition {idx}: {title}")
    print(f"  Length: {len(title)}")
    print(f"  Contains quotes: {chr(39) in title or chr(34) in title}")
    print(f"  First 50 chars: {repr(title[:50])}")
