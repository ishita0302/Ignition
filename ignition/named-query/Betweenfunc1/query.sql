SELECT COUNT(*) AS C FROM Breaks 
WHERE (Department=:Department) AND 
((startDate BETWEEN :startDate AND :endDate)
OR (endDate BETWEEN :startDate AND :endDate))