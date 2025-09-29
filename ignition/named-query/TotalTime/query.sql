SELECT
  RIGHT('0' + CAST(DATEDIFF(SECOND, :StartDate, :EndDate) / 3600 AS varchar), 2) + ':' +
  RIGHT('0' + CAST((DATEDIFF(SECOND, :StartDate, :EndDate) % 3600) / 60 AS varchar), 2) + ':' +
  RIGHT('0' + CAST(DATEDIFF(SECOND, :StartDate, :EndDate) % 60 AS varchar), 2) AS TotalTime