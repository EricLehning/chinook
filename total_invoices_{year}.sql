-- How many Invoices were there in 2009 and 2011?

SELECT
    COUNT(*) AS InvoiceCount,
    strftime('%Y', InvoiceDate) AS Year
FROM
    Invoice
WHERE
    strftime('%Y', InvoiceDate) IN ('2009', '2011')
GROUP BY
    Year;