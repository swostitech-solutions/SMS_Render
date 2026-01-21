import pandas as pd

df = pd.read_excel('GNM 3rd YEAR STUDENT DETAILS_2023-2026.xlsx')
print('ALL COLUMNS IN GNM 3rd YEAR EXCEL:\n')
for i, col in enumerate(df.columns, 1):
    sample_val = str(df.iloc[0][col])[:50] if len(df) > 0 else 'N/A'
    print(f'{i:2d}. {col:40s} Sample: {sample_val}')

print(f'\nTotal Students: {len(df)}')
