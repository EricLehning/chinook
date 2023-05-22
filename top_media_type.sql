-- Provide a query that shows the most purchased Media Type.

SELECT mt.Name AS MediaType, COUNT(*) AS PurchaseCount
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.MediaTypeId
ORDER BY PurchaseCount DESC
LIMIT 1;