-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT t.Name AS TrackName, COUNT(*) AS PurchaseCount
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY il.TrackId
ORDER BY PurchaseCount DESC
LIMIT 5;