#creating comics database by using aggregate functions
CREATE DATABASE comics_db;
USE comics_db;
CREATE TABLE comics (
    comic_id INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(100),
    Author_fname VARCHAR(100),
    Author_lname VARCHAR(100),
    Released_year INT,
    stock_quantity INT,
    Pages INT,
    PRIMARY KEY (comic_id)
);
DESC comics;
INSERT INTO comics(Title,Author_fname,Author_lname,Released_year,stock_quantity,Pages)
VALUES('The Vision,Volume 1: Little Worse Than A Man','Tom','King',2016,26,139),
('Batman: The killing Joke','Alan','Moore',1995,23,50),
('Venom, Volume 1: Homecoming','Mike','Costa',2017,27,136),
('Venom, Volume 2: The Abyss','Danny','Cates',2017,24,136),
('The Flash : A Celebration of 75 Years','Geoff','Johns',2015,234,480);
SELECT * FROM comics;

#count number of rows and columns in a database
SELECT COUNT(*) FROM comics;
SELECT COUNT(Author_fname) FROM comics;

#show lowest number of values in a table
SELECT MIN(Released_year) FROM comics;

#show highest number of values in a table
SELECT MAX(Pages) FROM comics;

#show Min Title and Pages
SELECT Title,Pages FROM comics
ORDER BY Pages LIMIT 1;

#show Max Title and Pages
SELECT Title,Pages FROM comics
ORDER BY Pages DESC;

#calculate sum of selected set of columns
SELECT SUM(Pages) FROM comics;

#calculate average of selected set of columns
SELECT AVG(Released_year) FROM comics;


