SELECT
    DATENAME(MONTH, DateTime) AS [Month],
    round(SUM(TRY_CAST([IOT LAB POWER(W)] AS FLOAT))/1000,2) AS [Consumed]
FROM IOT_LAB
WHERE YEAR(DateTime) = :selectedYear
GROUP BY DATENAME(MONTH, DateTime), MONTH(DateTime)
ORDER BY MONTH(DateTime);
