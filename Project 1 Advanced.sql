
-- Advanced Questions
-- Subqueries, Window Functions, Indexing

-- Authors who written more than one book
SELECT Author_id, COUNT(*) AS Book_count
FROM books
GROUP BY Author_id
HAVING COUNT(*) > 1;

-- Borrowers who have borrowed more than two books
SELECT Borrower_id, COUNT(*) AS Borrowed_Books
FROM borrowed_books
GROUP BY Borrower_id
HAVING COUNT(*) > 2;

-- Rank books based on their publication year
SELECT Book_id, Title, Published_year,
RANK() OVER(ORDER BY published_year ASC) AS Rank_order
FROM Books;

-- Retrieve the second most recently borrowed book
SELECT Book_id, Borrowed_date
FROM Borrowed_Books
ORDER BY Borrowed_date DESC
LIMIT 1 OFFSET 1;