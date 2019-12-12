@echo off
Setlocal enabledelayedexpansion
CD %FD%
CD APPS
cd MSG
IF "%ARG1%"=="" goto :askmsgbox
IF NOT EXIST %ARG1% Goto :NOTEXIST
CD %ARG1%
goto :MAIN

:askmsgbox
cls
Echo Igtampe DOS Message box System [Version 1.0]
Echo (C)2016 Igtampe, No Rights Reserved.
Echo.
Echo.
SET A=0
CD MSGLOCALES

:loop
Set /a A=%A%+1
IF NOT EXIST %A%.txt goto :ASK
call READ %A%.txt NAME
Echo ===================================
Echo %A%: %NAME%
Echo -----------------------------------
call READ %A%.txt URL
ECHO URL : %URL%
call READ %A%.txt URLM
Echo URLM: %URLM%
cd..
cd %NAME%
CD UNREAD
IF EXIST *.msg Echo -----------------------------------
IF EXIST *.msg Echo       *Has Unread Messages*
cd..
cd..
cd MSGLOCALES
Echo -----------------------------------
Echo.
Goto :Loop

:ASK
cd..
Echo.
echo Which mailbox?
Set /p ARG1=
IF NOT EXIST %ARG1% Goto :NOTEXIST
cd %ARG1%
goto :main

:NOTEXIST
echo.
Echo Specified mailbox does not exist
goto :EOF

:MAIN
mode con: lines=25
Echo Igtampe DOS Message box System [Version 1.0]
Echo (C)2016 Igtampe, No Rights Reserved.
Echo.
Echo.
Echo UNREAD:
Echo.
CD Unread
DIR /B *.msg
Echo.
Echo READ:
cd..
cd READ
DIR /b *.msg
echo.
echo FLAGGED:
cd..
if not exist flagged md flagged
cd FLAGGED
Dir /b *.msg
Echo.
Set /p MN=#
IF /i "%MN%"=="Exit" goto EOF
Echo.
IF EXIST %MN%.msg GOTO :readmsg
CD..
cd UNREAD
IF EXIST %MN%.msg GOTO :unreadreadmsg
cd..
cd READ
IF EXIST %MN%.msg GOTO :readmsg
cd..
echo.
Echo Message %MN%.msg could not be found.
Pause >nul
goto :main

:unreadreadmsg
move %MN%.msg ..\READ
cd..
cd READ
:readmsg
mode con: lines=50
type %MN%.msg
Echo.
Echo Actions:
echo %CD%|Find "FLAGGED">nul
echo	[1.] Delete
echo	[2.] Send comment/question
echo %CD%|Find "flagged" >nul
if "%ERRORLEVEL%"=="0" goto :skipflagoption
echo	[3.] Flag
:continuereadmsg
echo	[4.] Go back
echo.
set /p C=:
If "%C%"=="2" explorer mailto://igtampe@gmail.com& goto :readmsg
if "%C%"=="1" Goto :askdelete
if "%C%"=="3" goto :flag
if "%C%"=="4" CD..&goto :MAIN
echo.
echo %C% is not a valid response.
pause >nul
goto :readmsg

:skipflagoption
Echo	[X.] Already flagged
goto :continuereadmsg

:flag
echo %CD%|Find "flagged" >nul
if "%ERRORLEVEL%"=="0" goto :readmsg
type %MN%.msg > ..\FLAGGED\%MN%.msg
del %MN%.msg
cd..
cd FLAGGED
goto :readmsg

:askdelete
Echo.
Echo NOTICE: THERE IS NO WAY TO UNDELETE MESSAGES.
Echo.
echo.
echo Are you sure (Y/N)?
set /p yn=:
IF /i NOT "%YN%"=="y" goto :readmsg
del %MN%.msg
cd..
goto :MAIN

:EOF
endlocal