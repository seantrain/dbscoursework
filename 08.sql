select sub.code, sub.price
from (select P.pcode as code, AVG(D.qty) as average, P.price as price from products as P join details as D on (P.pcode = D.pcode) group by P.pcode order by P.pcode asc) as sub
where sub.average >= 8;
