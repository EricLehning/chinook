-- What are the respective total sales for each of those years?

SELECT
    strftime('%Y', InvoiceDate) AS Year,
    SUM(Total) AS TotalSales
FROM
    Invoice
WHERE
    strftime('%Y', InvoiceDate) IN ('2009', '2011')
GROUP BY
    Year;