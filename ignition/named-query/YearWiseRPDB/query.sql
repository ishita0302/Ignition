SELECT
    round(SUM(TRY_CAST([RPDB & WPDB POWER(W)] AS FLOAT))/1000,2) AS [Total_Consumed]
FROM RPDB_WPDB
WHERE YEAR(DateTime) = :selectedYear
GROUP BY YEAR(DateTime)
ORDER BY YEAR(DateTime);