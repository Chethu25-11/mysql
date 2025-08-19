create database Developer;
use Developer;
CREATE TABLE Software_Company (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    headquarters VARCHAR(100),
    founded_year INT,
    ceo_name VARCHAR(100)
);
desc Software_Company;

CREATE TABLE Software_Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    version VARCHAR(20),
    release_year INT,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Software_Company(company_id)
);
desc Software_Product;

CREATE TABLE Developer (
    developer_id INT PRIMARY KEY,
    dev_name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    experience_years INT,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Software_Company(company_id)
);
desc Developer;

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES Software_Product(product_id)
);
desc Project ;

CREATE TABLE Bug_Report (
    bug_id INT PRIMARY KEY,
    bug_title VARCHAR(150) NOT NULL,
    severity VARCHAR(20),
    reported_by INT,
    project_id INT,
    FOREIGN KEY (reported_by) REFERENCES Developer(developer_id),
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);
desc Bug_Report;
INSERT INTO Software_Company (company_id, company_name, headquarters, founded_year, ceo_name)
VALUES
(1, 'TechNova ', 'Bangalore', 2010, 'Ravi Kumar'),
(2, 'Inc.', 'Hyderabad', 2015, ' Sharma'),
(3, ' Technologies', 'Pune', 2008, 'Patel');
INSERT INTO Software_Product (product_id, product_name, version, release_year, company_id)
VALUES
(101, 'NovaCRM', '3.2', 2022, 1),
(102, 'CodeFlow IDE', '1.8', 2023, 2),
(103, 'EdgeAnalytics', '5.0', 2021, 3);
INSERT INTO Developer (developer_id, dev_name, role, experience_years, company_id)
VALUES
(201, 'Arjun Mehta', 'Backend Developer', 5, 1),
(202, 'Priya Verma', 'Frontend Developer', 3, 2),
(203, 'Sandeep Reddy', 'Data Scientist', 7, 3);
INSERT INTO Project (project_id, project_name, start_date, end_date, product_id)
VALUES
(301, 'CRM Upgrade', '2023-01-10', '2023-06-15', 101),
(302, 'IDE Performance Boost', '2023-02-05', '2023-09-20', 102),
(303, 'Analytics AI Module', '2022-11-01', '2023-05-30', 103);
INSERT INTO Bug_Report (bug_id, bug_title, severity, reported_by, project_id)
VALUES
(401, 'Login timeout issue', 'High', 201, 301),
(402, 'UI misalignment', 'Medium', 202, 302),
(403, 'Data processing delay', 'Critical', 203, 303);