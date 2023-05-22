-- Provide a query that shows the top 3 best selling artists.

SELECT ar.Name AS ArtistName, COUNT(*) AS PurchaseCount
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId
ORDER BY PurchaseCount DESC
LIMIT 3;