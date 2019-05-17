-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT 
	DISTINCT SupportRepId SalesAgentId,
	COUNT(SupportRepId) NumberOfCustomers
FROM Customer
GROUP BY SupportRepId
;