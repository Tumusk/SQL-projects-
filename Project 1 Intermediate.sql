
-- Intermediate Questions

-- Find the names of authors with their books
SELECT a.author_id, a.author_name,b.title
FROM authors AS a
JOIN books AS b ON b.author_id = a.author_id;

-- list books borrowed by a specific borrower
SELECT d.borrower_id, b.book_id, b.title
FROM borrowed_books AS d
JOIN books AS b ON d.book_id = b.book_id
WHERE d.borrower_id = 2 ;

-- Number of books for each genre
SELECT Genre, COUNT(*) AS total_books
FROM books
GROUP BY genre;

-- Find authors who have written more than 2 books
SELECT author_name
FROM authors
WHERE author_id IN 
	(SELECT author_id FROM books
    GROUP BY author_id
    HAVING COUNT(*) > 2
    );
	
-- Update the genre of book
UPDATE books
SET Genre = 'Dystopian'
WHERE book_id = 104;

SELECT * FROM books;

























