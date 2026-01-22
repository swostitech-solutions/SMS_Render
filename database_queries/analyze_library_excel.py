import pandas as pd
import os

base_path = 'D:/intern2/lib excel files/'
files = [
    'PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx',
    'PADMALAYA INV. 53(SPARSH) 06-08-24.xlsx',
    'PADMALAYA INV. 104(SPARSH) 21-08-25.xlsx',
    'PADMALAYA INV. 116(SPARSH) 26-08-25.xlsx'
]

output_lines = []
output_lines.append("=" * 100)
output_lines.append("LIBRARY EXCEL FILES ANALYSIS")
output_lines.append("=" * 100)

for file in files:
    output_lines.append(f"\n{'='*100}")
    output_lines.append(f"FILE: {file}")
    output_lines.append(f"{'='*100}")
    
    try:
        df = pd.read_excel(os.path.join(base_path, file))
        df.columns = df.columns.str.strip()
        
        output_lines.append(f"\nTotal Rows: {len(df)}")
        output_lines.append(f"Total Columns: {len(df.columns)}")
        
        output_lines.append("\nCOLUMNS:")
        for i, col in enumerate(df.columns):
            output_lines.append(f"  {i+1}. {col}")
        
        output_lines.append("\nFIRST ROW SAMPLE:")
        for col in df.columns:
            val = df.iloc[0][col]
            output_lines.append(f"  {col}: {val}")
        
        if 'QTY' in df.columns:
            total_qty = df['QTY'].sum()
            output_lines.append(f"\nTotal Copies (QTY): {total_qty}")
        
    except Exception as e:
        output_lines.append(f"\nERROR: {str(e)}")

output_lines.append("\n" + "="*100)

# Save to file
with open('D:/intern2/database_queries/library_excel_analysis.txt', 'w', encoding='utf-8') as f:
    f.write('\n'.join(output_lines))

print("Analysis saved to: library_excel_analysis.txt")
print(f"Analyzed {len(files)} files")
