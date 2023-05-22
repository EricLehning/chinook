-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT il.InvoiceLineId, il.TrackId, t.Name AS TrackName, a.Name AS ArtistName
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId;
