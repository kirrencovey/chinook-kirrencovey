-- Provide a query that shows total sales made by each sales agent.

SELECT CONCAT(e.FirstName, ' ', e.LastName) SalesAgent, t.TotalSales 
FROM Employee e
JOIN (
	SELECT e.EmployeeId, SUM(i.Total) TotalSales
	FROM Employee e
	JOIN Customer c ON c.SupportRepId = e.EmployeeId 
	JOIN Invoice i ON i.CustomerId = c.CustomerId
	GROUP BY e.EmployeeId
) t ON t.EmployeeId = e.EmployeeId;