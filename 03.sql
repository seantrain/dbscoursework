SELECT * 
FROM orders AS O
WHERE NOT EXISTS (SELECT * FROM details AS D WHERE (D.ordid = O.ordid)) 
AND O.odate < '2016-09-06';
