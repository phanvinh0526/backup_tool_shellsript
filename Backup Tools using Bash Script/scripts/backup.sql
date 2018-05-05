DECLARE @path varchar(200);
DECLARE @name varchar (50) = 'Lots_Full_Backup_' + CONVERT(varchar(50), GETDATE(), 112);
SET @path1 = N'E:\lots.bak';

set @path = N'';

BACKUP DATABASE LOTS 
TO  DISK = @path
WITH NOFORMAT, INIT,  NAME = N'abc', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
