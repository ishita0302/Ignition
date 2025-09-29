SELECT
    round(SUM(TRY_CAST([TTIC LAB POWER(W)] AS FLOAT))/1000,2) AS [Total_Consumed]
FROM TTIC_LAB
WHERE YEAR(DateTime) = :selectedYear
GROUP BY YEAR(DateTime)
ORDER BY YEAR(DateTime);