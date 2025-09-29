SELECT
  SUM(TRY_CAST([RPDB & WPDB POWER(W)] AS FLOAT)) AS Rpdb_Wpdb FROM RPDB_WPDB WHERE DateTime between :StartDate and :EndDate