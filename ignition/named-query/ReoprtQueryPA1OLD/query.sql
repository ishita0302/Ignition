SELECT
  startDate as StartDate3, endDate as EndDate3, label As label3, CONVERT(varchar, DATEADD(SECOND, DATEDIFF(SECOND, startDate, endDate), 0), 108) AS Duration3
FROM
  Schedules
WHERE itemId = 3 AND (startDate between :StartDate and :EndDate)