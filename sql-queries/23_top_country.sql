-- Which country's customers spent the most?

SELECT MAX(Country) Country, MAX(TotalSales) Sales
FROM (
	SELECT BillingCountry Country, SUM(Total) TotalSales
	FROM Invoice
	GROUP BY BillingCountry
) AS Highest
;