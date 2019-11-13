SELECT DISTINCT C.*
FROM customers AS C, (SELECT * FROM orders WHERE (SELECT EXTRACT(YEAR FROM orders.odate)) != 2016) AS subquery
WHERE subquery.ordid = c.custid;