SELECT
  DateTime, Sensor1, Sensor2, Sensor3, Sensor4, Sensor5, Sensor6, Sensor7, Sensor8
FROM
  MEGHDOOT
WHERE DateTime between :StartDate and :EndDate