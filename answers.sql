-- Q1: Employees with their office details

SELECT  e.firstName,
        e.lastName,
        e.email,
        o.officeCode
FROM    employees  AS e
INNER JOIN offices AS o
       ON e.officeCode = o.officeCode;


-- Q2: Products with their product line details

SELECT  p.productName,
        p.productVendor,
        pl.textDescription
FROM    products      AS p
LEFT JOIN productlines AS pl
       ON p.productLine = pl.productLine;



-- Q3: First 10 orders with customer info

SELECT  o.orderDate,
        o.shippedDate,
        o.status,
        c.customerNumber
FROM    customers AS c
RIGHT JOIN orders  AS o
       ON c.customerNumber = o.customerNumber
ORDER BY o.orderNumber
LIMIT 10;