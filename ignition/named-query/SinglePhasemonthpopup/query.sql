SELECT
    DATENAME(MONTH, DateTime) AS [Month],
    round(SUM(TRY_CAST([Pow_Ana_SinglePhase1_Total_KW] AS FLOAT))/1000,2) AS [Consumed]
FROM SINGLEPHASEANALYSER
WHERE YEAR(DateTime) = :selectedYear
GROUP BY DATENAME(MONTH, DateTime), MONTH(DateTime)
ORDER BY MONTH(DateTime);
