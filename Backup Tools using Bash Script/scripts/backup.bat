@ECHO OFF

SET PATH_BK=C:\LOTS\analytics\db\Lots_Full_Backup
SET PATH_COMPRESS=C:\LOTS\analytics\db\Lots_Full_Backup
SET PATH_BK_SCRIPT=C:\Users\Vinh Phan\Dropbox\WORK\Knox Folder\Vinh's\Data Centre\tools\scripts\backup.sql

for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
SET DATETIME=%ldt:~0,4%%ldt:~4,2%%ldt:~6,2%_%ldt:~8,2%%ldt:~10,2%%ldt:~11,3%
SET DATE=%ldt:~0,4%%ldt:~4,2%%ldt:~6,2%

SQLCMD -E -S SERVER1\CORUMSQL2008 -i %PATH_BK_SCRIPT%


PAUSE
