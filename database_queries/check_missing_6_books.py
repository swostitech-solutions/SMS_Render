import pandas as pd

file_path = 'D:/intern2/lib excel files/PADMALAYA INV. 104(SPARSH) 21-08-25.xlsx'
df = pd.read_excel(file_path, header=4)
df = df.dropna(how='all')
df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')
df = df[df['Title'].notna()]
df = df[df['QTY'].notna()]
df = df[df['QTY'] > 0]

print(f"Total rows: {len(df)}")
print("\nRows that should be BK095, BK099, BK105, BK114, BK123, BK137:")
print("="*80)

# These correspond to dataframe indices 0, 4, 10, 19, 28, 42
missing_indices = [0, 4, 10, 19, 28, 42]

for idx in missing_indices:
    if idx < len(df):
        row = df.iloc[idx]
        book_code = f"BK{95 + idx:03d}"
        print(f"\n{book_code} (Index {idx}):")
        print(f"  Title: {row['Title']}")
        print(f"  Author: {row.get('Author', 'N/A')}")
        print(f"  Publisher: {row.get('Pub.', 'N/A')}")
        print(f"  QTY: {row['QTY']}")
        print(f"  Price: {row.get('Price', 'N/A')} (type: {type(row.get('Price'))})")
        print(f"  Con: {row.get('Con', 'N/A')}")
