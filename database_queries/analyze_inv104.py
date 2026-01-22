import pandas as pd

file_path = 'D:/intern2/lib excel files/PADMALAYA INV. 104(SPARSH) 21-08-25.xlsx'

print("="*100)
print("ANALYZING INV-104 STRUCTURE")
print("="*100)

# Read first 15 rows to find header
df_raw = pd.read_excel(file_path, header=None, nrows=15)

print("\nFirst 15 rows (to find header):")
for idx in range(15):
    row_data = []
    for col_idx, val in enumerate(df_raw.iloc[idx][:10]):
        if pd.notna(val):
            row_data.append(f"Col{col_idx}:{str(val)[:30]}")
    if row_data:
        print(f"Row {idx}: {' | '.join(row_data)}")

# Try different header rows
for header_row in range(10):
    try:
        df = pd.read_excel(file_path, header=header_row)
        cols = [str(c).lower() for c in df.columns]
        
        has_title = any('title' in c for c in cols)
        has_qty = any('qty' in c or 'quantity' in c for c in cols)
        
        if has_title and has_qty:
            print(f"\n{'='*80}")
            print(f"✅ FOUND VALID HEADER at row {header_row}")
            print(f"Columns: {list(df.columns[:10])}")
            print(f"\nFirst book:")
            for col in list(df.columns[:8]):
                if pd.notna(df.iloc[0][col]):
                    print(f"  {col}: {df.iloc[0][col]}")
            
            # Clean and count
            df = df.dropna(how='all')
            df['QTY'] = pd.to_numeric(df.get('QTY', pd.Series([0])), errors='coerce')
            valid = df[(df['QTY'].notna()) & (df['QTY'] > 0) & (df['QTY'] < 100)]
            
            print(f"\nTotal rows with valid QTY: {len(valid)}")
            print(f"Total QTY sum: {valid['QTY'].sum()}")
            break
    except Exception as e:
        continue

print("\n" + "="*100)
