-- Provide a query that shows the top 5 most purchased songs.

SELECT TOP 5 t.Name AS TrackName, COUNT(il.Quantity) TrackSales
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY TrackSales DESC;
