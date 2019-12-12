:START
::IGTDOSAPP
::ARGCOMPATIBLE
SET FDAPP="%CD%"
@echo Off
TITLE (Program Name Here)
Echo Igtampe DOS Crashed While on ARGEX > %DMP%
:PREPROG
ECHO %c%|FIND "1" >nul
IF "%ERRORLEVEL%"=="0" set ARG2=1 & GOTO :1
ECHO %c%|FIND "2" >nul
IF "%ERRORLEVEL%"=="0" set ARG3=1 & GOTO :1
ECHO %c%|FIND "3" >nul
IF "%ERRORLEVEL%"=="0" set ARG4=1 & GOTO :1
ECHO %c%|FIND /i "a" >nul
IF "%ERRORLEVEL%"=="0" set ARG1=1 & GOTO :ARG1

:PROGHELP
Echo Arguements Example Batch File
echo.
Echo USAGE: [HELP] [/A] [/1] [/2] [/3]
echo.
Echo HELP: Shows this Help (Not compatible with other Variables)
Echo /a  : Anounces HELLO!
Echo /1-4: Anounces NUMBERS!!
Goto :END

:1
ECHO NUMBERS!!!
goto :END

:ARG1
Echo HELLO!
goto :END

:END
DEL %DMP%
%IGTDRIVE%
cd %FDAPP%
cd..
IGT.bat
Echo ARGEX Failed to Return to IGTAMPE DOS > %DMP%