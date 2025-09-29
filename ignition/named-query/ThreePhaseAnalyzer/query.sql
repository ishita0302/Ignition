SELECT
    DateTime, 
    "Pow_Ana_ThreePhase1_Urms&#00931;" AS Voltage,
    "Pow_Ana_ThreePhase1_Irms&#00931;" AS Curren,
    "Pow_Ana_ThreePhase1_Lambda&#00931;" AS PowerFactor,
    "Pow_Ana_ThreePhase1_P&#00931;" AS ActivePower,
    "Pow_Ana_ThreePhase1_S&#00931;" AS ApparentPower,
    "Pow_Ana_ThreePhase1_fU1" AS VoltageFreq,
    "Pow_Ana_ThreePhase1_fI1" AS CurrentFreq
FROM 
    THREEPHASEANALYSER
WHERE 
    DateTime BETWEEN :StartDate AND :EndDate
    AND "Pow_Ana_ThreePhase1_Lambda&#00931;" != '+INF'
ORDER BY 
    DateTime DESC;