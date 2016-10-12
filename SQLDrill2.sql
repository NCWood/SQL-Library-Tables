
-----------------START-----------------------

--begin database creation code

USE master
GO

IF EXISTS (SELECT* FROM sys.databases WHERE [name] = 'dbLibraryMgmtSys')
DROP DATABASE dbLibraryMgmtSys
GO

CREATE DATABASE dbLibraryMgmtSys
GO

USE dbLibraryMgmtSys
GO

--end database creation code

		--{--ncw--}--

--begin tables creation code

USE dbLibraryMgmtSys
GO

CREATE TABLE BOOK
(
	BookId INT PRIMARY KEY NOT NULL,
	Title varchar(50) NOT NULL,
	PublisherName varchar(50) NULL
)


CREATE TABLE BOOK_AUTHORS
(
	BookId INT PRIMARY KEY NOT NULL,
	AuthorName varchar(50) NULL
)



CREATE TABLE PUBLISHER
(
	Name varchar(50) NOT NULL,
	[Address] varchar(50) NULL,
	Phone varchar(50) NULL
)


CREATE TABLE BOOK_COPIES
(
	BookId INT NOT NULL,
	BranchId INT NOT NULL,
	No_Of_Copies INT NULL
)



CREATE TABLE BOOK_LOANS
(
	BookId INT NOT NULL,
	BranchId INT NOT NULL,
	CardNo INT NULL,
	DateOut DATE NULL,
	DueDate DATE NULL
)


CREATE TABLE LIBRARY_BRANCH
(
	BranchId INT PRIMARY KEY NOT NULL,
	BranchName varchar(50) NOT NULL,
	[Address] varchar(50) NULL
)


CREATE TABLE BORROWER
(
	CardNo INT PRIMARY KEY NOT NULL,
	Name varchar(50) NOT NULL,
	[Address] varchar(50) NULL,
	Phone varchar(50) NULL	
)


--end tables creation code

			--{--ncw--}--

--begin BOOK table insertions

INSERT INTO BOOK
VALUES (001, 'The Lost Tribe', 'A. S. Barnes')

INSERT INTO BOOK
VALUES (002, 'The Education of Henry Adams','Penguin Random House')

INSERT INTO BOOK
VALUES (003, 'The Varieties of Religious Experience', 'Penguin Random House')

INSERT INTO BOOK
VALUES (004, 'Up From Slavery', 'Penguin Random House'),
	   (005, 'A Room of One''s Own','Moorside Press'),
	   (006, 'Silent Spring', 'Houghton Mifflin')

INSERT INTO BOOK
VALUES (007, 'Selected Essays', 'Faber & Faber'),
	   (008, 'The Double Helix', 'Atheneum'),
	   (009, 'Speak, Memory', 'Victor Gollancz'),
	   (010, 'The American Language', 'Waking Lion Press'),
	   (011, 'The General Theory of Employment', 'Palgrave Macmillan'),
	   (012, 'The Lives of a Cell', 'Penguin Books'),
	   (013, 'The Frontier in American History', 'Publishing House'),
	   (014, 'Black Boy', 'Harper Collins'),
	   (015, 'Aspects of the Novel', 'Edward Arnold'),
	   (016, 'The Civil War', 'Random House'),
	   (017, 'The Guns of August', 'Random House'),
	   (018, 'The Proper Study of Mankind', 'Farrar, Straus and Giroux'),
	   (019, 'The Nature and Destiny of Man', 'Westminster John Knox Press')
	   
INSERT INTO BOOK
VALUES (020, '''Salem''s Lot', 'Doubleday')

--end BOOK table insertions

			--{--ncw--}--

--begin BOOK_AUTHORS table insertions

INSERT INTO BOOK_AUTHORS
VALUES (001, 'Lee, Mark'),
	   (002, 'Adams, Henry'),
	   (003, 'James, William'),
	   (004, 'Washington, Booker T.'),
	   (005, 'Woolf, Virgina'),
	   (006, 'Carson, Rachel'),
	   (007, 'Eliot, T.S.'),
	   (008, 'Watson, James D.'),
	   (009, 'Nabokov, Vladimir'),
	   (010, 'Mencken, H.L.'),
	   (011, 'Keynes, John Maynard'),
	   (012, 'Thomas, Lewis'),
	   (013, 'Turner, Frederick J.'),
	   (014, 'Wright, Richard'),
	   (015, 'Forster, E.M.'),
	   (016, 'Foote, Shelby'),
	   (017, 'Tuchman, Barbara'),
	   (018, 'Berlin, Isaiah'),
	   (019, 'Niebuhr, Reinhold'),
	   (020, 'King, Stephen')

--end BOOK_AUTHORS table insertions

			--{--ncw--}--

--begin PUBLISHER table insertions

INSERT INTO PUBLISHER
VALUES ('A. S. Barnes', 'New York, NY', '555-123-4567'),
	   ('Penguin Random House', 'New York, NY', '555-234-5678'),
	   ('Penguin Random House', 'New York, NY', '555-234-5678'),
	   ('Penguin Random House', 'New York, NY', '555-234-5678'),
	   ('Moorside Press', 'Devon, UK', '555-345-6789'),
	   ('Houghton Mifflin', 'Boston, MA', '555-456-7890'),
	   ('Faber & Faber', 'New York, NY', '555-567-8901'),
	   ('Atheneum', 'Los Angeles, CA', '555-678-9012'),
	   ('Victor Gollancz', 'New York, NY', '555-789-0123'),
	   ('Waking Lion Press', 'Los Angeles, CA', '555-890-1234'),
	   ('Palgrave Macmillan', 'Boston, MA', '555-901-2345'),
	   ('Penguin Books', 'New York, NY', '555-987-6543'),
	   ('Publishing House', 'Boston, MA', '555-876-5432'),
	   ('Harper Collins', 'New York, NY', '555-765-4321'),
	   ('Edward Arnold', 'Los Angeles, CA', '555-654-3210'),
	   ('Random House', 'New York, NY', '555-234-5678'),
	   ('Random House', 'New York, NY', '555-234-5678'),
	   ('Farrar, Straus and Giroux', 'Boston, MA', '555-543-2109'),
	   ('Westminster John Knox Press', 'New York, NY', '555-432-1098'),
	   ('Doubleday', 'New York, NY', '555-321-0987')


--end PUBLISHER table insertions

			--{--ncw--}--

--begin BOOK_COPIES table insertion

INSERT INTO BOOK_COPIES
VALUES (001, 001, 2),
	   (002, 001, 2),
	   (003, 001, 2),
	   (004, 001, 2),
	   (005, 001, 2),
	   (006, 001, 2),
	   (007, 001, 2),
	   (008, 001, 2),
	   (009, 001, 2),
	   (010, 001, 2)

INSERT INTO BOOK_COPIES
VALUES (011, 002, 2),
	   (012, 002, 2),
	   (013, 002, 2),
	   (014, 002, 2),
	   (015, 002, 2),
	   (016, 002, 2),
	   (017, 002, 2),
	   (018, 002, 2),
	   (019, 002, 2),
	   (020, 002, 2)

INSERT INTO BOOK_COPIES
VALUES (001, 003, 2),
	   (002, 003, 2),
	   (003, 003, 2),
	   (004, 003, 2),
	   (005, 003, 2),
	   (006, 003, 2),
	   (007, 003, 2),
	   (008, 003, 2),
	   (009, 003, 2),
	   (010, 003, 2)

INSERT INTO BOOK_COPIES
VALUES (011, 004, 2),
	   (012, 004, 2),
	   (013, 004, 2),
	   (014, 004, 2),
	   (015, 004, 2),
	   (016, 004, 2),
	   (017, 004, 2),
	   (018, 004, 2),
	   (019, 004, 2),
	   (020, 004, 2)

INSERT INTO BOOK_COPIES
VALUES (001, 005, 2),
	   (002, 005, 2),
	   (003, 005, 2),
	   (004, 005, 2),
	   (005, 005, 2),
	   (006, 005, 2),
	   (007, 005, 2),
	   (008, 005, 2),
	   (009, 005, 2),
	   (010, 005, 2)


--end BOOK_COPIES table insertion

			--{--ncw--}--

--begin BOOK_LOANS table insertion

INSERT INTO BOOK_LOANS
VALUES (001, 001, 12345, '2016-08-01', '2016-10-31')

INSERT INTO BOOK_LOANS
VALUES (001, 001, 12345, '2016-08-10', '2016-11-11'),
	   (002, 001, 12345, '2016-09-01', '2016-11-30'),
	   (003, 001, 42345, '2016-08-09', '2016-11-10'),
	   (004, 001, 52345, '2016-08-01', '2016-10-31')

INSERT INTO BOOK_LOANS
VALUES (005, 001, 62345, '2016-09-01', '2016-11-30'),
	   (006, 001, 12345, '2016-09-01', '2016-11-30'),
	   (006, 001, 82345, '2016-09-11', '2016-12-11'),
	   (008, 001, 82345, '2016-09-01', '2016-11-30'),
	   (010, 001, 82345, '2016-10-01', '2016-12-30')

INSERT INTO BOOK_LOANS
VALUES (011, 002, 22345, '2016-09-01', '2016-11-30'),
	   (012, 002, 32345, '2016-09-01', '2016-11-30'),
	   (013, 002, 42345, '2016-09-11', '2016-12-11'),
	   (014, 002, 52345, '2016-09-01', '2016-11-30'),
	   (014, 002, 62345, '2016-10-01', '2016-12-30'),
	   (015, 002, 82345, '2016-09-01', '2016-11-30'),
	   (016, 002, 82345, '2016-09-01', '2016-11-30'),
	   (016, 002, 92345, '2016-09-11', '2016-12-11'),
	   (018, 002, 12345, '2016-09-01', '2016-11-30'),
	   (020, 002, 22345, '2016-10-01', '2016-12-30')

INSERT INTO BOOK_LOANS
VALUES (001, 003, 32345, '2016-09-01', '2016-11-30'),
	   (002, 003, 42345, '2016-09-01', '2016-11-30'),
	   (003, 003, 52345, '2016-09-11', '2016-12-11'),
	   (004, 003, 62345, '2016-09-01', '2016-11-30'),
	   (004, 003, 72345, '2016-10-01', '2016-12-30'),
	   (005, 003, 82345, '2016-09-01', '2016-11-30'),
	   (006, 003, 92345, '2016-09-01', '2016-11-30'),
	   (007, 003, 12345, '2016-09-11', '2016-12-11'),
	   (008, 003, 22345, '2016-09-01', '2016-11-30'),
	   (009, 003, 32345, '2016-10-01', '2016-12-30')


INSERT INTO BOOK_LOANS
VALUES (011, 004, 42345, '2016-09-01', '2016-11-30'),
	   (012, 004, 52345, '2016-09-01', '2016-11-30'),
	   (013, 004, 62345, '2016-09-11', '2016-12-11'),
	   (014, 004, 72345, '2016-09-01', '2016-11-30'),
	   (014, 004, 82345, '2016-10-01', '2016-12-30'),
	   (015, 004, 92345, '2016-09-01', '2016-11-30'),
	   (016, 004, 12345, '2016-09-01', '2016-11-30'),
	   (016, 004, 22345, '2016-09-11', '2016-12-11'),
	   (018, 004, 32345, '2016-09-01', '2016-11-30'),
	   (020, 004, 42345, '2016-10-01', '2016-12-30')


INSERT INTO BOOK_LOANS
VALUES (001, 005, 52345, '2016-09-01', '2016-11-30'),
	   (002, 005, 62345, '2016-09-01', '2016-11-30'),
	   (003, 005, 72345, '2016-09-11', '2016-12-11'),
	   (004, 005, 82345, '2016-09-01', '2016-11-30'),
	   (004, 005, 92345, '2016-10-01', '2016-12-30'),
	   (005, 005, 12345, '2016-09-01', '2016-11-30'),
	   (006, 005, 22345, '2016-09-01', '2016-11-30'),
	   (007, 005, 32345, '2016-09-11', '2016-12-11'),
	   (008, 005, 42345, '2016-09-01', '2016-11-30'),
	   (009, 005, 52345, '2016-10-01', '2016-12-30')

--end BOOK_LOANS table insertion

			--{--ncw--}--

--begin LIBRARY_BRANCH table insertion

INSERT INTO LIBRARY_BRANCH
VALUES (001, 'Central', 'Portland, OR'),
	   (002, 'Sharpstown', 'Sharpstown, OR'),
	   (003, 'Westside', 'Hillsboro, OR'),
	   (004, 'Northside', 'Vancouver, WA'),
	   (005, 'Eastside', 'Corbett, OR')

--end LIBRARY_BRANCH table insertion

			--{--ncw--}--

--begin BORROWER table insertion

INSERT INTO BORROWER
VALUES (12345, 'George Washington', 'Virginia', '123-456-7890'),
	   (22345, 'John Adams', 'Massachusetts', '234-567-8901'),
	   (32345, 'Thomas Jefferson', 'Virginia', '345-678-9012'),
	   (42345, 'James Madison', 'Virginia', '456-789-0123'),
	   (52345, 'James Monroe', 'Virginia', '567-890-1234'),
	   (62345, 'J. Quincy Adams', 'Massachusetts', '678-901-2345'),
	   (72345, 'Andrew Jackson', 'South Carolina', '789-012-3456'),
	   (82345, 'Martin Van Buren', 'New York', '890-123-4567'),
	   (92345, 'Wm. H. Harrison', 'Virginia', '901-234-5678')

--end BORROWER table insertion

			--{--ncw--}--

--------------------END-------------------------------------

SELECT* FROM BOOK
SELECT* FROM BOOK_AUTHORS
SELECT* FROM BOOK_COPIES
SELECT* FROM BOOK_LOANS
SELECT* FROM BORROWER
SELECT* FROM PUBLISHER
SELECT* FROM LIBRARY_BRANCH

--begin SQL queries

	--q1

SELECT Title, BranchName, No_Of_Copies
FROM BOOK AS bk 
INNER JOIN BOOK_COPIES AS bkCp
ON bk.BookId = bkCp.BookId
INNER JOIN LIBRARY_BRANCH AS lbBr
ON bkCp.BranchId = lbBr.BranchId
WHERE title = 'The Lost Tribe' AND BranchName = 'Sharpstown'


	--q2

SELECT Title, BranchName, No_Of_Copies
FROM BOOK AS bk 
INNER JOIN BOOK_COPIES AS bkCp
ON bk.BookId = bkCp.BookId
INNER JOIN LIBRARY_BRANCH AS lbBr
ON bkCp.BranchId = lbBr.BranchId
WHERE title = 'The Lost Tribe'


	--q3

SELECT Name, Title, bw.CardNo
FROM BORROWER AS bw
INNER JOIN BOOK_LOANS AS bkLn
ON bw.CardNo = bkLn.CardNo
INNER JOIN BOOK AS bk
ON bkLn.BookId = bk.BookId
WHERE bw.CardNo NOT IN (SELECT bw.CardNo FROM BOOK_LOANS)



	--q4

SELECT Title, bw.Name, bw.[Address], bkLn.DueDate, lbBr.BranchName
FROM BOOK_LOANS AS bkLn
INNER JOIN BOOK AS bk
ON bkLn.BookID = bk.BookId
INNER JOIN BORROWER AS bw
ON bkLn.CardNo = bw.CardNo
INNER JOIN LIBRARY_BRANCH AS lbBr
ON bkLn.BranchID = lbBr.BranchId
WHERE BranchName = 'Sharpstown' AND bkLn.DueDate = '2016-11-30'


	--q5

SELECT lbBr.BranchName,
COUNT (bkLn.DateOut) AS Loan_Total
FROM BOOK_LOANS AS bkLn
INNER JOIN LIBRARY_BRANCH AS lbBr
ON bkLn.BranchId = lbBr.BranchId
GROUP BY lbBr.BranchName


	--q6 

SELECT bw.Name, bw.[Address],
COUNT (bkLn.CardNo) AS Num_Books_Out 
FROM BOOK_LOANS AS bkLn
INNER JOIN BORROWER AS bw
ON bkLN.CardNo = bw.CardNo
GROUP BY bw.Name, bw.[Address]
HAVING COUNT (bkLN.CardNo) > 5


	--q7

SELECT bk.Title, bkCp.No_Of_Copies, lbBr.BranchName
FROM BOOK AS bk
INNER JOIN BOOK_COPIES AS bkCp
ON bk.BookId = bkCp.BookId
INNER JOIN LIBRARY_BRANCH AS lbBr
ON bkCp.BranchId = lbBr.BranchId
INNER JOIN BOOK_AUTHORS AS bkAr
ON bk.BookId = bkAr.BookId
WHERE AuthorName = 'King, Stephen' --AND BranchName = 'Central'


--end SQL queries

			--{--ncw--}--

--begin stored procedure Get Number of Books Checked Out by Borrower

DROP PROCEDURE GetNumBooksCheckedOut

CREATE PROCEDURE GetNumBooksCheckedOut @Name varchar(50)
AS
SELECT bw.Name, bw.[Address],
COUNT (bkLn.CardNo) AS Num_Books_Out 
FROM BOOK_LOANS AS bkLn
INNER JOIN BORROWER AS bw
ON bkLN.CardNo = bw.CardNo
WHERE Name LIKE '%' + ISNULL(@Name, Name) + '%'
GROUP BY bw.Name, bw.[Address]



EXEC GetNumBooksCheckedOut @Name = 'J'

--end stored procedure

    --{--ncw--}--