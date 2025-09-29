SELECT *,DATEDIFF(SECOND,SDateTime,EDateTime)/60 AS [Duration(min)]
FROM Request WHERE Department = :Department