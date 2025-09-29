-- UpdateTableColumn
UPDATE Request
SET 
    Remark= :newRemark
WHERE 
    RID = :rid
