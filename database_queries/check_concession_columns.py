import pandas as pd

files = [
    ('INV-53', 'D:/intern2/lib excel files/PADMALAYA INV. 53(SPARSH) 06-08-24.xlsx', 3),
    ('INV-38', 'D:/intern2/lib excel files/PADMALAYA INV. 38(SPARSH) 29-06-24.xlsx', 3),
    ('INV-104', 'D:/intern2/lib excel files/PADMALAYA INV. 104(SPARSH) 21-08-25.xlsx', 4),
    ('INV-116', 'D:/intern2/lib excel files/PADMALAYA INV. 116(SPARSH) 26-08-25.xlsx', 3),
]

for name, file, header_row in files:
    print(f"\n{'='*80}")
    print(f"{name}")
    print('='*80)
    
    df = pd.read_excel(file, header=header_row)
    print(f"Columns: {list(df.columns)}")
    
    # Check if Con or Concession column exists
    if 'Con' in df.columns:
        print(f"\n✅ Has 'Con' column")
        print(f"Sample Con values:")
        print(df['Con'].dropna().head(10).tolist())
    elif 'Concession' in df.columns:
        print(f"\n✅ Has 'Concession' column")
        print(f"Sample values:")
        print(df['Concession'].dropna().head(10).tolist())
    else:
        print(f"\n❌ No Con or Concession column found")
