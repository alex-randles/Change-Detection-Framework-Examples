SELECT a.[Operation], a.[Transaction ID], b.[End Time]
FROM sys.fn_dblog(NULL,NULL) a, sys.fn_dblog(NULL,NULL) b
WHERE a.[Transaction ID] = b.[Transaction ID]
AND a.Operation IN ('LOP_DELETE_ROWS', 'LOP_INSERT_ROWS','LOP_MODIFY_ROW') 
AND b.Operation = 'LOP_COMMIT_XACT' 
