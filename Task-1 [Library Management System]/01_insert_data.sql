-- Insert Books
INSERT INTO Books (TITLE, AUTHOR, GENRE, YEAR_PUBLISHED, AVAILABLE_COPIES) VALUES
('The Structure of Scientific Revolutions', 'Thomas S. Kuhn', 'Philosophy of Science', 1962, 4),
('A Theory of Justice', 'John Rawls', 'Political Philosophy', 1971, 3),
('The Wealth of Nations', 'Adam Smith', 'Economics', 1776, 5),
('Capital in the Twenty-First Century', 'Thomas Piketty', 'Economics', 2013, 2),
('The Interpretation of Dreams', 'Sigmund Freud', 'Psychology', 1899, 1),
('Being and Time', 'Martin Heidegger', 'Philosophy', 1927, 2),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'History', 2011, 6),
('The Selfish Gene', 'Richard Dawkins', 'Biology', 1976, 4),
('Guns, Germs, and Steel', 'Jared Diamond', 'History', 1997, 3),
('The Origins of Totalitarianism', 'Hannah Arendt', 'Political Science', 1951, 2);

-- Insert Members
INSERT INTO Members (NAME, EMAIL, PHONE_NO, ADDRESS, MEMBERSHIP_DATE) VALUES
('Noam Chomsky', 'chomsky@univ.edu', '1112223333', 'MIT, Cambridge, MA', '2023-01-01'),
('Cornel West', 'west@princeton.edu', '2223334444', 'Princeton, NJ', '2023-02-01'),
('Amartya Sen', 'sen@harvard.edu', '3334445555', 'Harvard University, MA', '2023-03-01'),
('Angela Davis', 'davis@ucsc.edu', '4445556666', 'UCSC, CA', '2023-04-01'),
('Judith Butler', 'butler@berkeley.edu', '5556667777', 'UC Berkeley, CA', '2023-05-01'),
('Martha Nussbaum', 'nussbaum@uchicago.edu', '6667778888', 'UChicago, IL', '2023-06-01'),
('Edward Said', 'said@columbia.edu', '7778889999', 'Columbia University, NY', '2023-07-01'),
('bell hooks', 'hooks@berea.edu', '8889990000', 'Berea College, KY', '2023-08-01'),
('Michel Foucault', 'foucault@sorbonne.fr', '9990001111', 'Sorbonne, Paris', '2023-09-01'),
('Karl Popper', 'popper@lse.ac.uk', '0001112222', 'LSE, London', '2023-10-01');

-- Insert Borrowing Records
INSERT INTO BorrowingRecords (MEMBER_ID, BOOK_ID, BORROW_DATE, RETURN_DATE) VALUES
(1, 1, '2023-01-15', '2023-01-30'),
(2, 2, '2023-02-10', '2023-02-28'),
(3, 3, '2023-03-20', NULL),
(4, 4, '2023-04-05', '2023-04-20'),
(5, 5, '2023-05-10', NULL),
(6, 6, '2023-06-01', '2023-06-15'),
(7, 7, '2023-07-03', '2023-07-25'),
(8, 8, '2023-08-12', NULL),
(9, 9, '2023-09-09', NULL),
(10, 10, '2023-10-15', NULL);
