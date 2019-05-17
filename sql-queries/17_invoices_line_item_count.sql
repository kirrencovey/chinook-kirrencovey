-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT InvoiceId, COUNT(InvoiceLineId) LineItems
FROM InvoiceLine
GROUP BY InvoiceId;