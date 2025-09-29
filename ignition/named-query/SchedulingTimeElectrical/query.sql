SELECT 
    CONVERT(varchar, DATEADD(SECOND, SUM(DATEDIFF(SECOND, startDate, endDate)), 0), 108) AS ScheduleTime1
FROM
    Schedules
WHERE 
    itemId = 1
    AND startDate BETWEEN :StartDate AND :EndDate;
