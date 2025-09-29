SELECT
  startDate as StartDate4, endDate as EndDate4, label As label4, CONVERT(varchar, DATEADD(SECOND, DATEDIFF(SECOND, startDate, endDate), 0), 108) AS Duration4
FROM
  Schedules
WHERE itemId = 4 AND (startDate between :StartDate and :EndDate)