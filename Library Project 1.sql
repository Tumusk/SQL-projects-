
-- Library Database Management Project 1 (Beginners)

-- Create Database
CREATE DATABASE Library;

-- Create tables

CREATE TABLE Authors (
Author_id int PRIMARY KEY,
Author_name VARCHAR(50) NOT NULL
);


CREATE TABLE Books (
	book_id INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    Author_id INT,
    published_year INT,
    genre VARCHAR(50),
    FOREIGN KEY (Author_id) references Authors(Author_id)
);

CREATE TABLE Borrowed_Books (
		Borrower_id INT PRIMARY KEY,
        Book_id INT,
        Borrowed_date DATE,
        FOREIGN KEY (Book_id) references Books(Book_id)
);


-- Read the tables

SELECT * FROM Authors;
SELECT * FROM books;
SELECT * FROM borrowed_books;

-- Insert data into tables

INSERT INTO Authors
VALUES 
(1, "Chinua Achebe"),
(2, "J.K Rowling"),
(3, "Chimamanda Ngozi Adichie"),
(4, "Toni Morrison"),
(5, "Gabriel Marquez"),
(6, "Haruki Murakami"),
(7,"George Orwell");

INSERT INTO Books
VALUES
(101, "Things Fall Apart", 1, 1958, "Historical Fiction"),
(102, "Harry Potter and the Sorcerer's Stone", 2, 1997, "Fantasy"),
(103, "Half Of the Yellow Sun", 3, 2006, "Historical Fiction"),
(104, "Beloved", 4, 1987, "Historical Fiction"),
(105, "One Hundred Years of Solitude", 5, 1967, "Magical Realism"),
(106, "Norwegian Wood", 6,1987, "Romance"),
(107, "1984", 7, 1949, "Fiction");

INSERT INTO borrowed_books
VALUES
(1, 101, '2024-02-01'),
(2, 102, '2024-09-07'),
(3, 103, '2025-02-03'),
(4, 104, '2025-01-14'),
(5, 105, '2025-02-14'),
(6, 106, '2024-12-09'),
(7, 107, '2025-01-01');


