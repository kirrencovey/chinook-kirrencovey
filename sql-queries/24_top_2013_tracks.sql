-- Provide a query that shows the most purchased track of 2013.

SELECT MAX(Highest.TrackName) TrackName, MAX(TrackSales) TrackSales
FROM (
	SELECT t.Name TrackName, COUNT(il.TrackId) TrackSales
	FROM InvoiceLine il
	JOIN Invoice i ON i.InvoiceId = il.InvoiceId
	JOIN Track t ON t.TrackId = il.TrackId
	WHERE DATEPART(yyyy, i.InvoiceDate) = 2013
	GROUP BY t.Name
) AS Highest
;

-- Many tracks have the "highest" sales of 2, this just returns one of the many