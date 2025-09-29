--SELECT label from Schedules where itemId = 1
SELECT
  startDate as StartDate1, endDate as EndDate1, label As label1, CONVERT(varchar, DATEADD(SECOND, DATEDIFF(SECOND, startDate, endDate), 0), 108) AS Duration1
FROM
  Schedules
WHERE itemId = 1 AND (startDate between :StartDate and :EndDate)