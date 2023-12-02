CREATE TABLE books (
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    author TEXT,
    genre TEXT,
    price REAL,
    release_year INTEGER
);
-- Ordering books by price
SELECT * FROM books
ORDER BY price ASC;

-- Calculating the average price of books
SELECT AVG(price) AS "Average Price" FROM books;
