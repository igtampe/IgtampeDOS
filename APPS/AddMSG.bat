@echo off
setlocal enabledelayedexpansion
CD MSG
CD MSGLOCALES
:MAIN
CLS
Echo MSGBOX Configurator [Version 1.0]
Echo (C)2016 Igtampe No Rights Reserved
Echo.
Echo.
Echo Currently configured Mailboxes
Echo.
SET A=0

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
Echo -----------------------------------
Echo.
Goto :Loop

:ASK
Echo.
Echo What to do?
Echo	[1.] Add A Mailbox
Echo	[2.] Remove a Mailbox
Echo	[3.] Exit
Echo.
Set /p choice=:
IF "%CHOICE%"=="1" goto :add
IF "%CHOICE%"=="2" goto :Delete
IF "%CHOICE%"=="3" goto EOF
goto :ask

:Delete
Echo.
Echo What number?
Set /p n=#
Del %N%.txt
Set /a Nnew=%N%+1

:MAD
IF NOT EXIST %NNEW%.txt Goto :MAIN
REN %NNEW%.txt %N%.txt
Set /a N=%N%+1
SET /a NNEW=%NNEW%+1
Goto :MAD

Goto :main

:add
Echo ===================================
Set /p NAME= %A%: 
Echo NAME:%NAME%> %A%.txt
Echo -----------------------------------
SET /p URL=URL : 
Echo URL:%URL%>> %a%.txt
SET /p URLM=URLM: 
Echo URLM:%URLM%>> %a%.txt
Echo -----------------------------------
Set /a A=%A%+1
Goto :MAIN

:eof
endlocal