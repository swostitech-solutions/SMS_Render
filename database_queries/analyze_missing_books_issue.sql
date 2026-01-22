-- ============================================================================
-- FIX: Insert 6 Missing Books from INV-104
-- Missing: BK095, BK099, BK105, BK114, BK123, BK137
-- ============================================================================

-- Based on invoice data, these books need special handling due to index gaps
-- The generator must have data quality issues with certain rows

BEGIN;

-- We need to manually identify which books from the invoice these represent
-- For now, let's check if regenerating with better filtering helps

-- First, let's see what position 0 should be (first book in Excel)
-- From your invoice: Row 1 = Park's Text book... but that's showing as BK096

-- This means BK095 is missing from the start!
-- The dataframe index must be off by 1

END;

-- Run this to check the actual first book title and compare to invoice
SELECT book_code, book_name, no_of_copies
FROM "Library_librarybook"
WHERE book_code = 'BK096';

-- Invoice shows:
-- Sln 1: Park's Text book... (2 copies) 
-- This is BK096, so BK095 doesn't exist in our import!

-- PROBLEM: The Python script uses df.iterrows() which gives actual pandas
-- index numbers, not sequential 0,1,2...
-- If some rows were filtered out, the indices have gaps!
