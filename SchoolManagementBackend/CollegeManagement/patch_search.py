import re

file_path = "d:/intern2/schoolmanagement_FrontEnd/src/components/AdminTabs/AdminBookSearch/AdmBookSearch.js"

with open(file_path, "r", encoding="utf-8") as f:
    content = f.read()

# 1. Remove Book Code th and td
content = re.sub(r'\s*<th>Book Code</th>', "", content)
content = re.sub(r'\s*<td>\{book\.book_code\}</td>', "", content)

# 2. Remove the Book Code search input
search_block = r'''\s*<div className="col-12 col-md-3 mb-3">\s*<label htmlFor="book-code" className="form-label">\s*Book Code\s*</label>\s*<div className="d-flex align-items-center">\s*<input\s*type="text"\s*id="book-code"\s*className="form-control detail"\s*placeholder="Enter book code"\s*ref=\{studentNameRef\}\s*value=\{bookCode\}\s*onChange=\{\(e\) => setBookCode\(e\.target\.value\)\}\s*/>\s*</div>\s*</div>'''
content = re.sub(search_block, "", content)

with open(file_path, "w", encoding="utf-8") as f:
    f.write(content)
