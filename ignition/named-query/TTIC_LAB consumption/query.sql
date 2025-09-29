SELECT
  SUM(TRY_CAST([TTIC LAB POWER(W)] AS FLOAT)) AS Tticlab FROM TTIC_LAB WHERE DateTime between :StartDate and :EndDate