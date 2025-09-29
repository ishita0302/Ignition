SELECT 
    CONVERT(varchar, DATEADD(SECOND, SUM(DATEDIFF(SECOND, startDate, endDate)), 0), 108) AS ScheduleTime5
FROM
    Schedules
WHERE 
    itemId = 5
    AND startDate BETWEEN :StartDate AND :EndDate;