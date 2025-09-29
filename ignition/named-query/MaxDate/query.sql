SELECT MAX(endDate) AS MinStartDate
FROM (
    SELECT endDate FROM Schedules
    UNION
    SELECT endDate FROM Breaks
) AS CombinedDates;