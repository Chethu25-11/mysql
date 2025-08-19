create database Adhar;
use Adhar;
show databases;
create table Adhar_info(
id int,
name varchar(30),
mobile_number long,
address varchar(30),
pincode int,
age int,
gender varchar(30),
date_of_birth date,
is_signature_valid boolean,
relationship_status varchar(30),
state varchar(20)
);
INSERT INTO Adhar_info VALUES (1, 'Rahul Sharma', 9876543210, 'MG Road', 560001, 30, 'Male', '1995-08-15', TRUE, 'Single', 'Karnataka');
INSERT INTO Adhar_info VALUES (2, 'Priya Verma', 9876543211, 'BTM Layout', 560076, 28, 'Female', '1997-05-22', TRUE, 'Married', 'Karnataka');
INSERT INTO Adhar_info VALUES (3, 'Amit Kumar', 9876543212, 'Andheri East', 400069, 35, 'Male', '1990-10-01', FALSE, 'Married', 'Maharashtra');
INSERT INTO Adhar_info VALUES (4, 'Neha Reddy', 9876543213, 'Jubilee Hills', 500033, 26, 'Female', '1999-03-30', TRUE, 'Single', 'Telangana');
INSERT INTO Adhar_info VALUES (5, 'Suresh Iyer', 9876543214, 'T Nagar', 600017, 40, 'Male', '1985-11-11', FALSE, 'Married', 'Tamil Nadu');
INSERT INTO Adhar_info VALUES (6, 'Anjali Mehta', 9876543215, 'Navrangpura', 380009, 32, 'Female', '1993-07-19', TRUE, 'Married', 'Gujarat');
INSERT INTO Adhar_info VALUES (7, 'Rohit Singh', 9876543216, 'Civil Lines', 110054, 24, 'Male', '2001-01-09', TRUE, 'Single', 'Delhi');
INSERT INTO Adhar_info VALUES (8, 'Divya Nair', 9876543217, 'Kakkanad', 682030, 29, 'Female', '1996-12-12', FALSE, 'Single', 'Kerala');
INSERT INTO Adhar_info VALUES (9, 'Karan Joshi', 9876543218, 'Hiran Magri', 313001, 38, 'Male', '1987-04-25', TRUE, 'Divorced', 'Rajasthan');
INSERT INTO Adhar_info VALUES (10, 'Sneha Das', 9876543219, 'Salt Lake', 700064, 27, 'Female', '1998-08-08', TRUE, 'Single', 'West Bengal');
INSERT INTO Adhar_info VALUES (11, 'Nikhil Bhat', 9876543220, 'Indira Nagar', 560038, 36, 'Male', '1989-09-29', TRUE, 'Married', 'Karnataka');
INSERT INTO Adhar_info VALUES (12, 'Pooja Sharma', 9876543221, 'Laxmi Nagar', 110092, 31, 'Female', '1994-02-14', FALSE, 'Married', 'Delhi');
INSERT INTO Adhar_info VALUES (13, 'Vikram Chauhan', 9876543222, 'Sector 22', 160022, 33, 'Male', '1992-06-06', TRUE, 'Single', 'Punjab');
INSERT INTO Adhar_info VALUES (14, 'Meera Pillai', 9876543223, 'Anna Nagar', 600040, 25, 'Female', '2000-11-21', TRUE, 'Single', 'Tamil Nadu');
INSERT INTO Adhar_info VALUES (15, 'Arjun Desai', 9876543224, 'Ellis Bridge', 380006, 42, 'Male', '1983-05-10', FALSE, 'Married', 'Gujarat');
select * from Adhar_info;
desc Adhar_info;