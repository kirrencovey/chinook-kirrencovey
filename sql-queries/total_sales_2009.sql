-- What are the total sales for 2009?

SELECT SUM(Total) TotalSales2009
FROM Invoice
WHERE DATEPART(yyyy, InvoiceDate) = 2009
;