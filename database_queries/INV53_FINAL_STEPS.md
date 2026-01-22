# 🚀 INV-53 FINAL EXECUTION STEPS

## STEP 1️⃣: Create Library Academic Year

Run this query:
```sql
INSERT INTO "Acadix_academicyear" (
    organization_id, branch_id, batch_id, course_id, department_id,
    academic_year_code, academic_year_description,
    date_from, date_to, is_active,
    created_by, updated_by, created_at, updated_at
) VALUES (
    1, NULL, NULL, NULL, NULL,
    'LIBRARY-PERMANENT',
    'Permanent Academic Year for Library Books',
    '2020-01-01', '2099-12-31', true,
    2, 2, NOW(), NOW()
) RETURNING id;
```

**Copy the returned `id`** → This is your `@ACADEMIC_YEAR_ID@`

---

## STEP 2️⃣: Update import_inv53.sql

Open `import_inv53.sql` and:

1. **Replace ALL** `@ACADEMIC_YEAR_ID@` with the actual ID (e.g., `5`)

2. **Add library_branch_id** to each INSERT:
   - Find: `academic_year_id, createdDate,`
   - After that line, add: `library_branch_id,`
   
   - Find: `@ACADEMIC_YEAR_ID@, CURRENT_DATE,`
   - After that line, add: `2,`

**Example:**
```sql
-- BEFORE:
    academic_year_id, createdDate,
    is_active, created_by, ...
) VALUES (
    @ACADEMIC_YEAR_ID@, CURRENT_DATE,
    true, 2, ...

-- AFTER:
    academic_year_id, library_branch_id, createdDate,
    is_active, created_by, ...
) VALUES (
    5, 2, CURRENT_DATE,
    true, 2, ...
```

---

## STEP 3️⃣: Execute the Script

Run the entire `import_inv53.sql` file.

---

## ✅ Summary of Values

```
category_id       = 29
subcategory_id    = 46
book_codes        = BK001 to BK008
barcodes          = 1000001 to 1000024
org_id            = 1
batch_id          = 23
library_branch_id = 2 (Branch 1)
academic_year_id  = (from STEP 1)
created_by        = 2
```

---

**Or... shall I regenerate the entire import_inv53.sql with library_branch already included?** 🤔

Just give me the academic_year_id after running STEP 1, and I'll give you a ready-to-run script!
