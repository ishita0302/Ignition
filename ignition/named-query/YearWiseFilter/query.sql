SELECT
    round(SUM(TRY_CAST([FILTER POWER(W)] AS FLOAT))/1000,2) AS [Total_Consumed]
FROM FITTER
WHERE YEAR(DateTime) = :selectedYear
GROUP BY YEAR(DateTime)
ORDER BY YEAR(DateTime);