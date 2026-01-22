import pandas as pd

file_path = 'D:/intern2/lib excel files/PADMALAYA INV. 116(SPARSH) 26-08-25.xlsx'

print("Analyzing INV-116 structure...")
print("="*80)

for header_row in range(8):
    try:
        df = pd.read_excel(file_path, header=header_row, nrows=5)
        print(f"\nHeader row {header_row}:")
        print(f"Columns: {list(df.columns[:10])}")
        print(f"First row data: {df.iloc[0].to_dict() if len(df) > 0 else 'No data'}")
    except Exception as e:
        print(f"Header row {header_row}: Error - {str(e)[:50]}")
