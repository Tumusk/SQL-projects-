
-- Beginner Questions

-- Select all columns from books table
SELECT * FROM books;

-- Find books published after 2000
SELECT * 
FROM books
WHERE published_year > 2000;

-- Find unique queries in books table
SELECT DISTINCT Genre
FROM books;

-- Display authors in alphabetical order 
SELECT *
FROM authors
ORDER BY author_name ASC;

-- Total number of books in Books table
SELECT COUNT(*) AS total_books
FROM books;


