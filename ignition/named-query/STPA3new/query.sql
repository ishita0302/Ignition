SELECT 
    CONVERT(varchar, DATEADD(SECOND, SUM(DATEDIFF(SECOND, startDate, endDate)), 0), 108) AS ScheduleTime4
FROM
    Schedules
WHERE 
    itemId = 4
    AND startDate BETWEEN :StartDate AND :EndDate;