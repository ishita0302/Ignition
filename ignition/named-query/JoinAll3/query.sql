SELECT
  A.DateTime,
  A.Pow_Ana_SinglePhase1_Voltage AS Voltage,
  A.Pow_Ana_SinglePhase1_Current AS Curren,
  A.Pow_Ana_SinglePhase1_KVA AS KVA,
  A.Pow_Ana_SinglePhase1_KW AS KW,
  A.Pow_Ana_SinglePhase1_Power_Factor AS PF,
  A.Pow_Ana_SinglePhase1_Total_KW AS Total,
  A.Pow_Ana_SinglePhase1_Frequency AS Fr,
  B.Sensor1,
  B.Sensor2,
  B.Sensor3,
  B.Sensor4,
  B.Sensor5,
  B.Sensor6,
  B.Sensor7,
  B.Sensor8,
  C."Pow_Ana_ThreePhase1_Urms&#00931;" AS Urms,
  C. "Pow_Ana_ThreePhase1_Irms&#00931;" AS Irms,
  C."Pow_Ana_ThreePhase1_Lambda&#00931;" AS Lambda,
  C."Pow_Ana_ThreePhase1_P&#00931;" AS P,
  C."Pow_Ana_ThreePhase1_S&#00931;" AS S,
  C."Pow_Ana_ThreePhase1_fU1" AS fU1,
  C."Pow_Ana_ThreePhase1_fI1" AS fI1
FROM 
  SINGLEPHASEANALYSER A
JOIN 
  MEGHDOOT B 
    ON A.DateTime = B.DateTime
JOIN 
  THREEPHASEANALYSER C 
    ON A.DateTime = C.DateTime
WHERE 
  A.DateTime BETWEEN :StartDate AND :EndDate
ORDER BY 
  A.DateTime DESC;