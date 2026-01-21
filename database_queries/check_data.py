import pandas as pd

df = pd.read_excel('D:/intern2/excel files/GNM 3rd YEAR STUDENT DETAILS_2023-2026.xlsx')

print("Columns 6-12:")
for i, col in enumerate(list(df.columns)[6:25], 6):
    print(f"{i}: '{col}'")

print("\nFirst 3 rows - Sample:")
cols_to_show = [6, 7, 8, 20, 21]  # First, Middle, Last, Email, Father
for idx in range(3):
    print(f"\nRow {idx}:")
    for col_idx in cols_to_show:
        col_name = df.columns[col_idx]
        value = df.iloc[idx][col_name]
        print(f"  {col_name}: {value}")
