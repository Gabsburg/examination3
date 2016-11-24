USE northwind;

Select count(*) from customers;
Select count(*) from employees;
Select count(*) from priviliges;
Select count(*) from employee_priviliges;
Select count(*) from shippers;
Select count(*) from orders_tax_status;
Select count(*) from orders;
Select count(*) from products;
Select count(*) from suppliers;
Select count(*) from invoices;

SELECT employees.first_name, orders.id 
FROM employees 
INNER JOIN orders ON employees.id = orders.employee_id;

SELECT * FROM products
INNER JOIN purchase_order_details ON products.id = purchase_order_details.product_id;

SELECT * FROM employees
INNER JOIN purchase_orders ON employees.id = purchase_orders.created_by;

SELECT * FROM orders
INNER JOIN order_details ON orders.id = order_details.order_id;

SELECT * FROM orders
INNER JOIN inventory_transactions ON orders.id = inventory_transactions.customer_order_id;