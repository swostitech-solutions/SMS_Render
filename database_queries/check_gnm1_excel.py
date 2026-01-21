import pandas as pd

df = pd.read_excel('D:/intern2/excel files/GNM 25-28 LIST 1st Year student.xlsx', header=1)
df.columns = df.columns.str.strip()

print('All columns:')
for i, col in enumerate(df.columns):
    print(f'{i}: {col}')

print(f'\nTotal rows: {len(df)}')
print('\nFirst row sample:')
print(df.iloc[0])
