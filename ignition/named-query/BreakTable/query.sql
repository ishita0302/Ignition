SELECT *,DATEDIFF(SECOND,startDate,endDate)/60 AS Time
FROM Breaks WHERE Department = :Department