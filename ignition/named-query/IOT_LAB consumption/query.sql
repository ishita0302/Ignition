SELECT
  SUM(TRY_CAST([IOT LAB POWER(W)] AS FLOAT)) AS Iotlab FROM IOT_LAB WHERE DateTime between :StartDate and :EndDate