SELECT
    round(SUM(TRY_CAST("Pow_Ana_ThreePhase1_P&#00931;" AS FLOAT))/1000,2) AS [Total_Consumed]
FROM THREEPHASEANALYSER
WHERE YEAR(DateTime) = :selectedYear
GROUP BY YEAR(DateTime)
ORDER BY YEAR(DateTime);