-- Provide a query that shows the most purchased Media Type.

SELECT TOP 1 mt.Name MediaType, COUNT(il.Quantity) MediaTypeSales
FROM InvoiceLine il
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
JOIN Track t ON il.TrackId = t.TrackId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.Name
ORDER BY MediaTypeSales DESC;