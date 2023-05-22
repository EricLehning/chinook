-- Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT il.InvoiceLineId, il.InvoiceId, il.TrackId, il.UnitPrice, il.Quantity, t.Name AS TrackName
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId;