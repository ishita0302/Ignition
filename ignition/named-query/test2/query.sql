--select * from MEGHDOOT order by DateTime desc
--select * from SINGLEPHASEANALYSER order by DateTime desc
select * from THREEPHASEANALYSER order by DateTime desc



--select * from THREEPHASEANALYSER order by DateTime desc
--select * from WATER_CONSUMPTION WHERE CAST([DateTime] AS TIME) = '00:00:00'
--select * from WORKSHOP_LAB WHERE CAST([DateTime] AS TIME) = '00:00:00'

--select * from WATER_CONSUMPTION order by DateTime desc
--SELECT
--  A.DateTime,
--  A.Pow_Ana_SinglePhase1_Voltage AS Voltage,
--  A.Pow_Ana_SinglePhase1_Current AS Curren,
--  A.Pow_Ana_SinglePhase1_KVA AS KVA,
--  A.Pow_Ana_SinglePhase1_KW AS KW,
--  A.Pow_Ana_SinglePhase1_Power_Factor AS PF,
--  A.Pow_Ana_SinglePhase1_Total_KW AS Total,
--  A.Pow_Ana_SinglePhase1_Frequency AS Fr,
--  B.Sensor1,
--  B.Sensor2,
--  B.Sensor3,
--  B.Sensor4,
--  B.Sensor5,
--  B.Sensor6,
--  B.Sensor7,
--  B.Sensor8,
--  C."Pow_Ana_ThreePhase1_Urms&#00931;" AS Urms,
--  C. "Pow_Ana_ThreePhase1_Irms&#00931;" AS Irms,
--  C."Pow_Ana_ThreePhase1_Lambda&#00931;" AS Lambda,
--  C."Pow_Ana_ThreePhase1_P&#00931;" AS P,
--  C."Pow_Ana_ThreePhase1_S&#00931;" AS S,
--  C."Pow_Ana_ThreePhase1_fU1" AS fU1,
--  C."Pow_Ana_ThreePhase1_fI1" AS fI1
--FROM 
--  SINGLEPHASEANALYSER A
--JOIN 
--  MEGHDOOT B 
--    ON A.DateTime = B.DateTime
--JOIN 
--  THREEPHASEANALYSER C 
--    ON A.DateTime = C.DateTime
--WHERE 
--  A.DateTime BETWEEN :StartDate AND :EndDate
--ORDER BY 
--  A.DateTime DESC;

--select * from A
--ALTER TABLE A ALTER COLUMN id varchar

--select * from CONSUMPTION WHERE CAST([DateTime] AS TIME) = '00:00:00'
--SELECT MIN(DateTime) 
--         FROM WATER_CONSUMPTION 
--         WHERE CAST(DateTime AS DATE) = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1)
--SELECT MAX(DateTime) 
--         FROM WATER_CONSUMPTION 












--select * from Schedules where eventId between 274 and 279
--SELECT 
--    sum(ENERGY_CONSUMED)
--FROM CONSUMPTION
--WHERE 
--    DateTime BETWEEN '2025-07-01 00:00:00' AND '2025-07-31 23:59:59'
--	AND CAST([DateTime] AS TIME) = '00:00:00'
--select * from CONSUMPTION
--select * from THREEPHASEANALYSER
--select * from SINGLEPHASEANALYSER
--select * from MEGHDOOT

--SELECT * FROM MOTORTESTLAB
--select * from CONSUMPTION where DateTime = '2025-08-13 00:00:00'
--update CONSUMPTION set WATER_CONSUMED = 1 where DateTime = '2025-08-13 00:00:00'

--SELECT 
--    CAST([DateTime] AS DATE) AS ConsumptionDate,
--    [ENERGY_CONSUMED] AS EnergyConsumed
--FROM [ConnectedFactory].[dbo].[CONSUMPTION]
--WHERE 
--    DateTime BETWEEN '2025-07-01 00:00:00' AND '2025-07-31 23:59:59'
--    AND CAST([DateTime] AS TIME) = '00:00:00'
--ORDER BY ConsumptionDate DESC;

--SELECT 
--    avg(ENERGY_CONSUMED)
--FROM CONSUMPTION
--WHERE 
--    DateTime BETWEEN '2025-06-01 00:00:00' AND '2025-06-30 23:59:59'