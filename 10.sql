select subquery.ordid, MAX(subquery.odate) as date, SUM(subquery.total) as total from 
(select sub.ordid, SUM(details.qty*products.price) as total, sub.odate from details join (select orders.ordid, orders.odate from orders except (select O.ordid, O.odate from orders as O join invoices as I on (O.ordid = I.ordid))) as sub on (details.ordid = sub.ordid) join products on (details.pcode = products.pcode)
group by sub.ordid, products.price, details.qty, sub.odate
order by sub.ordid) as subquery
group by subquery.ordid;

