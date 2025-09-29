SELECT *
FROM THREEPHASEANALYSER
WHERE DateTime Between :StartDate and :EndDate AND not("Pow_Ana_ThreePhase1_Lambda&#00931;" = '+INF')