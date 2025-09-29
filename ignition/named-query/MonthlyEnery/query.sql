SELECT 
    CAST([DateTime] AS DATE) AS ConsumptionDate,
    [WATER_CONSUMED] AS WaterConsumed,
    [ENERGY_CONSUMED] AS EnergyConsumed
FROM [ConnectedFactory].[dbo].[CONSUMPTION]
WHERE 
    DateTime BETWEEN :StartDate AND :EndDate
    AND CAST([DateTime] AS TIME) = '00:00:00'
ORDER BY ConsumptionDate DESC;