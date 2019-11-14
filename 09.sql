select C.country as country, count(*) as total from (select * from orders where (select extract(year from orders.odate)) = 2016) as sub join customers as C on (sub.ocust = C.custid)
group by C.country;
