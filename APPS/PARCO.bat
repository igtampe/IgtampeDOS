::IGTDOSAPP
Echo Parco Crashed> %DMP%
@echo off
setlocal EnableDelayedExpansion
Title Parco For Igtampe DOS
Mode con: Lines=40
IF NOT EXIST PARCO MD PARCO
CD PARCO
IF NOT EXIST TRASH MD TRASH
IF NOT EXIST DOWNLOAD MD DOWNLOAD
Set ROOT=%OD%

:HELP
CLS
Echo ษอออออออออออออออออออออออออออออออออออป
Echo บPARCO For Igtampe DOS [Version 1.0]บ
Echo บ(C)2014 Igtampe, No Rights Reservedบ
Echo ศอออออออออออออออออออออออออออออออออออผ
Echo.
Echo The root directory is %ROOT%
Echo.
Echo Type CD (New Directory) To change directory
Echo Type CD.. To return to the previous directory
Echo Type CD\ To return to the root directory.
Echo.
Echo Type DN (File) To download a file
Echo Type CP (File) to Copy a File
Echo Type CT (File) To Cut a file
Echo Type PT To paste a file
Echo.
Echo Type MD (Folder) To make a folder
Echo Type RD (Folder) To Remove a Folder
Echo Type DL (File) To delete a file
Echo.
Echo Type TRASH To go to the Trash
Echo.
Echo Downloads will be kept in %CD%\DOWNLOADS
Echo Commands (Programs, etc.) Will be run in the directory %CD%
Echo.
Echo Note: CP and CT Can only move FILES and not FOLDERS
Echo Note: All commands must be capitalized Not "cd.." Instead "CD.."
Echo.
Echo Type HELP to see this help message again
SET DIR=%ROOT%
Set LEVEL=0
SET 0=%ROOT%
Pause >nul

:MAIN
Title %DIR%
%REM%CLS
IF "%E%"=="1" Echo %APPLETT% Reports %NTYPE%:
IF "%E%"=="1" Echo %ETYPE%
IF "%E%"=="1" Echo.
SET E=0
Echo You are currently in %DIR%
Echo Which is level %LEVEL%
Echo.
Echo.
DIR "%DIR%" /b /p
Echo.
Echo.
Set /p C=:
Echo Parco Crashed While interpreting a command> %DMP%
Echo Most likely an invalid command.>> %DMP%
Echo "%C%"|FIND "CD"> Nul
IF "%ERRORLEVEL%"=="0" Goto :CD
Echo "%C%"|FIND "DN"> Nul
IF "%ERRORLEVEL%"=="0" Goto :DN
Echo "%C%"|FIND "CP"> Nul
IF "%ERRORLEVEL%"=="0" Goto :CP
Echo "%C%"|FIND "CT"> Nul
IF "%ERRORLEVEL%"=="0" Goto :CT
Echo "%C%"|FIND "MD"> Nul
IF "%ERRORLEVEL%"=="0" Goto :MD
Echo "%C%"|FIND "RD"> Nul
IF "%ERRORLEVEL%"=="0" Goto :RD
Echo "%C%"|FIND "DL"> Nul
IF "%ERRORLEVEL%"=="0" Goto :DL
IF "%C%"=="PT" Goto :PT
IF "%C%"=="HELP" Goto :HELP
IF "%C%"=="DEV" Goto :DEV
IF "%C%"=="TRASH" Goto :TRASH
IF "%C%"=="EXIT" Goto :EXIT
IF EXIST "%DIR%\%C%" START "" "%DIR%\%C%"& GOTO :MAIN
SET APPLETT=CARPO
SET ETYPE=Command not recognized, See HELP,
SET E=1
Goto :MAIN

:DEV
IF "%REM%"=="REM" GOTO :NOMOREDEV
SET REM=REM
MODE CON: LINES=999 COLS=999
ECHO ON
@GOTO :MAIN

:NOMOREDEV
@ECHO OFF
MODE CON: LINES=40 COLS=85
SET REM=
GOTO :MAIN

:CDE1
SET ETYPE=You Are at the root directory. You cannot go higher.
SET E=1
Set NTYPE=An Error
Goto :MAIN

:CDE2
SET ETYPE=The File requested was not found
SET E=1
Set NTYPE=An Error

:CD
Echo Parco Crashed While changing Directory.> %DMP%
Set APPLETT=CD
SET NEWDIR=%C:CD =%
Echo %NEWDIR%|Find ":"> Nul
IF "%ERRORLEVEL%"=="0" Goto :CDNEWROOT
Echo %NEWDIR%|Find "\\"> Nul
IF "%ERRORLEVEL%"=="0" Goto :CDNEWROOT
IF "%C%"=="CD.." Goto :cd..
IF "%C%"=="CD\" Goto :CD\
IF "%NEWDIR%"==".." Goto :cd..
IF "%NEWDIR%"=="\" Goto :CD\
IF NOT EXIST "%DIR%\%NEWDIR%" Goto :CDE2
Set /a LEVEL=%LEVEL%+1
SET %LEVEL%=%DIR%\%NEWDIR%
SET DIR=%DIR%\%NEWDIR%
Goto :MAIN

:CDNEWROOT
Echo Parco Crashed While setting a new root directory> %DMP%
SET TRASH=0
Echo %NEWDIR%|FIND "TRASH"> NUL
IF "%ERRORLEVEL%"=="0" SET TRASH=1
SET DIR=%NEWDIR%
SET ROOT=%NEWDIR%
SET LEVEL=0
SET 0=%ROOT%
SET ETYPE=You have changed the Root directory to %NEWDIR%
SET E=1
Set NTYPE=
Goto :MAIN

:CD..
Echo Parco Crashed While changing directories> %DMP%
IF /i "%DIR%"=="%ROOT%" Goto :CDE1
Set /a LEVEL=%LEVEL%-1
SET DIR=!%LEVEL%!
Goto :MAIN

:CD\
Echo Parco Crashed While returning to the root directory> %DMP%
Set LEVEL=0
SET DIR=%ROOT%
Goto :MAIN

:DNE1
SET ETYPE=The File requested was not found
SET E=1
Set NTYPE=An Error
Goto :MAIN

:DN
Echo Parco While attempting to download a file> %DMP%
Set APPLETT=DN
Set DN=%C:DN =%
IF NOT EXIST "%DIR%\%DN%" Goto :DNE1
Echo Parco While attempting to download %DIR%\%DN%> %DMP%
Type "%DIR%\%DN%"> DOWNLOADS\%DN%
SET ETYPE=The File requested was Downloaded successfully
SET E=1
Set NTYPE=
Goto :MAIN

:CP
Echo Parco While attempting to add a file to the clipboard in mode COPY> %DMP%
Set APPLETT=CP
SET CPMODE=CP
SET CPNAME=%C:CP =%
SET CPDIR=%DIR%\%CPNAME%
IF NOT EXIST "%CPDIR%" Goto :DNE1
SET ETYPE=The File requested was put in the clipboard in Mode COPY
SET E=1
Set NTYPE=
Goto :MAIN

:CT
Echo Parco While attempting to add a file to the clipboard in mode CUT> %DMP%
Set APPLETT=CT
SET CPMODE=CT
SET CPNAME=%C:CT =%
SET CPDIR=%DIR%\%CPNAME%
IF NOT EXIST "%CPDIR%" Goto :DNE1
SET ETYPE=The File requested was put in the clipboard in Mode MOVE
SET E=1
Set NTYPE=
Goto :MAIN

:PTE1
SET ETYPE=No File is in the Clipboard
SET E=1
Set NTYPE=An Error
Goto :MAIN

:PTE2
SET ETYPE=The File requested to paste already exists in this directory
SET E=1
Set NTYPE=An Error
Goto :MAIN

:PT
Echo Parco While attempting to paste a file> %DMP%
Set APPLETT=PT
IF "%CPDIR%"=="" GOTO :PTE1
IF NOT EXIST "%CPDIR%" Goto :DNE1
IF EXIST "%DIR%\%CPNAME%" Goto :PTE2
TYPE "%CPDIR%"> "%DIR%\%CPNAME%"
IF "%CPMODE%"=="CT" DEL "%CPDIR%"
SET ETYPE=The File requested was Pasted
SET CPDIR=
SET E=1
Set NTYPE=
Goto :MAIN

:MDE1
SET ETYPE=That Folder already exists in this directory
SET E=1
Set NTYPE=An Error
Goto :MAIN

:MD
Echo Parco While attempting to create a directory> %DMP%
SET APPLETT=MD
SET MD=%C:MD =%
IF EXIST "%DIR%\%MD%" Goto :MDE1
MD "%DIR%\%MD%"
SET ETYPE=Folder Created
SET E=1
Set NTYPE=
Goto :MAIN

:RDE2
SET ETYPE=This directory is not Empty.
SET E=1
Set NTYPE=An Error
Goto :MAIN

:RD
Echo Parco While attempting to Remove a directory> %DMP%
SET APPLETT=RD
SET RD=%C:RD =%
IF NOT EXIST "%DIR%\%RD%" Goto :DNE1
RD /q /s "%DIR%\%RD%"
SET ETYPE=Folder removed.
SET E=1
Set NTYPE=
Goto :MAIN

:DL
Echo Parco While attempting to delete a file/directory> %DMP%
SET APPLETT=DL
SET DL=%C:DL =%
IF NOT EXIST "%DIR%\%DL%" Goto :DNE1
IF "%TRASH%"=="1" GOTO :DLREAL
IF NOT EXIST TRASH MD TRASH
MOVE "%DIR%\%DL%" "%CD%\TRASH\%DL%"
SET ETYPE=Moved to the Trash
SET E=1
Set NTYPE=
Goto :MAIN

:DLREAL
DEL "%DIR%\%DL%"
Goto :MAIN

:TRASH
SET TRASH=1
IF NOT EXIST TRASH MD TRASH
SET C=CD %CD%\TRASH
Goto :CD

:EXIT
Mode Con: Lines=25
Echo Returning to Igtampe DOS...
DEL %DMP%
CD %FD%
IGT
Echo Parco Failed to return to igtampe DOS> %DMP%
Echo.
Echo Parco Failed to return to Igtampe DOS.
Echo.
Echo Here is some information that may help you find out why:
Echo.
IF "%RAWFD%"=="" Goto :NOIGT
Echo IGTAMPE DOS Is supposed to be in %FD%, 
Echo Which was attempted to be the current directory.
Echo The current directory is %CD%.
Echo.
Echo Would you like to try again (Y/N)?
Set /p C=:
IF /i "%C%"=="Y" Goto :EXIT
Goto :EOF

:NOIGT
Echo We're sorry, you must've run this software without Igtampe DOS
Echo A Standard variable is not set properly.
Echo.
Echo Variable RAWFD="%RAWFD%", It should be something like "C:\IGT"...
Pause >nul

