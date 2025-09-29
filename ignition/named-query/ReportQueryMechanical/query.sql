--SELECT label from Schedules where itemId = 2
SELECT
  startDate as StartDate2, endDate as EndDate2, label As label2, CONVERT(varchar, DATEADD(SECOND, DATEDIFF(SECOND, startDate, endDate), 0), 108) AS Duration2
FROM
  Schedules
WHERE itemId = 2 AND (startDate between :StartDate and :EndDate)