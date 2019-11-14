select sub.code, sub.total
from (select P.pcode as code, SUM(D.qty) as total from products as P join details as D on (P.pcode = D.pcode) join orders as O on (D.ordid = O.ordid) group by P.pcode order by P.pcode asc) as sub
where sub.total > 10;
