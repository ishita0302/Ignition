SELECT
  SUM(TRY_CAST([OPEN AREA POWER(W)] AS FLOAT)) AS Details FROM DETAILS WHERE DateTime between :StartDate and :EndDate