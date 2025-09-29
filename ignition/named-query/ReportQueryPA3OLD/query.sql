SELECT
  startDate as StartDate5, endDate as EndDate5, label As label5, CONVERT(varchar, DATEADD(SECOND, DATEDIFF(SECOND, startDate, endDate), 0), 108) AS Duration5
FROM
  Schedules
WHERE itemId = 5 AND (startDate between :StartDate and :EndDate)