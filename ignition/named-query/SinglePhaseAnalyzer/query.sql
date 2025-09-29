SELECT
  DateTime, round(Pow_Ana_SinglePhase1_Voltage,2) as Pow_Ana_SinglePhase1_Voltage, round(Pow_Ana_SinglePhase1_Current,3) as Pow_Ana_SinglePhase1_Current, round(Pow_Ana_SinglePhase1_KVA,2) as Pow_Ana_SinglePhase1_KVA, round(Pow_Ana_SinglePhase1_KW,2) as Pow_Ana_SinglePhase1_KW, round(Pow_Ana_SinglePhase1_Power_Factor,2) as Pow_Ana_SinglePhase1_Power_Factor, round(Pow_Ana_SinglePhase1_Total_KW,2) as Pow_Ana_SinglePhase1_Total_KW, round(Pow_Ana_SinglePhase1_Frequency,2) as Pow_Ana_SinglePhase1_Frequency
FROM
  SINGLEPHASEANALYSER
WHERE DateTime between :StartDate and :EndDate
Order by DateTime desc;