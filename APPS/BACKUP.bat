::IGTDOSAPP
Echo Igtampe DOS Crashed While Starting a Backup > %DMP%
CLS
Echo Igtampe DOS Backup Program [Version 2.0]
Echo (C)2016 Igtampe, No Rights Reserved
Echo.
Echo.
Echo Start Backup (Y/N)?
Set /p Q1=
If /I "%Q1%"=="N" goto :NO
Echo.
SET /p DRIVE=Drive (D): 
Echo.
Echo.
Echo IGTAMPE DOS Crashed during Preperations for a Backup > %DMP%
cls
Echo The NABAS will conclude this Backup.
Echo BACKUP> %NABAS%
Echo %DRIVE%:> "%RAWFD%\APPS\NABAS\BACKUP.tmp"
Goto :END

:NO
CLS
Echo Action canceled by the User.

:END
DEL %DMP%
%IGTDRIVE%
cd %FD%
IGT.bat
Echo BACKUP Failed to return to IGTAMPE DOS > %DMP%