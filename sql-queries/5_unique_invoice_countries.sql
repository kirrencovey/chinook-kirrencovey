-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT BillingCountry
FROM Invoice
GROUP BY BillingCountry;