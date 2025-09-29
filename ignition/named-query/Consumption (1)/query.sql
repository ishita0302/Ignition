SELECT
  DateTime,
  WATER_CONSUMED AS WaterConsumed,
  ENERGY_CONSUMED AS EnergyConsumed
FROM
  CONSUMPTION
WHERE DateTime between :StartDate and :EndDate

