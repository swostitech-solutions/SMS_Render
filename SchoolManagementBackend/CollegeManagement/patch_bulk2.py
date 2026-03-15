import re

file_path = "d:/intern2/schoolmanagement_FrontEnd/src/components/AdminTabs/AdminBookSearch/BulkBookUpload.js"

with open(file_path, "r", encoding="utf-8") as f:
    content = f.read()

# fix the broken keys
content = re.sub(r'\s*book_code:\s*row\.', "", content)

# just to be sure
content = re.sub(r'\s*// ── Book code allowed characters: letters, digits, dash, underscore ───', "", content)

with open(file_path, "w", encoding="utf-8") as f:
    f.write(content)
