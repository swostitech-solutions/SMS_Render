import pandas as pd

file_path = 'D:/intern2/lib excel files/PADMALAYA INV. 104(SPARSH) 21-08-25.xlsx'

# Read with header=4
df = pd.read_excel(file_path, header=4)
df.columns = df.columns.str.strip()

print("BEFORE FILTERING:")
print(f"Total rows: {len(df)}")

# Step by step filtering
df = df.dropna(how='all')
print(f"After dropna: {len(df)}")

df['QTY'] = pd.to_numeric(df['QTY'], errors='coerce')
print(f"After QTY conversion: {len(df)}")

# Check what has Title
has_title = df[df['Title'].notna()]
print(f"Rows with Title: {len(has_title)}")

# Check what gets filtered by the contains check
filtered_out = df[df['Title'].str.contains('COMMUNITY HEALTH', case=False, na=False)]
print(f"\nRows filtered out by 'COMMUNITY HEALTH': {len(filtered_out)}")
if len(filtered_out) > 0:
    print("Filtered rows:")
    print(filtered_out[['Title', 'QTY']])

# Apply final filters
df = df[df['Title'].notna()]
df = df[~df['Title'].str.contains('^TITLE$|COMMUNITY HEALTH', case=False, na=False, regex=True)]
df = df[(df['QTY'] > 0) & (df['QTY'] < 100)]

print(f"\nFINAL: {len(df)} books, {int(df['QTY'].sum())} copies")

# Show rows around where books might be missing
print(f"\nAll books with their serial numbers:")
for idx, row in df.iterrows():
    print(f"{row.get('Sln.', '?'):>3} | {row['Title'][:50]:<50} | QTY: {int(row['QTY'])}")
