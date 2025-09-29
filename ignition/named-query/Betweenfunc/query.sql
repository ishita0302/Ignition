SELECT COUNT(*) AS C FROM Request 
WHERE Department = :Department AND NOT (Status = 'Slot Not Available')
AND NOT (EDateTime <= :SDateTime OR SDateTime >= :EDateTime)