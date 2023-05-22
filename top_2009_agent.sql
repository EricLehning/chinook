-- Which sales agent made the most in sales in 2009?

SELECT
  e.FirstName || ' ' || e.LastName AS "Employee Name",
  SUM(i.Total) AS "Total Sales"
FROM
  Employee e
JOIN
  Customer c ON e.EmployeeId = c.SupportRepId
JOIN
  Invoice i ON c.CustomerId = i.CustomerId
WHERE
  strftime('%Y', i.InvoiceDate) = '2009'
GROUP BY
  e.EmployeeId
ORDER BY
  "Total Sales" DESC
LIMIT 1;