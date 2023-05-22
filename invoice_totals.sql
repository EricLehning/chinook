-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT
    i.Total AS InvoiceTotal,
    c.FirstName || ' ' || c.LastName AS CustomerName,
    c.Country AS CustomerCountry,
    e.FirstName || ' ' || e.LastName AS SalesAgentFullName
FROM
    Invoice i
    INNER JOIN Customer c ON i.CustomerId = c.CustomerId
    INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId;