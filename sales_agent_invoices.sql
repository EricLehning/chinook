-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT e.FirstName || ' ' || e.LastName AS SalesAgentFullName, i.InvoiceId
FROM Invoice i
INNER JOIN Employee e ON i.CustomerId = e.EmployeeId
WHERE e.Title LIKE '%Sales%';