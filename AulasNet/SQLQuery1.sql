RESTORE FILELISTONLY

FROM DISK = 'C:\Users\FELIPE\Downloads\AdventureWorks2016.bak'

GO

RESTORE DATABASE ADWORKSDB

FROM DISK = 'C:\Users\FELIPE\Downloads\AdventureWorks2016.bak'
WITH MOVE 'AdventureWorks2016_Data' TO 'C:\Users\FELIPE\Downloads\AdventureWorks2016.MDF',
MOVE 'AdventureWorks2016_Log ' TO 'C:\Users\FELIPE\Downloads\AdventureWorks2016.LDF'