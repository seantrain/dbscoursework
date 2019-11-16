select ocust as custid, cname as name, MAX(odate) as recent_order from orders, customers where custid = ocust group by (ocust, cname) order by ocust asc;
