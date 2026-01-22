import pandas as pd
import os

file_path = 'D:/intern2/lib excel files/PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx'

print("="*100)
print("ANALYZING INV-38 STRUCTURE")
print("="*100)

# Read first 10 rows to understand structure
df_raw = pd.read_excel(file_path, header=None, nrows=15)

print("\nFirst 15 rows (raw):")
for idx in range(15):
    print(f"\nRow {idx}:")
    row_data = []
    for col_idx, val in enumerate(df_raw.iloc[idx]):
        if pd.notna(val):
            row_data.append(f"Col{col_idx}: {str(val)[:50]}")
    print("  " + " | ".join(row_data[:8]))  # Show first 8 columns

# Try to find header row
for header_row in range(10):
    try:
        df = pd.read_excel(file_path, header=header_row)
        cols = [str(c).lower() for c in df.columns]
        
        print(f"\n{'='*80}")
        print(f"Header Row {header_row}:")
        print(f"Columns: {list(df.columns[:10])}")
        
        # Check for expected columns
        has_title = any('title' in c for c in cols)
        has_qty = any('qty' in c or 'quantity' in c for c in cols)
        has_price = any('price' in c or 'rate' in c for c in cols)
        
        if has_title and has_qty:
            print(f"✅ LOOKS LIKE CORRECT HEADER!")
            print(f"\nFirst data row:")
            for col in list(df.columns[:8]):
                print(f"  {col}: {df.iloc[0][col]}")
            break
    except Exception as e:
        print(f"Row {header_row}: Error - {str(e)[:50]}")

print("\n" + "="*100)
print("Check complete. Which row number looks correct?")
