SELECT MIN(startDate) AS MinStartDate
FROM (
    SELECT startDate FROM Schedules
    UNION
    SELECT startDate FROM Breaks
) AS CombinedDates;