SELECT
  SUM(TRY_CAST("Pow_Ana_ThreePhase1_P&#00931;" AS FLOAT)) AS three FROM THREEPHASEANALYSER WHERE DateTime between :StartDate and :EndDate