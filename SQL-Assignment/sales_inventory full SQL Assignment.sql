-- CREATE schema assignment
CREATE SCHEMA assignment;

set search_path to assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);

-- CREATE Products table in the assignment schema
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);

-- CREATE Sales table in the assignment schema
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from customers;

-- Inserting data into assignment.Products table
INSERT INTO products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from products;

-- Inserting data into assignment.Sales table
INSERT INTO sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM customers;

-- Select all data from assignment.Products table
SELECT * FROM products;

-- Select all data from assignment.Sales table
SELECT * FROM sales;

-- Select all data from assignment.Inventory table
SELECT * FROM inventory;



SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM sales;
SELECT * FROM inventory;


--- QUESTIONS

-- 1. Write a query to select all data from the `Customers` table.

select * from customers;

-- 2. Write a query to select the total number of products from the `Products` table.

select count(product_id)
from products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.

select product_name, price
from products
where price > 500;

-- 4. Write a query to find the average price of all products from the `Products` table.

select round(AVG(price),2) as average_price
from products;

-- 5. Write a query to find the total sales amount across all records from the `Sales` table.

select SUM(total_amount) as total_sales
from sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.

select distinct(membership_status)
from customers;


-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.

select concat(first_name,' ',last_name) as full_name
from customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.

select * 
from products 
where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.

select MAX(price) as highest_price
from products;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.

select product_id, count(*) as number_of_sales
from sales
group by product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.

select product_id, SUM(quantity_sold) as total_quantity_sold
from sales
group by product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.

select MIN(price) as lowest_price
from products;


--- JOINS

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.

select customer_id
from sales s
join products p
on s.product_id = p.product_id
where p.price > 1000;

select c.first_name, c.last_name, p.product_name, p.price
from sales s
join customers c
on c.customer_id = s.customer_id 
join products p
on p.product_id = s.product_id 
where p.price > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product

select p.product_name, SUM(s.total_amount) as total_sales
from sales s
join products p
on s.product_id = p.product_id 
group by p.product_name;


-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.

select c.customer_id,c.first_name,c.last_name, SUM(s.total_amount) as total_spend
from sales s
join customers c
on s.customer_id = c.customer_id
group by c.customer_id,c.first_name, c.last_name;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.

select c.first_name, c.last_name, p.product_name, s.quantity_sold
from sales s
join products p
on s.product_id = p.product_id 
join customers c
on s.customer_id = c.customer_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.

select c.first_name,c.last_name,ac.first_name,ac.last_name, c.membership_status
from customers c
join customers ac
on c.membership_status  = ac.membership_status
where c.customer_id != ac.customer_id;


-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.

select p.product_name,count(s.sale_id)
from products p
join sales s
on p.product_id = s.product_id
group by p.product_name;


-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.

select * 
from products
where stock_quantity < 10;


-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.

select p.product_name,s.sale_id, s.quantity_sold
from sales s
join products p
on s.product_id = p.product_id 
where s.quantity_sold > 5;


-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.

select c.first_name, c.last_name, p.product_name, p.category
from products p
join sales s
on p.product_id = s.product_id
join customers c
on c.customer_id = s.customer_id
where category in ('Electronics', 'Appliances');


-- 22. Write a query to calculate the total sales amount per product and group the result by product name.

select p.product_name, s.total_amount
from sales s
join products p
on p.product_id = s.product_id 
group by p.product_name, s.total_amount;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.

select c.first_name, c.last_name, s.sale_date
from sales s
join customers c
on s.customer_id = c.customer_id 
where sale_date between '2023-01-01' and '2024-01-01';

select c.first_name, c.last_name, s.sale_date
from sales s
join customers c
on s.customer_id = c.customer_id 
where date_part('year',sale_date) = '2023';

select c.first_name, c.last_name, s.sale_date
from sales s
join customers c
on s.customer_id = c.customer_id 
where extract(year from sale_date) = 2023;

-- 24. Write a query to find the customers with the highest total sales in 2023.

select c.first_name, c.last_name, s.sale_date,s.total_amount
from customers c 
join sales s
on s.customer_id = c.customer_id
where sale_date between '2023-01-01' and '2024-01-01'
order by s.total_amount desc
limit 1;

select c.first_name, c.last_name, s.sale_date,s.total_amount
from customers c 
join sales s
on s.customer_id = c.customer_id
where extract(year from sale_date) = 2023
order by s.total_amount desc
limit 1;

select c.first_name, c.last_name, s.sale_date, s.total_amount
from customers c 
join sales s
on s.customer_id = c.customer_id
where date_part('year',sale_date) = '2023'
order by s.total_amount desc
limit 1;

--using a CTE accurate results
with highest_sales as 
(select initcap(concat(c.first_name,' ',c.last_name)) as "Customer Name", s.total_amount as "Total Sales", dense_rank() over(order by s.total_amount desc) as "Sales Rank"
from sales s
join customers c on s.customer_id = c.customer_id
where date_part('year',sale_date) = '2023')      -- this has created a virtual table
select hs."Customer Name", hs."Total Sales" from highest_sales hs 
where "Sales Rank" = 1;

-- USING SUBQUERIES accurate results

select * 
from (
select c.first_name, s.total_amount, dense_rank() over(order by s.total_amount desc) as sale_rank
from sales s
join customers c 
on s.customer_id = c.customer_id 
where extract(year from s.sale_date) = 2023)
where sale_rank = 1;



-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.

select p.product_name, p.price,s.total_amount
from sales s
join products p
on s.product_id = p.product_id
order by p.price desc, s.total_amount desc
limit 1;


-- USING SUBQUERIES

select * from (
select p.product_name, s.total_amount,dense_rank() over(order by p.price desc) as most_expensive
from sales s
join products p on s.product_id = p.product_id)
where most_expensive = 1;

-- USING CTE

with expe as
(select p.product_name, s.total_amount,dense_rank() over(order by p.price desc) as most_expensive
from sales s
join products p on s.product_id = p.product_id)
select * from expe where most_expensive = 1;



-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.

select count(customer_id)
from sales 
where total_amount > 500;


-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.

-- Using Subqueries
select * from(
select 
c.first_name, p.product_name,c.membership_status, count(s.sale_id) as total_number_of_sales
from sales s
join customers c on s.customer_id = c.customer_id
join products p on s.product_id = p.product_id
group by c.first_name, p.product_name,c.membership_status)
where membership_status = 'Gold';


-- Using CTE

with count_of_sales as 
(select 
c.first_name, p.product_name,c.membership_status, count(s.sale_id) as total_number_of_sales
from sales s
join customers c on s.customer_id = c.customer_id
join products p on s.product_id = p.product_id
group by c.first_name, p.product_name,c.membership_status)
select * from count_of_sales where membership_status = 'Gold';


-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).

select p.product_name, i.stock_quantity
from products p
join inventory i 
on p.product_id = i.product_id
where i.stock_quantity < 10;

-- using cte

with prod_summary as 
(select p.product_name, i.stock_quantity
from products p
join inventory i on p.product_id = i.product_id)
select * from prod_summary ps
where ps.stock_quantity < 10;


-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.

select c.first_name, s.quantity_sold as total_quantity
from sales s
join customers c 
on s.customer_id = c.customer_id
where s.quantity_sold >= 5;


-- 30. Write a query to find the average quantity sold per product.

select product_id, avg(quantity_sold) as avg_quantity
from sales
group by product_id;


-- 31. Write a query to find the number of sales made in the month of December 2023.

select count(sale_id)
from sales
where extract(year from sale_date) = 2023 and extract(month from sale_date) = 12;
 
-- or

select count(sale_id)
from sales
where sale_date >= '2023-12-01' and  sale_date <= '2023-12-31';


-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.

-- subqueries

select * from(
select c.first_name,c.last_name,s.sale_date, sum(s.total_amount) as total_amount_spent
from sales s
join customers c
on s.customer_id = c.customer_id
group by c.first_name, c.last_name, s.sale_date, s.total_amount
order by s.total_amount desc) 
where extract(year from sale_date) = 2023;


select customer_id, sum(total_amount) as customer_expenditure2023 
from sales 
where sale_date >= '2023-01-01' and sale_date < '2024-01-01'
group by customer_id
order by customer_expenditure2023 desc;


select c.first_name, sum(s.total_amount) as sum_total_amount
from sales s
join customers c on s.customer_id = c.customer_id
where extract(year from sale_date) = '2023'
group by c.first_name 
order by sum_total_amount desc;



-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.

-- product_name, stock_quantity, quantity sold

select p.product_name, p.stock_quantity, s.quantity_sold , (p.stock_quantity-s.quantity_sold) as remaining_stock
from sales s
inner join products p
on s.product_id = p.product_id
where p.stock_quantity-s.quantity_sold < 5;

select p.product_name, p.stock_quantity, s.quantity_sold , (p.stock_quantity-s.quantity_sold) as remaining_stock
from sales s
inner join products p
on s.product_id = p.product_id
where p.stock_quantity-s.quantity_sold < 50;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.

select product_name, sum(s.total_amount) as total_sales
from sales s
join products p
on s.product_id = p.product_id 
group by product_name
order by total_sales desc;


-- 35. Write a query to find all customers who bought products within 7 days of their registration date.

-- customer name, registration date,sale date,(sale_date-registration date) 1-7

select (sale_date::date - registration_date::date) as diff_in_days
from customers c
join sales s
on c.customer_id = s.customer_id
where (sale_date::date - registration_date::date) between 1 and 7;

select (sale_date::date - registration_date::date) as diff_in_days
from customers c
join sales s
on c.customer_id = s.customer_id
where (sale_date::date - registration_date::date) between 1 and 500;

select c.first_name, c.registration_date, s.sale_date
from customers c
join sales s
on c.customer_id = s.customer_id
where sale_date between registration_date and registration_date + interval '7 days';

select c.first_name, c.registration_date, s.sale_date
from customers c
join sales s
on c.customer_id = s.customer_id
where sale_date between registration_date and registration_date + interval '100 days';


-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
-- product name, price

select product_name, price
from products 
where price between 100 and 500;




-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
-- customer name, count of customer id from the sales table

select s.customer_id,concat(c.first_name,' ', c.last_name) as customer_name, dense_rank() over (order by count(s.customer_id)) as no_of_purchases
from sales s 
join customers c
on c.customer_id = s.customer_id
group by s.customer_id,customer_name;



-- 38. Write a query to find the total quantity of products sold per customer.
-- sum of quantity_sold, customer name

select c.customer_id, concat(c.first_name,' ', c.last_name) as customer_name, sum(s.quantity_sold)
from sales s
join customers c
on c.customer_id = s.customer_id
group by c.customer_id, customer_name;



-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
-- inventory, products
 -- try using windows function and a subquery

select product_id, product_name, stock_quantity
from (
select p.product_id, p.product_name, i.stock_quantity, rank() over (order by i.stock_quantity desc) as highest_rank, rank() over (order by i.stock_quantity asc) as lowest_rank
from inventory i
join products p
on i.product_id = p.product_id) 
where highest_rank = 1 or lowest_rank = 1;

-- try with a union

select p.product_id, p.product_name, i.stock_quantity
from inventory i
join products p
on i.product_id = p.product_id
where i.stock_quantity = (select max(stock_quantity) from inventory)
union all
select p.product_id, p.product_name, i.stock_quantity
from inventory i
join products p
on i.product_id = p.product_id
where i.stock_quantity = (select min(stock_quantity) from inventory);


-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
-- product id, product name, total amount
--'%phone%'

select p.product_id, p.product_name, sum(s.total_amount) as total_sales
from sales s 
join products p 
on p.product_id = s.product_id
where p.product_name like '%phone%'
group by p.product_id, p.product_name;



-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
-- customer id , name, membership status , total sales amount, product names 

select 
c.customer_id, c.first_name, p.product_name, c.membership_status, sum(s.total_amount) as total_sales
from sales s
join customers c on s.customer_id = c.customer_id
join products p on s.product_id = p.product_id
where membership_status = 'Gold'
group by c.customer_id,c.first_name, p.product_name,c.membership_status;

-- using a subquery

select * from(
select 
c.customer_id, c.first_name, p.product_name, c.membership_status, sum(s.total_amount) as total_sales
from sales s
join customers c on s.customer_id = c.customer_id
join products p on s.product_id = p.product_id
group by c.customer_id,c.first_name, p.product_name,c.membership_status)
where membership_status = 'Gold';

-- using ctes

with total_sales as 
(select c.first_name, c.last_name,c.customer_id, c.membership_status, p.product_name, sum(s.total_amount)
from sales s
join customers c on s.customer_id = c.customer_id
join products p on s.product_id = p.product_id
group by c.first_name, c.last_name,c.customer_id, c.membership_status, p.product_name)
select * from total_sales ts where ts.membership_status ='Gold';



-- 42. Write a query to find the total sales of products by category.
-- product id, product name, product category, total sales

select p.category, sum(s.total_amount) as total_sales
from sales s
join products p
on p.product_id = s.product_id 
group by  p.category;



-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
-- total amount, sale_id, product name

select p.product_name,sum(s.total_amount),extract(year from s.sale_date)::text, extract(month from s.sale_date)
from sales s
join products p on s.product_id = p.product_id
group by p.product_name,extract(year from s.sale_date), extract(month from s.sale_date);

select p.product_name,sum(s.total_amount),extract(year from s.sale_date)::text as Year, to_CHAR(sale_date, 'Month') as month
from sales s
join products p on s.product_id = p.product_id
group by p.product_name,extract(year from s.sale_date), to_CHAR(sale_date, 'Month');

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
 
select p.product_id, p.product_name,(i.stock_quantity-s.quantity_sold) as remaining_stock 
from sales s
join products p on s.product_id = p.product_id
join inventory i on p.product_id = i.product_id;

select p.product_name,(i.stock_quantity - s.quantity_sold) as remaining_stock
from sales s
left join products p on s.product_id = p.product_id
left join inventory i on p.product_id = i.product_id
where (i.stock_quantity - s.quantity_sold) > 0;


-- 45. Write a query to find the top 5 customers who have made the highest purchases.
-- customer id, customer names, sum of total amount

select c.customer_id, c.first_name, c.last_name, sum(s.total_amount) as highest_purchases, dense_rank()over(order by sum(s.total_amount)desc)
from sales s 
inner join customers c
on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
limit 5;



-- 46. Write a query to calculate the total number of unique products sold in 2023.

select p.product_name, s.product_id,s.sale_date, count(distinct s.product_id)
from sales s
inner join products p
on p.product_id = s.product_id
where extract(year from s.sale_date) = '2023'
group by  p.product_name, s.product_id,s.sale_date;


-- 47. Write a query to find the products that have not been sold in the last 6 months.
-- last sale date 2024-02-05, product id, product name 
-- left join to see all products including 
--- find the max date first to get the latest date 

select max(sale_date)
from sales s;

select p.product_id, p.product_name,s.sale_date
from products p
left join sales s
on p.product_id = s.product_id
and s.sale_date <= date '2024-02-05'- interval '6 months'
where s.product_id is null;

select p.product_id, p.product_name, s.sale_date
from products p
left join sales s
on p.product_id = s.product_id
and s.sale_date >= date'2024-02-05' - interval '6 months'
where s.product_id is null;


--- Subquery
select P.product_name, s.sale_date
from products p
inner join sales s
on p.product_id=s.product_id
where p.product_id not in (
select s.product_id
from sales s
where s.sale_date >= DATE '2024-02-05' -interval '6 months' );


-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
-- product id,product name, price, total quantity sold for each 

select p.product_id,p.product_name,p.price, sum(s.quantity_sold) as total_quantity 
from products p
inner join sales s 
on p.product_id = s.product_id
where p.price between 200 and 800
group by  p.product_id,p.product_name,p.price;



-- 49. Write a query to find the customers who spent the most money in the year 2023.
-- customer name, id, total amount 


-- using a subquery
select * from (
select c.first_name, c.last_name, s.customer_id, s.total_amount, dense_rank()over (order by sum(s.total_amount) desc) as rank
from sales s
inner join customers c
on c.customer_id = s.customer_id
where extract(year from sale_date) = '2023' 
group by c.first_name, c.last_name, s.customer_id, s.total_amount)
where rank = 1;




-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.

select s.product_id, p.product_name, p.price, count(s.product_id) as number_sold
from sales s
inner join products p
on p.product_id = s.product_id
where p.price > 200 
group by s.product_id, p.product_name, p.price
having count(s.product_id) = 100;


select s.product_id, p.product_name, p.price, count(s.product_id) as number_sold
from sales s
inner join products p
on p.product_id = s.product_id
where p.price > 200 
group by s.product_id, p.product_name, p.price
having count(s.product_id) = 1;



- - SUBQUERY QUESTIONS

-- 51. Which customers have spent more than the average spending of all customers?
-- subquery in the where clause

select c.first_name,c.last_name, s.total_amount
from sales s join customers c
on s.customer_id = c.customer_id
where s.total_amount > (select avg(s.total_amount) as avg_spent from sales s);


-- 52. Which products are priced higher than the average price of all products?

-- subquery in the where clause
select p.product_id, p.product_name, p.price
from products p
where p.price > (select avg(p.price) as avg_price from products p);


-- 53. Which customers have never made a purchase?

select c.customer_id, c.first_name,c.last_name
from customers c
left join  sales s
on s.customer_id = c.customer_id
where c.customer_id not in (select customer_id from sales s);


-- 54. Which products have never been sold?

select p.product_id,p.product_name, s.total_amount from products p
left join sales s
on p.product_id = s.product_id
where p.product_id not in (select product_id from sales);

-- 55. Which customer made the single most expensive purchase (total amount)?

select max(total_amount) from sales;

select c.customer_id,c.first_name, c.last_name, s.total_amount from customers c
join sales s on c.customer_id= s.customer_id
where total_amount=(select max(total_amount) from sales);


-- 56. Which products have total sales greater than the average total sales across all products?

select avg(total_amount) as  avg_sales from sales s;

select p.product_id,p.product_name,s.total_amount
from sales s
inner join products p
on p.product_id = s.product_id
where s.total_amount > (select avg(total_amount) as  avg_sales from sales s);



-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM assignment.customers


select to_timestamp(avg(extract(epoch from registration_date)))::date from assignment.customers;


select c.customer_id, c.first_name,c.last_name, c.registration_date
from customers c
where c.registration_date < (select to_timestamp(avg(extract(epoch from registration_date)))::date from assignment.customers);


-- 58. Which products have a price higher than the average price within their own category?
 
select category,avg(price)
from products p
group by category;
   

select p.product_id, p.product_name, p.category, p.price
from products p
where p.price > (select avg(price) from products where category = p.category);



-- 59. Which customers have spent more than the customer with ID = 10?



select c.customer_id, c.first_name, c.last_name, s.total_amount
from sales s
join customers c
on c.customer_id = s.customer_id
where s.total_amount > (select s.total_amount from sales s where customer_id = 10);


select c.first_name, c.last_name, c.customer_id, sum(s.total_amount) as total_spent
from sales s
inner join customers c on c.customer_id = s.customer_id
group by c.first_name, c.last_name, c.customer_id
having sum(s.total_amount) > (select sum(total_amount)
from sales 
where customer_id = 10);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?

select avg(quantity_sold)  as  avg_quantity from sales s;

select p.product_id,p.product_name,s.quantity_sold
from sales s
inner join products p
on p.product_id = s.product_id
where s.quantity_sold > (select avg(quantity_sold) as  avg_quantity from sales s);

-- or

select p.product_id,p.product_name,s.quantity_sold, SUM(quantity_sold)
from sales s
inner join products p
on p.product_id = s.product_id
group by p.product_id,p.product_name,s.quantity_sold
having sum(s.quantity_sold) > (select avg(quantity_sold) from sales s);


-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.

with customer_spent as
(select customer_id, sum(total_amount), dense_rank() over (order by sum(total_amount) desc) as amount_rank 
from sales
group by customer_id)
select *  from customer_spent 
where amount_rank <= 5;


-----To confirm -- do ties count in the calculation or not 
with customer_spendings as
(select customer_id,sum(s.total_amount) as spendings from sales s
group by customer_id order by spendings desc)
select * from customer_spendings limit 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.

with total_quantity as
(select product_id, s.quantity_sold, sum(quantity_sold), dense_rank() over (order by sum(s.quantity_sold) desc) as quantity_rank 
from sales s
group by product_id,s.quantity_sold)
select *  from total_quantity
where quantity_rank <= 3;


-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.

-- using products and sales tables


select category, total_sales
from (
select p.category, sum(s.total_amount) as total_sales, rank() over (order by sum(s.total_amount) desc) as rnk
from sales s
join products p
on s.product_id = p.product_id
group by p.category) 
where rnk = 1;

-- dense rank

with highest_sales as 
(select p.category, sum(s.total_amount) as total_sale_amount, dense_rank() over (order by sum(s.total_amount) desc) ranking
from sales s
join products p 
on  p.product_id = s.product_id
group by p.category)
select * from highest_sales
where ranking =1;

--- a cte with multiple queries 

with highest_sales as 
(select p.category, sum(s.total_amount) as total_sale_amount
from sales s
join products p 
on  p.product_id = s.product_id
group by p.category)
select * from highest_sales
where total_sale_amount= ( select max(total_sale_amount)
from highest_sales);



-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.

with purchase_count as (
select c.first_name,c.customer_id, count(s.customer_id) as repeat_purchase
from sales s
join customers c on s.customer_id= c.customer_id
group by c.customer_id)
select * from purchase_count 
where repeat_purchase > 2;


with purchase_count as (
select c.first_name,c.customer_id, count(s.customer_id) as repeat_purchase
from sales s
join customers c on s.customer_id= c.customer_id
group by c.customer_id)
select * from purchase_count 
where repeat_purchase > 0;



-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.

with total_product_sold as 
(select p.product_name,p.product_id, sum(s.quantity_sold) as total_quantity_sold 
from sales s 
join products p on s.product_id= p.product_id
group by p.product_id) 
select * from total_product_sold 
where total_quantity_sold > (select avg(total_quantity_sold)
from total_product_sold);


-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.

with customer_spending as (
select c.first_name,c.customer_id, sum(s.total_amount) as sum_amount
from customers c
join sales s on c.customer_id= s.customer_id
group by c.customer_id)
select * from customer_spending
where sum_amount> (select avg(sum_amount) from customer_spending);



-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.

with revenue_ranking as(
select p.product_name,p.product_id, sum(s.total_amount) as revenue_per_product
from products p
join sales s on p.product_id= s.product_id
group by p.product_id)
select * from revenue_ranking r
order by revenue_per_product desc;


-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.

--with dense_rank

with highest_months as(
select dense_rank() over (order by sum(s.total_amount) desc) as rank,
sum (s.total_amount)as total_sales,
extract (month from sale_date)::text as month, 
extract (year from sale_date)::text as year
from sales s
group by month, year)
select * from highest_months
where rank = 1;

--with Max in CTE

with highest_month as(
select sum(s.total_amount) as total_sales,
extract (month from sale_date)::text as month, 
extract (year from sale_date)::text as year
from sales s
group by month, year)
select * from highest_month 
where total_sales =(select max(total_sales)from highest_month);

--using date_trunc

with highest_month as(
select sum(s.total_amount) as total_sales,
date_trunc('month', sale_date)::text as month
from sales s
group by month)
select * from highest_month 
where total_sales =(select max(total_sales)from highest_month);


-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.

with sale_count as(
select  product_id, count(distinct customer_id) as count_of_customers
from sales s
group by product_id)
select * from sale_count 
where count_of_customers >3;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold. 

with average_quantity_sold as 
(select p.product_name,p.product_id, sum(s.quantity_sold) as total_quantity_sold 
from sales s 
join products p on s.product_id= p.product_id
group by p.product_id) 
select * from average_quantity_sold
where total_quantity_sold > (select avg(quantity_sold)
from sales s);


-- WINDOW FUNCTION QUESTIONS

-- 71. Rank customers based on the total amount they have spent.

-- using rank

select c.customer_id,c.first_name, c.last_name, sum(s.total_amount), rank() over (order by sum(s.total_amount)) as rank_amount
from sales s
join customers c
on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name;

-- using dense rank


select c.customer_id, c.first_name, sum(total_amount) as Amount_totals, 
dense_rank() over (order by sum(s.total_amount)desc) as Amount_Ranks
from sales s
join customers c
on c.customer_id = s.customer_id
group by c.customer_id;

-- 72. Rank products based on total quantity sold.

--rank
select p.product_id, p.product_name, sum(s.quantity_sold) as Total_sold,
rank()over (order by sum(s.quantity_sold)desc) as Quantity_rank
from products p
join sales s
on s.product_id = p.product_id
group by p.product_id;


--dense_rank
select p.product_id, p.product_name, sum(s.quantity_sold) as Total_sold,
dense_rank()over (order by sum(s.quantity_sold)desc) as Quantity_rank
from products p
join sales s
on s.product_id = p.product_id
group by p.product_id;

-- 73. Identify the 3rd highest spending customer.

with Customer_spending as(
select c.customer_id, c.first_name, sum(s.total_amount) as Totals,
dense_rank()over (order by sum(s.total_amount)desc) as Spending_rank
from sales s
join customers c
on c.customer_id = s.customer_id
group by c.customer_id)
select * from Customer_spending
where Spending_rank = 3;

-- 74. Identify the 2nd most expensive product.

with Product_cost as (
select p.product_id, p.product_name, p.price,
dense_rank()over (order by p.price desc) as Price_rank
from products p)
select * from Product_cost
where price_rank = 2;


-- 75. Show the ranking of products within each category based on price.

select p.product_id,p.product_name, p.category, p.price,
dense_rank()over (partition by category order by price desc) as Category_rank
from products p;

-- 76. Show the ranking of customers based on the number of purchases they made.

select s.customer_id, c.first_name, count(s.sale_id) as no_of_sales, 
dense_rank()over (order by count(sale_id)) as Rank_of_Purchases
from sales s
join customers c
on c.customer_id = s.customer_id
group by s.customer_id, c.first_name;


-- 77. Show the running total of sales amounts ordered by sale_date.

select sale_date, total_amount, sum(total_amount) over (order by sale_date) as running_total
from sales;



-- 78. Show the previous sale amount for each sale ordered by sale_date.

select total_amount, sale_date,
lag(total_amount) over (order by sale_date) as Previous_sale_Amount
from sales;


--lag skippin every 2 days
select total_amount, sale_date,
lag(total_amount,2) over (order by sale_date) as Previous_sale_Amount
from sales;

--lag skippin every 2 days ---figure out how to add input by month
select sum(total_amount), sale_date,
lag(sum(total_amount)) over (order by date_trunc('month', sale_date)) as Previous_sale_Amount
from sales
group by date_trunc('month', sale_date), sale_date;



-- 79. Show the next sale amount for each sale ordered by sale_date.

select total_amount, sale_date,
lead(total_amount) over (order by sale_date) as next_sale_amount
from sales;



-- 80. Divide customers into 4 groups based on total spending.


select c.customer_id, c.first_name, sum(total_amount) as total_spending,
ntile(4) over (order by sum(total_amount)desc) as Ntile_Groups
from customers c
join sales s
on c.customer_id = s.customer_id
group by c.customer_id;



-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
--- sales , products tables 
--- customers names,id,category, 

select s.customer_id
from sales s
join products p
on p.product_id = s.product_id
group by s.customer_id
having count(distinct p.category) > 1;




-- 82. Which customers purchased products within 7 days of registering?

select c.first_name, c.registration_date, s.sale_date
from customers c
join sales s
on c.customer_id = s.customer_id
where sale_date between registration_date and registration_date + interval '7 days';

select c.first_name, c.registration_date, s.sale_date
from customers c
join sales s
on c.customer_id = s.customer_id
where sale_date between registration_date and registration_date + interval '100 days';



-- 83. Which products have lower stock remaining than the average stock quantity?

with Stock_amount as(
select p.product_id, p.product_name, p.stock_quantity-s.quantity_sold Remaining_Stock
from sales s
join products p
on p.product_id =s.product_id
group by p.product_id, s.quantity_sold)
select * from Stock_amount
where  Remaining_Stock < (select round(avg(stock_quantity),2)from products);



-- 84. Which customers purchased the same product more than once?
-----customers and products they purchased
--Same customer_id appearing more than once in one product ---repeated purchases per customer per product.


with multiple_products as (
select s.customer_id, s.product_id
from sales s)
select customer_id, product_id
from multiple_products
group by customer_id, product_id
having count(*) > 1;



-- 85. Which product categories generated the highest total revenue?

with Category_revenue as( 
select p.category, sum(s.total_amount) as Category_amount
from sales s
join products p
on p.product_id = s.product_id
group by p.category)
select * from Category_revenue 
where Category_amount = (select max(category_amount)from Category_revenue);

-- 86. Which products are among the top 3 most sold products?

--Subquery
select * from 	
(select p.product_name, s.product_id, s.quantity_sold, dense_rank() over (order by s.quantity_sold desc) as quantity_rank
from sales s
join products p
on p.product_id = s.product_id)
where quantity_rank between 1 and 3;

--CTE
with top_ranking as
(select p.product_name, s.product_id, s.quantity_sold, dense_rank() over (order by s.quantity_sold desc) as quantity_rank
from sales s
join products p
on p.product_id = s.product_id)
select * from top_ranking
where quantity_rank between 1 and 3;




-- 87. Which customers purchased the most expensive product?

--Subquery
select * from
(select s.customer_id, p.price as price,
dense_rank() over (order by p.price desc) as purchase_rank
from products p
join sales s
on p.product_id = s.product_id)
where purchase_rank = 1;

--CTE
with purchase_summary as	
(select s.customer_id, p.price as price
from products p
join sales s
on p.product_id = s.product_id
order by p.price desc)
select * from purchase_summary
where price = (select max(price) from purchase_summary);



-- 88. Which products were purchased by the highest number of unique customers?

select product_id, count(distinct customer_id) as unique_customers
from sales
group by product_id
order by unique_customers desc;

-- 89. Which customers made purchases above the average sale amount?

select * from	
(select customer_id, sum(total_amount) as sales_amount
from sales 
group by customer_id)
where sales_amount > (select avg(total_amount) from sales);

-- 90. Which customers purchased more products than the average quantity purchased per customer?

--CTE
with customer_total as	
(select customer_id, sum(quantity_sold) as quantity_purchased
from sales
group by customer_id)
select * from customer_total
where quantity_purchased > (select avg(quantity_purchased) from customer_total);


-- ADVANCED WINDOW + ANALYTICAL PROBLEMS

-- 91. Which customers rank in the top 10% of spending?
-- a CTE in a CTE

with customer_spending as
(select customer_id, sum(total_amount) as total_spent
from sales
group by customer_id),
rankedcustomers as(
select customer_id,total_spent, ntile(10) over (order by total_spent desc) as bucket
from customer_spending)
select * from rankedcustomers where bucket = 1;

-- OR 

with rankedcustomers as (
select customer_id, sum(total_amount) as total_spent, ntile(10) over (order by sum(total_amount) desc) as bucket
from sales
group by customer_id)
select * 
from rankedcustomers 
where bucket = 1;


-- 92. Which products contribute to the top 50% of total revenue?

with ranked_revenue as
(select product_id, sum(total_amount) as total_revenue, NTILE(2) over (order by sum(total_amount) desc) as revenue_rank
from sales
group by product_id)
select * from ranked_revenue 
where revenue_rank = 1;


-- 93. Which customers made purchases in consecutive months?

--- no customer had a previous purchase that's why the lag column is null 

select customer_id, extract(month from sale_date)::text as purchase_month,
LAG(extract(month from sale_date)::text) over (partition by customer_id order by extract(month from sale_date)::text) as consecutive_month
from sales;

--OR

select customer_id, date_trunc('month', sale_date) as purchase_month,
LAG(date_trunc('month', sale_date)) over (
partition by customer_id 
order by date_trunc('month', sale_date)) as consecutive_rank
from sales;

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?

with product_difference as
(select p.product_name, p.product_id, (p.stock_quantity-s.quantity_sold) as difference
from products p
join sales s
on p.product_id = s.product_id)
select * from product_difference
where difference = (select max(difference) from product_difference);


-- 95. Which customers have spending above the average spending of their membership tier?

-- to get the average per membership teir
select membership_status, avg(total_spending) as avg_tier
from
(select c.customer_id, c.membership_status, sum(s.total_amount) as total_spending
from customers c
join sales s
on c.customer_id = s.customer_id 
group by c.customer_id, c.membership_status) as customer_spending
group by membership_status;


-- then


with customer_spending as (
select c.customer_id, c.membership_status, sum(s.total_amount) as total_spending
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.membership_status)
select *
from customer_spending
where total_spending > (select avg(total_spending)from customer_spending);


-- or 

with customer_spending as (
select c.customer_id, c.membership_status, sum(s.total_amount) as total_spending, avg(s.total_amount) over (partition by c.membership_status) as membership_avg
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.membership_status,s.total_amount)
select *
from customer_spending
where total_spending > membership_avg;


-- 96. Which products have higher sales than the average sales within their category?
-- product id, total amount, product category avg sales

with overall_totals as 
(select s.product_id, p.category, sum(s.total_amount)as product_totals,
avg(s.total_amount) over (partition by p.category) as category_avg
from sales s 
join products p
on p.product_id = s.product_id
group by s.product_id,p.category,s.total_amount)
select * from overall_totals 
where product_totals > category_avg;


-- 97. Which customer made the largest single purchase relative to their total spending?
-- customer_id, sum of total amount, total amount for each order 
-- ((largest_purchase::numeric / total_spending) * 100) -- shows us the percentage contribution of a single purchase to the customers total spending.


with customer_spending as
(select customer_id, max(total_amount) as largest_purchase, sum(total_amount) as total_spending
from sales
group by customer_id)
select customer_id, largest_purchase, total_spending, round((largest_purchase::numeric / total_spending ) * 100, 2) AS contribution_percentage
from customer_spending
where total_spending > 0
order by contribution_percentage desc
limit 5;


-- 98. Which products rank among the top 3 most sold products within each category?

----product name, product category, quantity sold  dense_rank() over (partition by p.product_category) as category_rank

select * from(
select p.product_name, p.category, sum(s.quantity_sold) as total_sold_quantity, dense_rank() over (partition by p.category order by sum(s.quantity_sold) desc) as rank_category
from sales s
join products p
on p.product_id = s.product_id
group by p.product_name, p.category) 
where rank_category <= 3;



-- 99. Which customers are tied for the highest total spending?

with customer_spending as (
select s.customer_id, c.first_name, c.last_name, sum(s.total_amount) as total_spent
from sales s
join customers c
on c.customer_id = s.customer_id
group by s.customer_id,c.first_name, c.last_name)
select *
from customer_spending
where total_spent = (select max(total_spent) from customer_spending);




-- 100. Which products generated sales every year present in the dataset?


select p.product_id, p.product_name
from products p
join sales s
on p.product_id = s.product_id
group by p.product_id, p.product_name
having count(distinct extract(year from s.sale_date)) = (select count(distinct extract(year from sale_date)) from sales);


-- with a CTE and joins 


with product_years as (
select product_id, count(distinct extract(year from sale_date)) as years_sold
from sales
group by product_id),
total_years as (select count(distinct extract(year from sale_date)) as total_years
from assignment.sales)
select p.product_name
from product_years py
join total_years ty
on py.years_sold = ty.total_years
join products p
on py.product_id = p.product_id;







