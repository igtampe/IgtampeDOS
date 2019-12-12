::OLDARG
::IGTDOSAPP
rem @ECHO OFF
TITLE DISPLAY-R

IF NOT "%DMP%"=="" goto :skip
set DMP=nul
set ARG1=%1
set ARG=%1 %2 %3 %4 %5 %6 %7 %8 %9

:SKIP
echo DISPLAY-R crashed > %DMP%
If /I "%ARG1%"=="HELP" goto PROGHELP
If /I "%ARG1%"=="N" goto PROGHELP
Echo %ARG%
goto :END

:PROGHELP
Echo DISPLAY-R Text display Utility
Echo.
Echo USAGE: [TEXT]
Echo.
Echo TEXT: Text for DISPLAY-R to Display.
Goto :END

:END
IF /i "%CMD%"=="DIS" goto :END2
GOTO :EOF

:END2
DEL %DMP%
cd..
IGT.bat
Echo DISPLAY-R Failed to return to IGTAMPE DOS > %DMP%

:EOF