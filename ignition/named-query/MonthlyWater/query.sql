SELECT
    (TRY_CAST(LastReading.FlowMeter26_TotalFlow AS FLOAT) - TRY_CAST(FirstReading.FlowMeter26_TotalFlow AS FLOAT)) +
    (TRY_CAST(LastReading.FlowMeter25_TotalFlow AS FLOAT) - TRY_CAST(FirstReading.FlowMeter25_TotalFlow AS FLOAT)) AS [Total_Consumed]
FROM 
    (
        SELECT 
            MIN(DateTime) AS FirstDateTime,
            MAX(DateTime) AS LastDateTime
        FROM WATER_CONSUMPTION
        WHERE 
            CAST(DateTime AS TIME) = '00:00:00' AND
            MONTH(DateTime) = MONTH(GETDATE()) AND
            YEAR(DateTime) = YEAR(GETDATE())
    ) AS MonthlyDates
JOIN WATER_CONSUMPTION AS FirstReading
    ON FirstReading.DateTime = MonthlyDates.FirstDateTime
JOIN WATER_CONSUMPTION AS LastReading
    ON LastReading.DateTime = MonthlyDates.LastDateTime;