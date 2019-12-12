:START
::IGTDOSAPP
SET FDAPP="%CD%"
@echo Off
Echo Example Crashed> %DMP%
TITLE Example IGTDOSAPP

:PROG
Echo Program Contents here
PAUSE >NUL

:END
DEL %DMP%
%IGTDRIVE%
cd %FDAPP%
cd..
IGT.bat