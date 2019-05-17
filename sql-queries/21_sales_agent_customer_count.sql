-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT CONCAT(e.FirstName, ' ', e.LastName) SalesAgent, c.NumberOfCustomers 
FROM Employee e
JOIN (
	SELECT 
		DISTINCT SupportRepId SalesAgentId,
		COUNT(SupportRepId) NumberOfCustomers
	FROM Customer
	GROUP BY SupportRepId
) c ON c.SalesAgentId = e.EmployeeId