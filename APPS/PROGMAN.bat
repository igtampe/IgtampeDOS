::IGTDOSAPP
::ARGCOMPATIBLE
@echo off
Echo The Program Manager Crashed > %DMP%
If /i "%ARG1%"=="/U" goto :UNINSTALL
Echo.
Echo Here are the Current Packages that Are Installed.
Echo.
CD %RAWFD%
CD DLLFILES
CD PKG
DIR /b
Echo.
Echo Type /u as argument to uninstall one.
Goto :E

:NOUN
Echo.
Echo That Package is not in the List!
Echo.
:UNINSTALL
Echo The Program Manager Crashed while it was initializing > %DMP%
Echo Uninstall Which Package?
Echo.
CD %RAWFD%
CD DLLFILES
CD PKG
DIR /b
Echo.
Echo Type the Whole name of the Package, Type N to cancel:
Set /p UN=
If /i "%UN%"=="N" goto :E
Echo.
IF NOT EXIST "%UN%" goto :NOUN
Set /p PLACE=<"%UN%"
Echo The Uninstallation location %PLACE%
Echo.
Echo Calling the Uninstaller...
Echo.
Echo The Program Manager Crashed while a program was uninstalling > %DMP%
CALL "%PLACE%"
Echo.
Echo Deleting the Uninstaller
DEL "%PLACE%"
Echo.
Echo Unregistering %UN%
IF EXIST "%UN%" DEL "%UN%"
Echo.
Echo Done!

:E
%IGTDRIVE%
CD %RAWFD%
DEL %DMP%
IGT
ECHO The Program Manager Failed to Return to IGTAMEP DOS > %DMP%