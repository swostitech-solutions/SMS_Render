import pandas as pd
import os

base_path = 'D:/intern2/lib excel files/'
files_info = [
    ('PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx', '29-06-2024', 'INV-38'),
    ('PADMALAYA INV. 53(SPARSH) 06-08-24.xlsx', '06-08-2024', 'INV-53'),
    ('PADMALAYA INV. 104(SPARSH) 21-08-25.xlsx', '21-08-2025', 'INV-104'),
    ('PADMALAYA INV. 116(SPARSH) 26-08-25.xlsx', '26-08-2025', 'INV-116')
]

output = []
output.append("="*100)
output.append("LIBRARY BOOKS - DETAILED ANALYSIS")
output.append("="*100)

total_books = 0
total_copies = 0

for file, date, inv_no in files_info:
    output.append(f"\n{'='*100}")
    output.append(f"FILE: {file}")
    output.append(f"Invoice: {inv_no} | Date: {date}")
    output.append(f"{'='*100}")
    
    try:
        # Try header=3 first (seems to be the pattern)
        df = pd.read_excel(os.path.join(base_path, file), header=3)
        df.columns = df.columns.str.strip()
        
        # Drop rows where all main fields are NaN
        df = df.dropna(how='all')
        
        output.append(f"\nColumns: {list(df.columns)}")
        output.append(f"\nTotal Rows (after cleaning): {len(df)}")
        
        # Check if QTY column exists
        qty_col = None
        for col in df.columns:
            if 'qty' in str(col).lower() or 'quantity' in str(col).lower():
                qty_col = col
                break
        
        if qty_col:
            qty_sum = df[qty_col].dropna().sum()
            output.append(f"Total Copies (QTY): {qty_sum}")
            total_copies += qty_sum
        
        total_books += len(df)
        
        output.append(f"\nSample Books (first 3):")
        for idx in range(min(3, len(df))):
            output.append(f"\n  Book {idx+1}:")
            for col in df.columns[:8]:  # First 8 columns
                val = df.iloc[idx][col]
                if pd.notna(val):
                    output.append(f"    {col}: {val}")
        
    except Exception as e:
        output.append(f"\nERROR: {str(e)}")

output.append(f"\n{'='*100}")
output.append(f"SUMMARY")
output.append(f"{'='*100}")
output.append(f"Total Files: {len(files_info)}")
output.append(f"Total Books (approximate): {total_books}")
output.append(f"Total Copies (approximate): {total_copies}")

# Save to file
with open('D:/intern2/database_queries/library_books_summary.txt', 'w', encoding='utf-8') as f:
    f.write('\n'.join(output))

print("✅ Analysis complete!")
print(f"Total Files: {len(files_info)}")
print(f"Total Books: {total_books}")
print(f"Total Copies: {total_copies}")
print("\nDetails saved to: library_books_summary.txt")
