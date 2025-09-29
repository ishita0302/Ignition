--SELECT
--    DateTime, 
--    ROUND((TRY_CAST("Pow_Ana_ThreePhase1_Urms&#00931;" AS FLOAT)AS V), 2)
--FROM 
--    THREEPHASEANALYSER


--SELECT *
--FROM CONVERTER
--SELECT *
--FROM AIPOOLPAD where DateTime BETWEEN '2025-07-01 00:00:00' AND '2025-07-31 23:59:59'
--SELECT SUM(TRY_CAST([CONVERTER READING(Wh)] AS FLOAT)) AS CONSUMED FROM CONVERTER where DateTime BETWEEN '2025-07-01 00:00:00' AND '2025-07-31 23:59:59' AND CAST([DateTime] AS TIME) = '00:00:00'
--SELECT
--    (SELECT TRY_CAST([FlowMeter26_TotalFlow] AS FLOAT) 
--     FROM WATER_CONSUMPTION
--     WHERE DateTime = '2025-09-04 00:00:00') 
--    -
--    (SELECT TRY_CAST([FlowMeter26_TotalFlow] AS FLOAT) 
--     FROM WATER_CONSUMPTION
--     WHERE DateTime = '2025-09-01 00:00:00') AS Difference
--
SELECT
    (SELECT TRY_CAST([FlowMeter26_TotalFlow] AS FLOAT) 
     FROM WATER_CONSUMPTION
     WHERE DateTime = (
         SELECT MAX(DateTime) 
         FROM WATER_CONSUMPTION WHERE CAST([DateTime] AS TIME) = '00:00:00'
     )) 
    -
    (SELECT TRY_CAST([FlowMeter26_TotalFlow] AS FLOAT) 
     FROM WATER_CONSUMPTION
     WHERE DateTime = (
         SELECT MIN(DateTime) 
         FROM WATER_CONSUMPTION 
         WHERE CAST(DateTime AS DATE) = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1) AND CAST([DateTime] AS TIME) = '00:00:00'
     )) AS Difference

--SELECT * FROM AIPOOLPAD
--SELECT
--  SUM(TRY_CAST([CONVERTER POWER(W)] AS FLOAT)) AS Converter FROM CONVERTER WHERE DateTime between :StartDate and :EndDate

--delete from Request where JobDescription = 'test'
--select * from Schedules
--select * from Request
--EXEC sp_rename 'Request.JobDescription', 'ProjectDescription', 'COLUMN';

--update Request set Remark = 'hi' where Remark = 'a'

--ALTER TABLE Request ADD JobDescription varchar(100)
--ALTER TABLE Request ADD ProjectOwner varchar(100)
--ALTER TABLE Request ADD Remark varchar(100)
--ALTER TABLE Request drop column Requester
--update Request set Department = 'MECHANICAL TECHNICIAN' WHERE Department = 'MECHANICAL'
--select * from Request
--delete from Request where Topic='h'
--create table NOD (N int)
--delete from NOD where N =1
--select * from NOD
--delete from Schedules where label = 'q'
--select * from Department
--select * from Schedules
--update Department set Dep = 'PA3Φ-NEW' where Department = 'PA3F-NEW'
--insert into Department (Department) values ('PA3Φ-OLD')
--insert into Department (Department) values ('PA3Φ-NEW')
--ALTER TABLE Department ADD Dep nvarchar(100)
--delete from Department where ID in (8,12,21,22)
--ALTER TABLE THREEPHASEANALYSER ALTER COLUMN Pow_Ana_ThreePhase1_fU1 real

--WITH CTE AS (
--    SELECT *,
--           ROW_NUMBER() OVER (
--               PARTITION BY itemId, eventId, startDate, endDate, label, leadTime
--               ORDER BY (SELECT NULL)
--           ) AS rn
--    FROM Schedules
--)
--DELETE FROM CTE
--WHERE rn > 1;

--DELETE FROM Schedules
--WHERE eventId IN (
--    SELECT TOP 10 eventId
--    FROM Schedules
--    ORDER BY eventId DESC
--)


--select * from Request

--SELECT *
--FROM CONSUMPTION

--SELECT SUM(ENERGY_CONSUMED) 
--FROM CONSUMPTION 
--WHERE DateTime BETWEEN '2025-06-01 00:00:00' AND '2025-06-30 23:59:59';
--SELECT SUM(ENERGY_CONSUMED) 
--FROM CONSUMPTION 
--WHERE DateTime BETWEEN '2025-07-01 00:00:00' AND '2025-07-31 23:59:59';