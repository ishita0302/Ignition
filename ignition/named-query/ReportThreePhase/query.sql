SELECT
  DateTime, "Pow_Ana_ThreePhase1_Urms&#00931;" AS Urms,
    "Pow_Ana_ThreePhase1_Irms&#00931;" AS Irms,
    "Pow_Ana_ThreePhase1_Lambda&#00931;" AS Lambda,
    "Pow_Ana_ThreePhase1_P&#00931;" AS P,
    "Pow_Ana_ThreePhase1_S&#00931;" AS S,
    "Pow_Ana_ThreePhase1_fU1" AS fU1,
    "Pow_Ana_ThreePhase1_fI1" AS fI1
FROM
  THREEPHASEANALYSER
WHERE DateTime between :StartDate and :EndDate