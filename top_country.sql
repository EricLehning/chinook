-- Which country's customers spent the most?

SELECT c.Country, SUM(i.Total) AS TotalSpending
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.Country
ORDER BY TotalSpending DESC
LIMIT 1;