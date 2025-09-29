SELECT
  SUM(TRY_CAST([FILTER POWER(W)] AS FLOAT)) AS Filter FROM FITTER WHERE DateTime between :StartDate and :EndDate