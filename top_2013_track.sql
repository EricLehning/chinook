-- Provide a query that shows the most purchased track(s) of 2013.

SELECT t.Name AS TrackName, COUNT(*) AS PurchaseCount
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE strftime('%Y', i.InvoiceDate) = '2013'
GROUP BY il.TrackId
HAVING COUNT(*) = (
    SELECT MAX(PurchaseCount)
    FROM (
        SELECT COUNT(*) AS PurchaseCount
        FROM InvoiceLine il
        JOIN Invoice i ON il.InvoiceId = i.InvoiceId
        WHERE strftime('%Y', i.InvoiceDate) = '2013'
        GROUP BY il.TrackId
    ) AS subquery
);