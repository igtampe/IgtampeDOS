::IGTDOSAPP
::ARGCOMPATIBLE

Echo CALC crashed > %DMP%
IF /I "%ARG1%"=="HELP" goto :HELP
IF /I "%ARG1%"=="N" goto :HELP
IF /I "%ARG1%"=="LOOP" goto :LOOP
ECHO %ARG1%|FIND "+" >nul
IF "%ERRORLEVEL%"=="0" goto :CALC
ECHO %ARG1%|FIND "/" >nul
IF "%ERRORLEVEL%"=="0" goto :CALC
ECHO %ARG1%|FIND "-" >nul
IF "%ERRORLEVEL%"=="0" goto :CALC
ECHO %ARG1%|FIND "*" >nul
IF "%ERRORLEVEL%"=="0" goto :CALC
ECHO %ARG1%|FIND "=" >nul
IF "%ERRORLEVEL%"=="0" SET R=Because this pogram doesn't do Algebra & goto :ERROR
ECHO %ARG1%|FIND "." >nul
IF "%ERRORLEVEL%"=="0" SET R=Because This program cannot operate decimals & goto :ERROR
GOTO :HELP

:loop
Echo The Calculator crashed while on a Loop > %DMP%
Title Calculator (Version 2.1)
Echo Calculator (Version 2.1)
Echo (C) 2018 Igtampe No rights Reserved
Echo.
Echo Begun Looping the Calculator. Type Exit to Exit.
Echo.


:L1
Set /P CALC=
IF /I "%CALC%"=="EXIT" Echo Exiting Calculator & Goto :END
Echo.
ECHO ------------------------------
SET /A ANS=%CALC% >nul
Echo %CALC%=%ANS%
Echo ------------------------------
Echo.
Goto :l1

:CALC
Echo The Calculator crashed while performing an Invalid Calculation > %DMP%
Echo The Calculator crashed while Performing the Calculation %ARG% > %DMP%
Echo ------------------------------
SET /A ANS=%ARG1% >nul
Echo %ARG1%=%ANS%
Echo ------------------------------
goto :END

:ERROR
Echo "%ARG1%" Is not a valid Calculator Problem
Echo %R%
Goto :END

:HELP
Echo Basic Calculator for IGTAMPE DOS (Version 1.0)
Echo.
Echo USAGE: [PROBLEM]
Echo.
Echo PROBLEM: The problem to process
Echo.
Echo The Program will display any Mathematical Error (if any).
Echo.
Echo **NOTE** NO DECIMALS!!!

:END
DEL %DMP%
CD %FD%
IGT.bat
Echo CALCULATOR failed to return to IGTAMPE DOS > %DMP%