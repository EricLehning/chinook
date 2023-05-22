-- Which sales agent made the most in sales over all?

SELECT
  e.FirstName || ' ' || e.LastName AS "Employee Name",
  SUM(i.Total) AS "Total Sales"
FROM
  Employee e
JOIN
  Customer c ON e.EmployeeId = c.SupportRepId
JOIN
  Invoice i ON c.CustomerId = i.CustomerId
GROUP BY
  e.EmployeeId
ORDER BY
  "Total Sales" DESC
LIMIT 1;