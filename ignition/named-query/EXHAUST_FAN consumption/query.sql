SELECT
  SUM(TRY_CAST([EXHAUST & FAN POWER(W)] AS FLOAT)) AS Exhaustfan FROM EXHAUST_FAN WHERE DateTime between :StartDate and :EndDate