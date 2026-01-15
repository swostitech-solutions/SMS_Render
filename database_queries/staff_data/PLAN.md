# Staff Data Import Plan

## Data Overview
- **Source**: SPARSH COLLEGE OF NURSING AND ALLIED HEALTH SCIENCES Staff Details
- **Total Staff**: 9 employees
- **Data Fields**: 16 columns from Google Form timestamp

## Database Schema - EmployeeMaster Table

### Required Fields:
- **organization_id** (FK) → 1
- **branch_id** (FK) → 2
- **batch_id** (FK) → Use shared batch or specific
- **designation_id** (FK) → Default 1 or create designations
- **employee_code** → From data (SCNAS006, SCNAS019, etc.)
- **title** → Extract from name or default 'Mr'/'Ms'
- **first_name** → From FIRST NAME column
- **middle_name** → From MIDDLE NAME column (can be NULL)
- **last_name** → From LAST NAME column
- **date_of_birth** → From DATE OF BIRTH column
- **marital_status** → From MARRITAL STATUS column
- **gender_id** (FK to Gender) → From GENDER column (Male/Female → M/F)
- **nationality_id** (FK to Nationality) → From NATIONALITY column (Indian → IND)
- **religion_id** (FK to Religion) → From RELIGION column (Hindu → HIN, Christian → CHR)
- **email** → From EMAILID column
- **phone_number** → From MOBILE NUMBER column (10 digits)
- **office_email** → NULL (not provided)
- **employee_type_id** (FK to EmployeeType) → From EMPLOYEE TYPE column
- **date_of_joining** → Default to current date or specific date
- **date_of_leaving** → NULL
- **payroll_group** → NULL
- **place_of_birth** → NULL (not provided)
- **blood_group_id** (FK to Blood) → From BLOOD GROUP column
- **highest_qualification** → NULL (not provided)
- **emergency_contact_number** → From EMERGENCY CONTACT NUMBER column
- **mother_tongue_id** (FK to MotherTongue) → From MOTHER TONGUE column (Odia → ODI, Telugu → TEL, Bengali → BEN)
- **status** → 'ACTIVE'
- **profile_pic** → NULL
- **profile_photo_path** → NULL
- **is_active** → true
- **created_by** → 0

## Data Cleaning Required

### 1. Blood Group Normalization
- "B +" → "B+"
- "O positive" → "O+"
- "O+" → "O+"
- "A+" → "A+"
- "B+VE" → "B+"
- "A+ve" → "A+"
- "B+ve" → "B+"

### 2. Gender Mapping
- "Male" → 'M'
- "Female" → 'F'

### 3. Mother Tongue Mapping
- "Odia" / "Odiya" → 'ODI'
- "Telugu" → 'TEL'
- "Bengali" → 'BEN'

### 4. Religion Mapping
- "Hindu" / "Hindhu" → 'HIN'
- "Christian" → 'CHR'

### 5. Nationality Mapping
- "Indian" → 'IND'

### 6. Marital Status Normalization
- "Unmarried" / "No" → "Single"
- "MARRIED" / "Married" → "Married"

### 7. Employee Type Mapping
Need to check existing employee types or create:
- "Teaching" → Teaching staff
- "Permanent" → Permanent staff
- "Non-teaching" / "Non- Tiching" → Non-teaching staff
- "Non Teaching" → Non-teaching staff
- "Nursing Tutor" / "Tutor" → Tutor
- "Regular" → Regular staff
- "Warden" → Warden

### 8. Employee Code Issues
- SCNAS0004 → SCNAS004 (remove extra 0)
- 009 → SCNAS009 (add prefix)

### 9. Email Cleaning
- "krishnadey2k01@gmail.com9339000948/7076892929" → "krishnadey2k01@gmail.com" (remove phone numbers)
- "das.ria.s.1022@ gmail.com" → "das.ria.s.1022@gmail.com" (remove space)

### 10. Mobile Number Cleaning
- Extract 10 digits only
- "09861516315" → "9861516315"

### 11. Emergency Contact Cleaning
- "9339000948/7076892929" → "9339000948" (first number)

### 12. Address Field
- Use ADDRESS column as-is

## Staff List

| # | Employee Code | Name | DOB | Marital | Blood | Gender | Type |
|---|---------------|------|-----|---------|-------|--------|------|
| 1 | SCNAS006 | Aswini Kumar Sahoo | 12/21/1999 | Unmarried | B+ | Male | Teaching |
| 2 | SCNAS019 | SELVARANI SENTHIL KUMAR | 7/25/1984 | MARRIED | O+ | Female | Permanent |
| 3 | SCNAS018 | Kumarika Naik | 3/4/2000 | Unmarried | O+ | Female | Non-teaching |
| 4 | SCNAS007 | Himanshu Rout | 1/16/2002 | Unmarried | A+ | Male | Non-teaching |
| 5 | SCNAS001 | Krupasindhu Muduli | 5/10/1971 | Married | O+ | Male | Non Teaching |
| 6 | SCNAS014 | Krishna Dey | 10/4/2001 | No | B+ | Female | Nursing Tutor |
| 7 | SCNAS004 | MONASINA Prusty | 5/27/1994 | Unmarried | A+ | Female | Regular |
| 8 | SCNAS009 | Ria Das | 12/10/1998 | - | B+ | Female | Warden |
| 9 | SCNAS011 | Priti Jana | 11/30/2001 | Unmarried | B+ | Female | Tutor |

## Implementation Plan

### File 1: 00_staff_master_data_setup.sql
- Create/verify Employee Types (Teaching, Non-teaching, Tutor, Warden, Regular, Permanent)
- Create Designation (default or specific like "Nursing Tutor", "Warden", etc.)
- Verify Gender, Blood, Nationality, Religion, MotherTongue codes exist

### File 2: 01_staff_data_import.sql
- Insert 9 EmployeeMaster records
- Clean and normalize all data
- Handle missing fields with NULL or defaults

## Assumptions
- organization_id = 1
- branch_id = 2
- batch_id = Use 'LIBRARY-SHARED' or create 'STAFF-BATCH'
- designation_id = 1 (default) or create specific
- date_of_joining = 2025-09-10 (timestamp date from form)
- Title: 'Mr' for Male, 'Ms' for Female
- Address: Take as-is from ADDRESS column
- Status: 'ACTIVE'

## Issues to Resolve
1. ✅ Blood group variations (7 different formats)
2. ✅ Employee type variations (need to create/map)
3. ✅ Employee code inconsistencies (SCNAS0004 vs 009)
4. ✅ Email with phone numbers appended
5. ✅ Space in email address
6. ✅ Emergency contact with multiple numbers
7. ❓ Designation - use default or create specific?
8. ❓ Batch - create STAFF-BATCH or use existing?
