import re

file_path = "d:/intern2/schoolmanagement_FrontEnd/src/components/AdminTabs/AdminBookSearch/BulkBookUpload.js"

with open(file_path, "r", encoding="utf-8") as f:
    content = f.read()

# 1. Remove book_code from COLUMNS
content = re.sub(
    r'\s*{\s*key:\s*"book_code",\s*label:\s*"Book Code",\s*required:\s*true,\s*hint:\s*"Unique book identifier"\s*},',
    "", content
)

# 2. Remove concession from COLUMNS
content = re.sub(
    r'\s*{\s*key:\s*"concession",\s*label:\s*"Concession",\s*required:\s*false,\s*hint:\s*"Number\. E\.g\. 50\.00"\s*},',
    "", content
)

# 3. Remove "BC001", and "50", from SAMPLE_VALUES
content = re.sub(r'\s*"BC001",', "", content)
content = re.sub(r'\s*"50",', "", content)

# 4. Remove bookCode duplicate check
content = re.sub(
    r'\s*// Detect duplicate book codes WITHIN the file\s*const codeToRows = \{\};\s*rawRows\.forEach\(\(row, idx\) => \{\s*const code = String\(row\["Book Code"\] \|\| ""\)\.trim\(\);\s*if \(code\) \{\s*if \(!codeToRows\[code\]\) codeToRows\[code\] = \[\];\s*codeToRows\[code\]\.push\(idx \+ 2\); // Excel row \(header = row 1\)\s*\}\s*\}\);',
    "", content
)

# 5. Remove bookCode parsing
content = re.sub(
    r'\s*// book code\s*const bookCode = get\("Book Code"\);\s*if \(!bookCode\) \{\s*errors\.push\("Book Code is required"\);\s*\} else \{\s*if \(!isValidBookCode\(bookCode\)\) \{\s*errors\.push\(`Book Code.*?\);\s*\}\s*if \(bookCode\.length > 50\) \{\s*errors\.push\(`Book Code must be.*?`\);\s*\}\s*if \(codeToRows\[bookCode\]\?.length > 1\) \{\s*errors\.push\([\s\S]*?`Duplicate Book Code.*?`[\s\S]*?\);\s*\}\s*\}',
    "", content
)

# 6. Remove concession parsing
content = re.sub(
    r'\s*// concession — must be non-negative and not exceed bill value\s*const concession = get\("Concession"\);\s*if \(concession\) \{\s*const cv = parseFloat\(concession\);\s*if \(isNaN\(cv\)\) \{\s*errors\.push\(`Concession must be.*?`\);\s*\} else if \(cv < 0\) \{\s*errors\.push\(`Concession cannot be.*?`\);\s*\} else if \(billValue\) \{\s*const bv = parseFloat\(billValue\);\s*if \(!isNaN\(bv\) && cv > bv\) \{\s*errors\.push\(`Concession.*?`\);\s*\}\s*\}\s*\}',
    "", content
)

# 7. Remove bookCode and concession from map callback return
content = re.sub(r'\s*bookCode,', "", content)
content = re.sub(r'\s*concession,', "", content)

# 8. Remove from libraryBookdetails
content = re.sub(r'\s*book_code:\s*row\.bookCode,', "", content)

# 9. Remove from librarypurchesDetails
content = re.sub(r'\s*bill_concession:\s*row\.concession\s*\?\s*row\.concession\.toString\(\)\s*:\s*"0",', "", content)

# 10. Update downloadErrorReport headers and values
content = re.sub(
    r'\s*\["Row \(Excel\)",\s*"Book Code",\s*"Book Title",\s*"Error Details"\],',
    '\n      ["Row (Excel)", "Book Title", "Error Details"],', content
)
content = re.sub(
    r'\.\.\.failed\.map\(\(r\) => \[r\.excelRow,\s*r\.bookCode,\s*r\.bookName,\s*r\.error\]\),',
    '...failed.map((r) => [r.excelRow, r.bookName, r.error]),', content
)
content = re.sub(
    r'ws\["!cols"\]\s*=\s*\[\{\s*wch:\s*12\s*\},\{\s*wch:\s*15\s*\},\{\s*wch:\s*40\s*\},\{\s*wch:\s*70\s*\}\];',
    'ws["!cols"]   = [{ wch: 12 }, { wch: 40 }, { wch: 70 }];', content
)

# 11. Remove from table headers and body
content = re.sub(r'\s*<th>Book Code</th>', "", content)
content = re.sub(r'\s*<td>\{row\.bookCode\}</td>', "", content)

with open(file_path, "w", encoding="utf-8") as f:
    f.write(content)
