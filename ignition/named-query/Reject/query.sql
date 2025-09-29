UPDATE Request SET Status = 'Slot Not Available' WHERE RID = :RID
DELETE FROM Schedules WHERE eventId = :RID