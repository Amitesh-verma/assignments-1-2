create database assignment2;
use assignment2;

CREATE TABLE sales_data (
 order_id INT PRIMARY KEY,
 customer_name VARCHAR(50),
 city VARCHAR(30),
 product_category VARCHAR(30),
 sales_amount DECIMAL(10,2),
 quantity INT,
 order_date DATE,
 sales_rep VARCHAR(30)
);

INSERT INTO sales_data VALUES
(1,'Aman','Delhi','Laptop',55000,1,'2025-01-05','Rahul'),
(2,'Priya','Mumbai','Mobile',25000,2,'2025-01-06','Neha'),
(3,'Rohit','Pune','Laptop',60000,1,'2025-01-08','Rahul'),
(4,'Sneha','Delhi','Tablet',18000,1,'2025-01-09','Amit'),
(5,'Vikas','Mumbai','Mobile',22000,1,'2025-01-10','Neha'),
(6,'Anjali','Pune','Laptop',65000,1,'2025-01-12','Rahul'),
(7,'Karan','Delhi','Monitor',15000,2,'2025-01-13','Amit'),
(8,'Pooja','Mumbai','Tablet',20000,1,'2025-01-15','Neha'),
(9,'Ravi','Pune','Mobile',28000,2,'2025-01-16','Rahul'),
(10,'Nisha','Delhi','Laptop',70000,1,'2025-01-18','Amit'),
(11,'Deepak','Mumbai','Monitor',17000,1,'2025-01-20','Neha'),
(12,'Meena','Pune','Laptop',62000,1,'2025-01-21','Rahul'),
(13,'Arjun','Delhi','Tablet',19000,2,'2025-01-22','Amit'),
(14,'Komal','Mumbai','Laptop',58000,1,'2025-01-23','Neha'),
(15,'Suresh','Pune','Mobile',26000,1,'2025-01-24','Rahul'),
(16,'Ritika','Delhi','Laptop',72000,1,'2025-01-25','Amit'),
(17,'Mohit','Mumbai','Tablet',21000,1,'2025-01-26','Neha'),
(18,'Payal','Pune','Monitor',16000,2,'2025-01-27','Rahul'),
(19,'Ajay','Delhi','Mobile',24000,1,'2025-01-28','Amit'),
(20,'Kavita','Mumbai','Laptop',68000,1,'2025-01-29','Neha'),
(21,'Tarun','Pune','Tablet',22000,1,'2025-02-01','Rahul'),
(22,'Simran','Delhi','Laptop',75000,1,'2025-02-02','Amit'),
(23,'Harsh','Mumbai','Monitor',18000,1,'2025-02-03','Neha'),
(24,'Preeti','Pune','Laptop',64000,1,'2025-02-04','Rahul'),
(25,'Yash','Delhi','Mobile',27000,2,'2025-02-05','Amit'),
(26,'Isha','Mumbai','Tablet',23000,1,'2025-02-06','Neha'),
(27,'Nitin','Pune','Laptop',66000,1,'2025-02-07','Rahul'),
(28,'Shweta','Delhi','Monitor',19000,1,'2025-02-08','Amit'),
(29,'Manoj','Mumbai','Mobile',29000,2,'2025-02-09','Neha'),
(30,'Reena','Pune','Laptop',71000,1,'2025-02-10','Rahul');

-- WHERE 
-- Show all customers from Delhi.
select customer_name from sales_data
where city = 'Delhi';

-- Show all orders from Mumbai.
select * from sales_data
where city = 'mumbai';

-- Show only Laptop category orders.
select * from sales_data
where product_category = 'Laptop';

-- Show orders where sales amount is greater than 50,000.
select * from sales_data
where sales_amount > 50000;

-- Show orders with quantity equal to 2.
select * from sales_data
where quantity =2;

-- Show orders handled by Rahul.
select * from sales_data
where sales_rep = 'Rahul';

-- Show all orders placed in January.
select * from sales_data
where order_date between '2025-01-01' and '2025-01-31';

-- Show orders where sales amount is less than 20,000.
select * from sales_data
where sales_amount <20000;

-- Show Laptop orders from Pune.
select * from sales_data
where product_category = 'Laptop' and city = 'Pune';

-- Show Mobile orders from Delhi.
select * from sales_data
where product_category = 'Mobile' and city = 'delhi';

-- Show orders handled by Amit with sales greater than 25,000.
select * from sales_data
where sales_rep = 'Amit' and sales_amount >25000;

-- Show all Monitor category orders.
select * from sales_data
where product_category = 'monitor';

-- Show Tablet orders from Mumbai. 
select * from sales_data
where product_category = 'tablet' and city = 'mumbai';

-- Show orders where sales amount is 60,000 or more.
select * from sales_data
where sales_amount >= 60000;

-- Show all orders placed in February.
select * from sales_data
where order_date between '2025-02-01' and '2025-02-28';

-- DISTINCT
-- Show all unique cities.
select distinct city from sales_data;

-- Show all unique product categories. 
select distinct product_category from sales_data;

-- Show all unique sales representatives.
select distinct sales_rep from sales_data;

-- Count the number of unique cities.
select count(distinct city) from sales_data;

-- Count the number of unique product categories.
select count(distinct product_category) from sales_data;

-- ORDER BY 
-- Display orders sorted by sales amount in descending order.
select * from sales_data
order by sales_amount desc;

-- . Display orders sorted by sales amount in ascending order.
select * from sales_data
order by sales_amount asc;

-- Display customer names in alphabetical order.
select * from sales_data
order by customer_name asc;

--  Display the most recent orders first.
select * from sales_data
order by order_date desc;

-- Display the oldest orders first.
select * from sales_data
order by order_date asc;

-- . Show the top 5 highest sales orders.
select * from sales_data
order by sales_amount desc limit 5;

-- Show the top 5 lowest sales orders.
select * from sales_data
order by sales_amount asc limit 5;

-- Sort orders by quantity in descending order.
select * from sales_data
order by quantity desc;

-- Sort orders by city and sales amount.
select * from sales_data
order by city,sales_amount desc;

-- Sort orders by sales representative and order date.
select * from sales_data
order by sales_rep,order_date desc;

-- GROUP BY 
-- Count total orders for each city.
SELECT city, COUNT(*) AS total_orders
FROM sales_data
GROUP BY city;

-- Count total orders for each product category
SELECT product_category, COUNT(*) AS total_orders
FROM sales_data
GROUP BY product_category;

-- Count total orders handled by each sales representative.
SELECT sales_rep, COUNT(*) AS total_orders
FROM sales_data
GROUP BY sales_rep;

-- Calculate total sales for each city
SELECT city, sum(sales_amount) AS total_sales
FROM sales_data
GROUP BY city;

-- Calculate total sales for each product category.
SELECT product_category, sum(sales_amount) AS total_sales
FROM sales_data
GROUP BY product_category;

-- . Calculate total sales for each sales representative.
SELECT sales_rep, sum(sales_amount) AS total_sales
FROM sales_data
GROUP BY sales_rep;

-- Calculate average sales amount for each city.
SELECT city, avg(sales_amount) AS avg_sales
FROM sales_data
GROUP BY city;

-- Calculate average sales amount for each product category.
SELECT product_category, avg(sales_amount) AS avg_sales
FROM sales_data
GROUP BY product_category;

-- . Find the maximum sales amount for each city
SELECT city, max(sales_amount) AS avg_sales
FROM sales_data
GROUP BY city;

-- Find the minimum sales amount for each product category.
SELECT product_category, min(sales_amount) AS avg_sales
FROM sales_data
GROUP BY product_category;

-- HAVING 
-- Show cities where total sales are greater than 200,000.
SELECT city, sum(sales_amount) AS total_sales
FROM sales_data
GROUP BY city
having sum(sales_amount) > 200000;

-- Show product categories with more than 5 orders.
SELECT product_category, count(*) AS total_order
FROM sales_data
GROUP BY product_category
having count(*) > 5;

-- Show sales representatives whose total sales exceed 300,000.
SELECT sales_rep, sum(sales_amount) AS total_order
FROM sales_data
GROUP BY sales_rep
having sum(sales_amount) > 300000;

-- Show cities where the average sales amount is greater than 40,000.
SELECT city, avg(sales_amount) AS total_avg
FROM sales_data
GROUP BY city
having avg(sales_amount) > 4000;

-- Show product categories where the average sales amount is greater than 30,000.
SELECT product_category, avg(sales_amount) AS total_avg
FROM sales_data
GROUP BY product_category
having avg(sales_amount) > 30000;

-- LIMIT 
-- Show the top 3 highest sales orders.
SELECT sales_amount
FROM sales_data
ORDER BY sales_amount DESC
LIMIT 3;

-- Show the top 5 lowest sales orders.
SELECT sales_amount
FROM sales_data
ORDER BY sales_amount asc
LIMIT 3;

-- Show the latest 10 orders.
SELECT order_date
FROM sales_data
ORDER BY order_date desc
LIMIT 10;

-- Show the top 7 highest sales orders.
SELECT sales_amount
FROM sales_data
ORDER BY sales_amount DESC
LIMIT 7;

-- Show the first 5 records sorted by customer name.
SELECT customer_name
FROM sales_data
ORDER BY customer_name asc
LIMIT 5;



select * from sales_data;