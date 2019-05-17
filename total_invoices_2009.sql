-- How many Invoices were there in 2009?

SELECT COUNT(InvoiceId) Invoices
FROM Invoice
WHERE DATEPART(yy, InvoiceDate) = 2009
;