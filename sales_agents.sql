-- Provide a query showing only the Employees who are "Sales Agents".

SELECT EmployeeId, LastName, FirstName, Title
FROM Employee
WHERE Title = 'Sales Support Agent';