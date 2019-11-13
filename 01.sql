SELECT *
FROM Invoices AS I
WHERE I.issued > I.due;
