SELECT
  SUM(TRY_CAST([Pow_Ana_SinglePhase1_Total_KW] AS FLOAT)) AS three FROM SINGLEPHASEANALYSER WHERE DateTime between :StartDate and :EndDate