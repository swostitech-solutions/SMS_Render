-- ============================================================================
-- VERIFY ALL DATA FIELDS ARE POPULATED
-- ============================================================================

-- Check a complete book record with all fields
SELECT 
    book_code,
    book_name,
    author,
    publisher,
    publish_year,
    volume,
    edition,
    pages,
    no_of_copies,
    book_status,
    allow_issue,
    type
FROM "Library_librarybook"
WHERE book_code = 'BK001'
LIMIT 1;

-- Check purchase record with all fields
SELECT 
    lb.book_code,
    lb.book_name,
    lp.purchase_date,
    lp.purchase_from,
    lp.bill_no,
    lp.no_of_copies,
    lp.bill_value,
    lp.bill_concession
FROM "Library_librarypurchase" lp
JOIN "Library_librarybook" lb ON lp.book_id = lb.id
WHERE lb.book_code = 'BK001'
LIMIT 1;

-- Check what data is NULL across all books
SELECT 
    COUNT(*) AS total_books,
    COUNT(CASE WHEN author IS NULL OR author = '' THEN 1 END) AS missing_author,
    COUNT(CASE WHEN publisher IS NULL OR publisher = '' THEN 1 END) AS missing_publisher,
    COUNT(CASE WHEN publish_year IS NULL THEN 1 END) AS missing_publish_year,
    COUNT(CASE WHEN volume IS NULL THEN 1 END) AS missing_volume,
    COUNT(CASE WHEN edition IS NULL THEN 1 END) AS missing_edition,
    COUNT(CASE WHEN pages IS NULL THEN 1 END) AS missing_pages
FROM "Library_librarybook";

-- Check purchase data
SELECT 
    COUNT(*) AS total_purchases,
    COUNT(CASE WHEN purchase_date IS NULL THEN 1 END) AS missing_date,
    COUNT(CASE WHEN purchase_from IS NULL OR purchase_from = '' THEN 1 END) AS missing_vendor,
    COUNT(CASE WHEN bill_no IS NULL OR bill_no = '' THEN 1 END) AS missing_bill_no,
    COUNT(CASE WHEN bill_value IS NULL OR bill_value = 0 THEN 1 END) AS missing_or_zero_value,
    COUNT(CASE WHEN bill_concession IS NULL THEN 1 END) AS missing_concession,
    SUM(bill_concession) AS total_concession
FROM "Library_librarypurchase";
