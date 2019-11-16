SELECT DISTINCT C.*
FROM customers AS C except (SELECT Cust.* FROM orders join customers as Cust on (custid = ocust) WHERE (SELECT EXTRACT(YEAR FROM orders.odate)) = 2016);

