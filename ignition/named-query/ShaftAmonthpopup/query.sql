SELECT
    DATENAME(MONTH, FirstReading.DateTime) AS [Month],
    TRY_CAST(LastReading.FlowMeter26_TotalFlow AS FLOAT) - TRY_CAST(FirstReading.FlowMeter26_TotalFlow AS FLOAT) AS [Consumed]
FROM 
    (
        SELECT 
            MONTH(DateTime) AS MonthNum,
            MIN(DateTime) AS FirstDateTime,
            MAX(DateTime) AS LastDateTime
        FROM WATER_CONSUMPTION
        WHERE 
            CAST(DateTime AS TIME) = '00:00:00' AND
            YEAR(DateTime) = :selectedYear
        GROUP BY MONTH(DateTime)
    ) AS MonthlyDates
JOIN WATER_CONSUMPTION AS FirstReading
    ON FirstReading.DateTime = MonthlyDates.FirstDateTime
JOIN WATER_CONSUMPTION AS LastReading
    ON LastReading.DateTime = MonthlyDates.LastDateTime
ORDER BY MonthlyDates.MonthNum;