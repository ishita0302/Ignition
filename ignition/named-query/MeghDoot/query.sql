SELECT *
FROM MEGHDOOT
WHERE DateTime Between :StartDate and :EndDate
Order by DateTime desc;