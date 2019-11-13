SELECT I.invid, I.issued, O.ordid, O.odate
FROM Invoices AS I, Orders AS O
WHERE I.issued > O.odate AND I.ordid = O.ordid;
