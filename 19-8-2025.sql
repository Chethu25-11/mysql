use companydb;
CREATE TABLE DMart_Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO DMart_Products VALUES
(1, 'Milk', 'Dairy', 50, 100),
(2, 'Bread', 'Bakery', 40, 50),
(3, 'Eggs', 'Poultry', 60, NULL),
(4, 'Rice', 'Grains', 1200, 200),
(5, 'Soap', 'Personal Care', 30, 0),
(6, 'Shampoo', 'Personal Care', 150, 80),
(7, 'Sugar', 'Grains', 45, 300),
(8, 'Juice', 'Beverages', 90, 60);
SELECT * FROM DMart_Products;  
SELECT product_name, price FROM DMart_Products;  
SELECT product_name FROM DMart_Products WHERE stock > 50;  
SELECT product_id, category FROM ''DMart_Products;

SELECT product_name, category FROM DMart_Products WHERE category IN ('Dairy','Bakery');  
SELECT product_name, price FROM DMart_Products WHERE price IN (30, 50, 90);  


SELECT product_name, category FROM DMart_Products WHERE category NOT IN ('Grains','Poultry');  
SELECT product_name FROM DMart_Products WHERE product_id NOT IN (1, 2, 3);

SELECT product_name FROM DMart_Products WHERE stock IS NULL;  
SELECT * FROM DMart_Products WHERE stock IS NULL;  


SELECT product_name, stock FROM DMart_Products WHERE stock IS NOT NULL;  
SELECT product_name FROM DMart_Products WHERE price IS NOT NULL;

SELECT product_name FROM DMart_Products WHERE product_name LIKE 'S%'; 
SELECT product_name FROM DMart_Products WHERE product_name LIKE '%e';    


SELECT product_name FROM DMart_Products WHERE product_name NOT LIKE 'S%';  
SELECT product_name FROM DMart_Products WHERE product_name NOT LIKE '%a%';
SELECT product_name AS Item, price AS Cost FROM DMart_Products;    
SELECT product_id AS ID, stock AS Available FROM DMart_Products;  

SELECT product_name, price FROM DMart_Products ORDER BY price ASC;  
SELECT product_name, price FROM DMart_Products ORDER BY price DESC;  
SELECT product_name, stock FROM DMart_Products ORDER BY stock ASC;  
SELECT product_name, category FROM DMart_Products ORDER BY category DESC;

