-- Consultar las tablas por separado
SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM products;

-- Crear los JOINS necesarios para obtener las órdenes completas por cliente
SELECT orderdetails.orderNumber, orderdetails.productCode, orderdetails.quantityOrdered, orderdetails.priceEach,
orders.orderDate, orders.requiredDate, orders.shippedDate, orders.status, orders.customerNumber,
customers.customerName, customers.phone, customers.addressLine1, customers.addressLine2, customers.city,
customers.state, customers.postalCode, customers.country
FROM orderdetails
INNER JOIN orders
ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers
ON orders.customerNumber = customers.customerNumber