SELECT
  SUM(TRY_CAST([WORKSHOP POWER(W)] AS FLOAT)) AS Workshoplab FROM WORKSHOP_LAB WHERE DateTime between :StartDate and :EndDate