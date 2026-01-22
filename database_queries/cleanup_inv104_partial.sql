-- ============================================================================
-- CLEANUP: Delete partial INV-104 import (40 books) and reimport all 46
-- ============================================================================

BEGIN;

DELETE FROM "Library_librarybooksbarcode"
WHERE book_id IN (
    SELECT id FROM "Library_librarybook" 
    WHERE book_code >= 'BK095'
);

DELETE FROM "Library_librarypurchase"
WHERE book_id IN (
    SELECT id FROM "Library_librarybook" 
    WHERE book_code >= 'BK095'
);

DELETE FROM "Library_librarybook"
WHERE book_code >= 'BK095';

COMMIT;

-- Verify cleanup
SELECT COUNT(*) AS books_should_be_94 FROM "Library_librarybook";
SELECT COUNT(*) AS books_gte_bk095_should_be_0 FROM "Library_librarybook" WHERE book_code >= 'BK095';
