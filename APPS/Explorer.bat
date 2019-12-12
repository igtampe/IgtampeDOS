::IGTDOSAPP
@echo Off
cd %OD%
Echo Explorer Crashed > %DMP%
Title EXPLORER for IGTAMPE DOS [Version 2.1]
Echo.
Echo File Input Usage: FILE [File to Open]
Echo	   -NOTE: Include File Extension.
Echo Command Input Usage: COMMAND [Command]
Echo       -NOTE: Drive letters Exempt
Echo Type \ For Root Directory
Echo Type .. to go Up a Level.
Echo Type Exit to Return to IGTDOS
Pause
Cls

:MAIN
Color 78
CLS
Echo List of Files in the Directory %CD%
Echo.
DIR /P /B
Echo.
Set /P D=
If /I "%D%"=="EXIT" GOTO :END
Echo %D%|Find "FILE">nul
If /I "%ERRORLEVEL%"=="0" goto :FILE
Echo %D%|Find "COMMAND">nul
If /I "%ERRORLEVEL%"=="0" goto :CFORE
ECHO %D%|Find ":">nul
If /I "%ERRORLEVEL%"=="0" Goto :DSWITCH
CD %D%
goto :Main

:FILE
SET FILE=%D:FILE=%
START %FILE%
Goto :MAIN

:CFORE
SET CFORE=%D:COMMAND=%
%CFORE%
Pause
goto :MAIN

:DSWITCH
%D%
Goto MAIN

:END
DEL %DMP%
Set OD=%CD%
%IGTDRIVE%
cd %FD%
IGT.bat
Echo There was an Error Returning to IGTDOS.
Pause