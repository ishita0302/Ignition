SELECT
  DateTime, round(Pow_Ana_SinglePhase1_Voltage,2) as Voltage, round(Pow_Ana_SinglePhase1_Current,3) as Curren, round(Pow_Ana_SinglePhase1_KVA,2) as KVA, round(Pow_Ana_SinglePhase1_KW,2) as KW, round(Pow_Ana_SinglePhase1_Power_Factor,2) as PF, round(Pow_Ana_SinglePhase1_Total_KW,2) as Total, round(Pow_Ana_SinglePhase1_Frequency,2) as Fr
FROM
  SINGLEPHASEANALYSER
WHERE DateTime between :StartDate and :EndDate