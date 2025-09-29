SELECT
    round(SUM(TRY_CAST([Pow_Ana_SinglePhase1_Total_KW] AS FLOAT))/1000,2) AS [Total_Consumed]
FROM SINGLEPHASEANALYSER
WHERE YEAR(DateTime) = :selectedYear
GROUP BY YEAR(DateTime)
ORDER BY YEAR(DateTime);