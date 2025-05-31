-- Insert sample data into Books table
INSERT INTO Books (TITLE, AUTHOR, GENRE, YEAR_PUBLISHED, AVAILABLE_COPIES) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 3),
('1984', 'George Orwell', 'Dystopian', 1949, 2),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 4),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 1),
('A Brief History of Time', 'Stephen Hawking', 'Science', 1988, 2),
('Sapiens', 'Yuval Noah Harari', 'History', 2011, 3),
('The Silent Patient', 'Alex Michaelides', 'Thriller', 2019, 1),
('Brave New World', 'Aldous Huxley', 'Dystopian', 1932, 2),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 3),
('The Art of War', 'Sun Tzu', 'Philosophy', -500, 2);

-- Insert sample data into Members table
INSERT INTO Members (NAME, EMAIL, PHONE_NO, ADDRESS, MEMBERSHIP_DATE) VALUES
('Alice Johnson', 'alice.johnson@example.com', '1234567890', '123 Maple St, NY', '2024-05-01'),
('Bob Smith', 'bob.smith@example.com', '2345678901', '456 Oak St, CA', '2023-11-12'),
('Charlie Brown', 'charlie.brown@example.com', '3456789012', '789 Pine St, TX', '2024-01-20'),
('Diana Prince', 'diana.prince@example.com', '4567890123', '321 Elm St, WA', '2023-09-05'),
('Ethan Hunt', 'ethan.hunt@example.com', '5678901234', '654 Cedar St, FL', '2023-07-10'),
('Fiona Gallagher', 'fiona.g@example.com', '6789012345', '987 Birch St, IL', '2024-03-15'),
('George Clooney', 'george.c@example.com', '7890123456', '159 Walnut St, OH', '2023-10-01'),
('Helen Parr', 'helen.p@example.com', '8901234567', '753 Chestnut St, MA', '2024-02-08'),
('Isaac Newton', 'isaac.n@example.com', '9012345678', '852 Aspen St, CO', '2023-12-22'),
('Jane Eyre', 'jane.eyre@example.com', '0123456789', '963 Willow St, AZ', '2024-04-01');

-- Insert sample data into BorrowingRecords table
-- NOTE: Ensure Books and Members data are inserted first due to FK constraints
INSERT INTO BorrowingRecords (MEMBER_ID, BOOK_ID, BORROW_DATE, RETURN_DATE) VALUES
(1, 1, '2025-05-01', NULL),
(2, 4, '2025-04-15', NULL),
(3, 2, '2025-03-20', '2025-04-01'),
(1, 5, '2025-03-01', '2025-03-15'),
(4, 3, '2025-02-10', NULL),
(5, 10, '2025-01-01', NULL),
(6, 9, '2025-04-01', '2025-04-20'),
(1, 6, '2025-02-15', NULL),
(1, 7, '2025-03-10', NULL),
(3, 8, '2025-01-20', NULL),
(1, 1, '2024-01-10', NULL),
(2, 1, '2024-02-15', NULL),
(3, 1, '2024-03-20', NULL),
(4, 1, '2024-04-05', NULL),
(5, 1, '2024-04-20', NULL),
(6, 1, '2024-05-01', NULL),
(7, 1, '2024-05-10', NULL),
(8, 1, '2024-05-15', NULL),
(10, 1, '2024-05-25', NULL);
