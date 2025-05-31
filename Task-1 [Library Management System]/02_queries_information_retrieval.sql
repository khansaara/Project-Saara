-- a) Books borrowed by a specific member
SELECT b.TITLE
FROM Books b
JOIN BorrowingRecords br ON b.BOOK_ID = br.BOOK_ID
WHERE br.MEMBER_ID = 1 AND br.RETURN_DATE IS NULL;

-- b) Members with overdue books (>30 days not returned)
SELECT m.NAME, br.BORROW_DATE
FROM Members m
JOIN BorrowingRecords br ON m.MEMBER_ID = br.MEMBER_ID
WHERE br.RETURN_DATE IS NULL AND br.BORROW_DATE < CURRENT_DATE - INTERVAL '30 days';

-- c) Books by genre with count of available copies
SELECT GENRE, COUNT(*) AS Total_Titles, SUM(AVAILABLE_COPIES) AS Available_Copies
FROM Books
GROUP BY GENRE;

-- d) Most borrowed book(s)
SELECT b.TITLE, COUNT(*) AS Times_Borrowed
FROM BorrowingRecords br
JOIN Books b ON b.BOOK_ID = br.BOOK_ID
GROUP BY b.TITLE
ORDER BY Times_Borrowed DESC
LIMIT 1;

-- e) Members who borrowed books from at least 3 genres
SELECT br.MEMBER_ID, m.NAME
FROM BorrowingRecords br
JOIN Books b ON br.BOOK_ID = b.BOOK_ID
JOIN Members m ON m.MEMBER_ID = br.MEMBER_ID
GROUP BY br.MEMBER_ID, m.NAME
HAVING COUNT(DISTINCT b.GENRE) >= 3;