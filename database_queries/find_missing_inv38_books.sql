-- ============================================================================
-- CHECK WHICH BOOKS FROM INV-38 ARE MISSING
-- ============================================================================

-- Check which book codes were supposed to be created
-- Expected: BK008 to BK094 (87 books)

-- Check what we actually have
SELECT book_code 
FROM "Library_librarybook"
WHERE book_code BETWEEN 'BK008' AND 'BK094'
ORDER BY book_code;

-- Find gaps in the sequence
WITH expected AS (
    SELECT 'BK' || LPAD((8 + n)::text, 3, '0') AS book_code
    FROM generate_series(0, 86) AS n
),
actual AS (
    SELECT book_code
    FROM "Library_librarybook"
    WHERE book_code BETWEEN 'BK008' AND 'BK094'
)
SELECT e.book_code AS missing_book_code
FROM expected e
LEFT JOIN actual a ON e.book_code = a.book_code
WHERE a.book_code IS NULL
ORDER BY e.book_code;

-- Count by book code to find any gaps
SELECT 
    SUBSTRING(book_code, 3)::INTEGER AS book_number,
    book_code,
    book_name
FROM "Library_librarybook"
WHERE book_code BETWEEN 'BK008' AND 'BK094'
ORDER BY SUBSTRING(book_code, 3)::INTEGER;
