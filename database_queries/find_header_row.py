import pandas as pd
import os

base_path = 'D:/intern2/lib excel files/'
file = 'PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx'

print(f"Analyzing: {file}")
print("="*80)

# Read first 15 rows to find header
df_raw = pd.read_excel(os.path.join(base_path, file), header=None, nrows=15)

print("\nFirst 15 rows (raw):")
for idx in range(15):
    print(f"\nRow {idx}:")
    for col_idx, val in enumerate(df_raw.iloc[idx]):
        if pd.notna(val):
            print(f"  Col {col_idx}: {val}")

# Try different header rows
for header_row in range(10):
    print(f"\n{'='*80}")
    print(f"Trying header_row = {header_row}")
    print(f"{'='*80}")
    
    try:
        df = pd.read_excel(os.path.join(base_path, file), header=header_row)
        df.columns = df.columns.str.strip() if isinstance(df.columns[0], str) else df.columns
        
        print(f"\nColumns with header={header_row}:")
        for i, col in enumerate(df.columns):
            print(f"  {i+1}. {col}")
        
        # Check if we have expected columns
        col_str = ' '.join([str(c).lower() for c in df.columns])
        if any(keyword in col_str for keyword in ['title', 'qty', 'rate', 'amount', 'author']):
            print(f"\n✅ FOUND VALID HEADER at row {header_row}")
            print(f"\nFirst data row:")
            for col in df.columns[:8]:
                print(f"  {col}: {df.iloc[0][col]}")
            break
    except Exception as e:
        print(f"Error: {e}")
