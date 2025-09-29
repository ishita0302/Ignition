SELECT
    DATENAME(MONTH, DateTime) AS [Month],
    round(SUM(TRY_CAST("Pow_Ana_ThreePhase1_P&#00931;" AS FLOAT))/1000,2) AS [Consumed]
FROM THREEPHASEANALYSER
WHERE YEAR(DateTime) = :selectedYear
GROUP BY DATENAME(MONTH, DateTime), MONTH(DateTime)
ORDER BY MONTH(DateTime);
