::IGTDOSAPP
Title Finder [Version 2.1]
Setlocal
CD %OD%
Echo.
Echo Finder Crashed > %DMP%
Echo.
Echo File Finder for IGTAMPE DOS
Echo.
Echo Directory Change: DSWITCH [Directory]
Echo    -Drive Leters Exempt
Echo.
Echo Type Exit to Exit
Echo.
Echo The Current Directory to Search Is %CD%.
Echo.
Pause

:MAIN
Color 73
Echo.
Echo Please input the Search Query. 
Set /P D=
If /I "%D%"=="EXIT" GOTO :END
Echo %D%|Find "DSWITCH">nul
If /I "%ERRORLEVEL%"=="0" goto :CFORE
ECHO %D%|Find ":">nul
If /I "%ERRORLEVEL%"=="0" Goto :DSWITCH
Echo.
Echo Finding %D%. Please Wait...
Echo.
DIR "*%D%*" /A /B /P /S
Goto :MAIN

:CFORE
SET CFORE=%D:DSWITCH=%
CD %CFORE%
Echo The Current Directory to Search is %CD%.
Goto :MAIN

:DSWITCH
%D%
Goto :MAIN

:END
Endlocal
DEL %DMP%
%IGTDRIVE%
CD %FD%
IGT.bat
Echo There was an Error Returning to IGTDOS.
Pause