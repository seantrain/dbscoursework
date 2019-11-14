select invid, sub.total-amount as overpaid from invoices, (select SUM(amount) as total, invid as id from payments group by invid) as sub
where invid = sub.id and sub.total > amount;
