-- MIS106 Database Systems 
-- Project Part 4
-- Student Number:	217MI1183
-- Student Name:	BAŞAR BALLIÖZ
-- Project Name:	DATABASE ANALYSIS OF ‘www.cinemaximum.com.tr’ WEBSITE
-- 
-- Step 4 
-- Map the conceptual design in Step 3 to the physical design: 
-- a.	Prepare the design views of the tables of your project using MS Access. 
-- b.	Using MySQL; generate the CREATE TABLE commands and paste those commands to your report.


CREATE TABLE CINEMA (
cinema_name VARCHAR(200) NOT NULL,
cinema_adress TEXT NOT NULL,
PRIMARY KEY(cinema_name)
);

CREATE TABLE COMMENT (
comment_id INT AUTO_INCREMENT NOT NULL,
owner_of_comment VARCHAR(50) NOT NULL,
comment_text TEXT NOT NULL,
PRIMARY KEY(comment_id)
);

CREATE TABLE DISCOUNT (
coupon_id INT AUTO_INCREMENT NOT NULL,
coupon_terms TEXT,
coupon_price DECIMAL(5,2),
coupon_description TEXT NOT NULL,
PRIMARY KEY(coupon_id)
);

CREATE TABLE CUSTOMER (
customer_id INT AUTO_INCREMENT NOT NULL,
phone_number CHAR(20) NOT NULL,
password VARCHAR(35) NOT NULL,
e_mail CHAR(100) NOT NULL,
customer_name VARCHAR(25) NOT NULL,
customer_surname VARCHAR(25) NOT NULL,
birthdate DATE NOT NULL,
followings TEXT NOT NULL,
customer_tickets TEXT NOT NULL,
customer_points INT NOT NULL,
pass_transactions TEXT,
special_offers TEXT,
customer_cinemas TEXT,
PRIMARY KEY(customer_id)
);

CREATE TABLE MOVIE (
movie_name VARCHAR(200) NOT NULL,
director VARCHAR(50) NOT NULL,
cast TEXT NOT NULL,
genre VARCHAR(50) NOT NULL,
language VARCHAR(30) NOT NULL,
release_date DATE NOT NULL,
duration CHAR(80) NOT NULL,
movie_summary TEXT NOT NULL,
movie_format VARCHAR(30) NOT NULL,
age_restriction CHAR(3),
movie_trailer MEDIUMBLOB,
movie_rate DECIMAL(2,1),
movie_comments TEXT,
PRIMARY KEY(movie_name)
);




CREATE TABLE TICKET (
cinema_name VARCHAR(150) NOT NULL,
ticket_id INT NOT NULL,
hall_no TINYINT NOT NULL,
ticket_price DECIMAL(3,2) NOT NULL,
ticket_seats CHAR(50) NOT NULL,
pnr_code CHAR(30),
ticket_type VARCHAR(15) NOT NULL,
ticket_date DATE NOT NULL,
movie_name VARCHAR(200) NOT NULL,
show_time TIME NOT NULL,
ticket_movie_format CHAR(2) NOT NULL,
);












 
