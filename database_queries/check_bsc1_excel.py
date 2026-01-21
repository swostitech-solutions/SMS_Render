import pandas as pd

df = pd.read_excel('D:/intern2/excel files/B.Sc Nursing 1st year 2025 - 2029.xlsx', header=1)
df.columns = df.columns.str.strip()

print('ALL Excel columns:')
for i, col in enumerate(df.columns):
    print(f'{i}: {col}')

print(f'\nTotal columns: {len(df.columns)}')
print(f'Total students: {len(df)}')

print('\n\nFirst student sample:')
for col in df.columns[:20]:
    val = df.iloc[0][col]
    print(f'{col}: {val}')
