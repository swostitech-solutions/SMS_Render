-- ============================================================================
-- FIND MISSING BOOKS FROM INV-104
-- ============================================================================

-- Check which book codes exist
SELECT book_code 
FROM "Library_librarybook"
WHERE book_code BETWEEN 'BK095' AND 'BK140'
ORDER BY book_code;

-- Find gaps in sequence (expected BK095 to BK140 = 46 books)
WITH expected AS (
    SELECT 'BK' || LPAD((95 + n)::text, 3, '0') AS book_code
    FROM generate_series(0, 45) AS n
),
actual AS (
    SELECT book_code
    FROM "Library_librarybook"
    WHERE book_code BETWEEN 'BK095' AND 'BK140'
)
SELECT e.book_code AS missing_book_code
FROM expected e
LEFT JOIN actual a ON e.book_code = a.book_code
WHERE a.book_code IS NULL
ORDER BY e.book_code;

-- Show what we have
SELECT 
    SUBSTRING(book_code, 3)::INTEGER AS book_number,
    book_code,
    book_name,
    no_of_copies
FROM "Library_librarybook"
WHERE book_code BETWEEN 'BK095' AND 'BK140'
ORDER BY SUBSTRING(book_code, 3)::INTEGER;
