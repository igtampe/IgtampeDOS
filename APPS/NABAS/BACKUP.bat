@echo off
Echo.
Echo ---------------------------------------------------------------------
Echo [BACKUP] Igtampe DOS is being Backed Up...
Echo ---------------------------------------------------------------------
Echo.
SET /p DRIVE=<Backup.tmp
DEL Backup.tmp
IF NOT EXIST %DRIVE%\BACKUP MD %DRIVE%\BACKUP
XCOPY %FD% %DRIVE%\BACKUP /E /C /Y >nul
Echo %ID% %V% %BUILD% > %DRIVE%\BACKUP\VER.txt
Attrib %DRIVE%\Backup +H
Echo.
Echo ---------------------------------------------------------------------
Echo [BACKUP] Finished Backing Up Igtampe DOS
Echo ---------------------------------------------------------------------
Echo.
