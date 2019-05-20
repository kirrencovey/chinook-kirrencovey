-- Which sales agent made the most in sales in 2009? Hint: Use the MAX function on a subquery.

SELECT TOP 1 CONCAT(e.FirstName, ' ', e.LastName) SalesAgent, t.TotalSales 
FROM Employee e
JOIN (
	SELECT e.EmployeeId, SUM(i.Total) TotalSales
	FROM Employee e
	JOIN Customer c ON c.SupportRepId = e.EmployeeId 
	JOIN Invoice i ON i.CustomerId = c.CustomerId
	WHERE DATEPART(yyyy, i.InvoiceDate) = 2009
	GROUP BY e.EmployeeId
) t ON t.EmployeeId = e.EmployeeId
ORDER BY t.TotalSales desc;

-- OR --

SELECT e.FirstName, e.LastName, COUNT(c.CustomerId) NumberOfCustomers
FROM Employee e
LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.FirstName, e.LastName;
