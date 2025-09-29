SELECT 
   CONVERT(varchar, DATEADD(SECOND, SUM(DATEDIFF(SECOND, startDate, endDate)), 0), 108) AS ScheduleTime2
FROM 
    Schedules
WHERE 
    itemId = 2
    AND startDate BETWEEN :StartDate AND :EndDate;