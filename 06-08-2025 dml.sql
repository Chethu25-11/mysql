CREATE DATABASE charger;
USE charger;
CREATE TABLE Charger (
    brand VARCHAR(50),
    power_output INT,
    type VARCHAR(20),
    price FLOAT
);
ALTER TABLE Charger ADD fast_charger BOOLEAN;
ALTER TABLE Charger ADD charger_name VARCHAR(20);

DESC Charger;
CREATE TABLE Mobile (
    model_name VARCHAR(50),
    battery_capacity INT,
    supports_fast_charging BOOLEAN
);
desc Mobile; 
create table movie_info(
movie_id int,
movie_name varchar(20),
movie_release_date date,
ticket_price float,
duration time,
rating float,
actor_name varchar(30),
producer_name varchar(20),
director_name varchar(20),
budget double,
collection double,
realese_date datetime,
no_of_screens int);
desc movie_info;
INSERT INTO movie_info value(101, 'Kantara', '2022-09-30', 150.00, '02:30:00', 8.9,'Rishab Shetty', 'Vijay Kiragandur', 'Rishab Shetty', 160000000, 400000000,'2022-09-30 09:00:00', 250
);
insert into movie_info(movie_id,movie_name,movie_release_date,ticket_price ,duration,rating,actor_name)values(101,"kgf",'2002-11-25',160.00,'02:40:00',9.9,"darshan");
desc movie_info;

select * from movie_info;
create database CompanyDepartment;
use CompanyDepartment;
CREATE TABLE EmployeeDetails (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(10),
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10, 2),
    department VARCHAR(50),
    project_assigned VARCHAR(100),
    manager_name VARCHAR(50),
    experience_years INT,
    marital_status VARCHAR(10),
    pan_number VARCHAR(15),
    aadhar_number VARCHAR(20)
);
desc employeedetails;
INSERT INTO EmployeeDetails (
    employee_id, first_name, last_name, gender, date_of_birth, email, phone_number, address,
    city, state, country, postal_code, hire_date, job_title, salary
) VALUES
(14, 'Meena', 'Iyer', 'F', '1992-03-22', 'meena.iyer@example.com', '9876543211', '501 Lotus Lane', 'Mumbai', 'Maharashtra', 'India', '400001', '2020-04-01', 'HR Manager', 65000.00),
(15, 'Rajesh', 'Menon', 'M', '1989-07-18', 'rajesh.menon@example.com', '9865321470', '78 Palm Street', 'Thiruvananthapuram', 'Kerala', 'India', '695001', '2018-12-10', 'Senior Developer', 88000.00),
(16, 'Anjali', 'Deshpande', 'F', '1994-09-05', 'anjali.d@example.com', '9845012345', '36 Central Park', 'Nagpur', 'Maharashtra', 'India', '440001', '2022-07-15', 'System Analyst', 60000.00),
(17, 'Karthik', 'Rao', 'M', '1990-01-09', 'karthik.rao@example.com', '9833445566', '88 Lake View', 'Coimbatore', 'Tamil Nadu', 'India', '641001', '2017-03-30', 'IT Manager', 92000.00),
(18, 'Priya', 'Singh', 'F', '1996-05-14', 'priya.singh@example.com', '9822113344', '143 Blossom Street', 'Patna', 'Bihar', 'India', '800001', '2023-09-01', 'Web Designer', 55000.00),
(19, 'Aman', 'Tripathi', 'M', '1988-10-25', 'aman.tripathi@example.com', '9811223344', '67 Hill Road', 'Bhopal', 'Madhya Pradesh', 'India', '462001', '2016-11-20', 'Software Engineer', 74000.00),
(20, 'Sneha', 'Kulkarni', 'F', '1993-11-12', 'sneha.k@example.com', '9800123456', '22 Rose Garden', 'Pune', 'Maharashtra', 'India', '411001', '2021-06-10', 'QA Engineer', 58000.00);
INSERT INTO EmployeeDetails (
    employee_id, first_name, last_name, gender, date_of_birth, email, phone_number, address,
    city, state, country, postal_code, hire_date, job_title, salary,
    department, project_assigned, manager_name, experience_years, marital_status, pan_number, aadhar_number
) VALUES
(21, 'Nikhil', 'Shetty', 'M', '1991-08-10', 'nikhil.s@example.com', '9876000011', '23 Green Field', 'Mangalore', 'Karnataka', 'India', '575001', '2019-03-15', 'UI Developer', 62000.00, 'Design', 'Website Revamp', 'Karthik Rao', 5, 'Married', 'ABCDE1234F', '123456789012'),
(22, 'Rina', 'Kapoor', 'F', '1995-01-25', 'rina.k@example.com', '9876000022', '17 Lake View', 'Jaipur', 'Rajasthan', 'India', '302001', '2021-08-01', 'Marketing Exec', 58000.00, 'Marketing', 'Product Launch', 'Meena Iyer', 3, 'Single', 'PQRS1234T', '123456789013'),
(23, 'Sanjay', 'Verma', 'M', '1987-12-05', 'sanjay.v@example.com', '9876000033', '99 City Center', 'Delhi', 'Delhi', 'India', '110001', '2015-07-10', 'Tech Lead', 98000.00, 'Development', 'Core System', 'Aman Tripathi', 10, 'Married', 'LMNO1234K', '123456789014'),
(24, 'Divya', 'Nair', 'F', '1993-04-18', 'divya.n@example.com', '9876000044', '64 River Road', 'Kochi', 'Kerala', 'India', '682001', '2020-01-05', 'Content Writer', 53000.00, 'Content', 'Blog Creation', 'Priya Singh', 4, 'Single', 'WXYZ1234G', '123456789015'),
(25, 'Rohit', 'Bhatia', 'M', '1990-09-09', 'rohit.b@example.com', '9876000055', '88 Airport Road', 'Lucknow', 'Uttar Pradesh', 'India', '226001', '2018-11-20', 'Network Engineer', 70000.00, 'IT', 'Infra Upgrade', 'Karthik Rao', 6, 'Married', 'ASDF1234J', '123456789016'),
(26, 'Aarti', 'Sharma', 'F', '1997-06-14', 'aarti.s@example.com', '9876000066', '12 Tech Park', 'Chandigarh', 'Punjab', 'India', '160001', '2023-02-14', 'Intern', 30000.00, 'HR', 'Campus Hiring', 'Meena Iyer', 1, 'Single', 'GHJK1234L', '123456789017'),
(27, 'Vikas', 'Gupta', 'M', '1985-11-30', 'vikas.g@example.com', '9876000077', '44 Ring Road', 'Ahmedabad', 'Gujarat', 'India', '380001', '2014-05-22', 'Data Architect', 99000.00, 'Data', 'Migration Project', 'Anjali Deshpande', 11, 'Married', 'ZXCV1234Q', '123456789018');
select * from employeedetails;
CREATE DATABASE School;
USE School;
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade VARCHAR(10),
    email VARCHAR(100)
);
INSERT INTO Student (student_id, name, age, grade, email) VALUES
(1, 'Rahul ', 15, '10th', 'rahul.sharma@example.com'),
(2, 'Anjali Mehta', 14, '9th', 'anjali.mehta@example.com'),
(3, 'Aarav Patel', 16, '11th', 'aarav.patel@example.com'),
(4, 'Sneha Rao', 15, '10th', 'sneha.rao@example.com'),
(5, 'Karan Singh', 17, '12th', 'karan.singh@example.com');
select * from Student;
delete from Student where name='Rahul ';
select * from Student;
