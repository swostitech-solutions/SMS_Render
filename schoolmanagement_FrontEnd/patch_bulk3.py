import re

file_path = "d:/intern2/schoolmanagement_FrontEnd/src/components/AdminTabs/AdminBookSearch/BulkBookUpload.js"

with open(file_path, "r", encoding="utf-8") as f:
    content = f.read()

# remove remaining bad object keys
content = re.sub(r'\s*bookCode:\s*row\.', "", content)

with open(file_path, "w", encoding="utf-8") as f:
    f.write(content)
