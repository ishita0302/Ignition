SELECT
    (SELECT TRY_CAST([FlowMeter25_TotalFlow] AS FLOAT) 
     FROM WATER_CONSUMPTION
     WHERE DateTime = (
         SELECT MAX(DateTime) 
         FROM WATER_CONSUMPTION WHERE CAST([DateTime] AS TIME) = '00:00:00'
     )) 
    -
    (SELECT TRY_CAST([FlowMeter25_TotalFlow] AS FLOAT) 
     FROM WATER_CONSUMPTION
     WHERE DateTime = (
         SELECT MIN(DateTime) 
         FROM WATER_CONSUMPTION 
         WHERE CAST(DateTime AS DATE) = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1) AND CAST([DateTime] AS TIME) = '00:00:00'
     )) AS Difference