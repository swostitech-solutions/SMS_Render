import pandas as pd

file_path = 'D:/intern2/lib excel files/PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx'

# Read Excel
df = pd.read_excel(file_path, header=3)
df.columns = df.columns.str.strip()

# Show ALL rows before filtering
print("BEFORE FILTERING:")
print(f"Total rows: {len(df)}")

# Clean step by step
df = df.dropna(how='all')
print(f"After dropna(how='all'): {len(df)}")

df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')
print(f"After QTY conversion: {len(df)}")

# Check rows with Title
has_title = df[df['Title'].notna()]
print(f"Rows with Title: {len(has_title)}")

# Check what gets filtered by the Title contains check
header_rows = df[df['Title'].str.contains('TITLE|B.SC NURSING|GNM', case=False, na=False)]
print(f"Header rows to remove: {len(header_rows)}")
if len(header_rows) > 0:
    print("Header rows:")
    print(header_rows[['Title', 'QTY']])

# Apply all filters
df = df[df['Title'].notna()]
df = df[~df['Title'].str.contains('TITLE|B.SC NURSING|GNM', case=False, na=False)]
df = df[(df['QTY'] > 0) & (df['QTY'] < 100)]

print(f"\nFINAL COUNT: {len(df)} books")
print(f"FINAL TOTAL QTY: {int(df['QTY'].sum())}")

# Show rows that might be missing
print("\nRows with Serial Number around gaps:")
print(df[['Sln.', 'Title', 'Author', 'QTY']].iloc[30:50].to_string())
