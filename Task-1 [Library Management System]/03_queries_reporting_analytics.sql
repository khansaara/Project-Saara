-- a) Total books borrowed per month
SELECT DATE_TRUNC('month', BORROW_DATE) AS Month, COUNT(*) AS Total_Borrowed
FROM BorrowingRecords
GROUP BY Month
ORDER BY Month;

-- b) Top 3 most active members
SELECT m.NAME, COUNT(*) AS Books_Borrowed
FROM BorrowingRecords br
JOIN Members m ON br.MEMBER_ID = m.MEMBER_ID
GROUP BY m.NAME
ORDER BY Books_Borrowed DESC
LIMIT 3;

-- c) Authors whose books borrowed at least 10 times
SELECT b.AUTHOR, COUNT(*) AS Times_Borrowed
FROM BorrowingRecords br
JOIN Books b ON br.BOOK_ID = b.BOOK_ID
GROUP BY b.AUTHOR
HAVING COUNT(*) >= 10;

-- d) Members who never borrowed a book
SELECT m.NAME
FROM Members m
LEFT JOIN BorrowingRecords br ON m.MEMBER_ID = br.MEMBER_ID
WHERE br.BORROW_ID IS NULL;
