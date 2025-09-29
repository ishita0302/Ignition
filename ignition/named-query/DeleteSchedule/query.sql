--select * from Request
--select * from Schedules
update Request set Status = 'Slot Not Available' where RID = :eventId
delete from Schedules where eventId = :eventId
