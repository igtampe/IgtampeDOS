@echo off

SET SNDPLAY="%CD%\SNDPLAY.exe"
cd Alarms
color 8F
MODE CON: COLS=57 LINES=25
Goto :Set

:SETUP
cls
Echo Alarms has not been setup.
Echo Creating folders...
MD A1
MD A2
MD A3
MD A4
MD A5
MD A6
MD A7
MD A8
MD A9
MD A10
Echo Folders Created.
Echo.
cd..
Start AlarmSet.bat
Echo Use the Seperate Program to Setup one of the 10 Alarms.
Echo Then press any key to continue 
cd Alarms
Pause >nul

:SET
If not exist A1 goto :Setup
cd A1
SET /p A1=<A.dll
SET /p A1REASON=<REASON.dll
SET /p A1MSG=<MSG.dll
cd..
cd A2
SET /p A2=<A.dll
SET /p A2REASON=<REASON.dll
SET /p A2MSG=<MSG.dll
cd..
cd A3
SET /p A3=<A.dll
SET /p A3REASON=<REASON.dll
SET /p A3MSG=<MSG.dll
cd..
cd A4
SET /p A4=<A.dll
SET /p A4REASON=<REASON.dll
SET /p A4MSG=<MSG.dll
cd..
cd A5
SET /p A5=<A.dll
SET /p A5REASON=<REASON.dll
SET /p A15MSG=<MSG.dll
cd..
cd A6
SET /p A6=<A.dll
SET /p A6REASON=<REASON.dll
SET /p A6MSG=<MSG.dll
cd..
cd A7
SET /p A7=<A.dll
SET /p A7REASON=<REASON.dll
SET /p A7MSG=<MSG.dll
cd..
cd A8
SET /p A8=<A.dll
SET /p A8REASON=<REASON.dll
SET /p A8MSG=<MSG.dll
cd..
cd A9
SET /p A9=<A.dll
SET /p A9REASON=<REASON.dll
SET /p A9MSG=<MSG.dll
cd..
cd A10
SET /p A10=<A.dll
SET /p A10REASON=<REASON.dll
SET /p A10MSG=<MSG.dll
CD..
cd..
Start AlarmSet.bat
cd Alarms

@echo Alarms 3.2
@echo.
@Echo Time is now being monitored. Keep this window minimized.
@echo. 
Echo ALARMS:
Echo.
Echo 1 :%A1REASON%, (%A1%)
Echo 2 :%A2REASON%, (%A2%)
Echo 3 :%A3REASON%, (%A3%)
Echo 4 :%A4REASON%, (%A4%)
Echo 5 :%A5REASON%, (%A5%)
Echo 6 :%A6REASON%, (%A6%)
Echo 7 :%A7REASON%, (%A7%)
Echo 8 :%A8REASON%, (%A8%)
Echo 9 :%A9REASON%, (%A9%)
Echo 10:%A10REASON%, (%A10%)
echo.
echo To add alarms, Use the Alarms Settings Application

:S
set NEWTIME=%TIME:~0,-6%
Title Alarms Main Application: It is (%NEWTIME%)
IF "%NEWTIME%"=="%A1%" Goto :A1
IF "%NEWTIME%"=="%A2%" Goto :A2
IF "%NEWTIME%"=="%A3%" Goto :A3
IF "%NEWTIME%"=="%A4%" Goto :A4
IF "%NEWTIME%"=="%A5%" Goto :A5
IF "%NEWTIME%"=="%A6%" Goto :A6
IF "%NEWTIME%"=="%A7%" Goto :A7
IF "%NEWTIME%"=="%A8%" Goto :A8
IF "%NEWTIME%"=="%A9%" Goto :A9
IF "%NEWTIME%"=="%A10%" Goto :A10
IF EXIST "EXIT.dll" GOTO :EXIT
Goto :S

:A1
cd A1
START "" %SNDPLAY" "SOUND.wav"
Echo RESULT = MSGBOX("%A1MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A1CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A1%" >NUL
If "%ERRORLEVEL%"=="0" goto :A1CHECK
cd..
Goto :S

:A2
cd A2
START "" %SNDPLAY% "SOUND.wav"
Echo RESULT = MSGBOX("%A2MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A2CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A2%" >nul
If "%ERRORLEVEL%"=="0" goto :A2CHECK
cd..
GOTO :S

:A3
CD A3
START "" %SNDPLAY% "SOUND.wav"
Echo RESULT = MSGBOX("%A3MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A3CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A3%">nul
If "%ERRORLEVEL%"=="0" goto :A3CHECK
cd..
Goto :S

:A4
CD A4
START "" %SNDPLAY% "SOUND.wav"
Echo RESULT = MSGBOX("%A4MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A4CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A4%">nul
If "%ERRORLEVEL%"=="0" goto :A4CHECK
CD..
Goto :S


:A5
cd A5
START "" %SNDPLAY% "SOUND.wav"
Echo RESULT = MSGBOX("%A5MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A5CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A5%">nul
If "%ERRORLEVEL%"=="0" goto :A5CHECK
cd..
Goto :S

:A6
cd A6
START "" %SNDPLAY% "SOUND.wav"
Echo RESULT = MSGBOX("%A6MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A6CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A6%">nul
If "%ERRORLEVEL%"=="0" goto :A6CHECK
cd..
Goto :S

:A7
cd A7
START "" %SNDPLAY% "SOUND.wav"
Echo RESULT = MSGBOX("%A8MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A7CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A7%">nul
If "%ERRORLEVEL%"=="0" goto :A7CHECK
CD..
Goto :S

:A8
cd A8
START "" %SNDPLAY% "SOUND.wav"
Echo RESULT = MSGBOX("%A8MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A8CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A8%">nul
If "%ERRORLEVEL%"=="0" goto :A8CHECK
cd..
Goto :S

:A9
cd A9
START "" %SNDPLAY% "SOUND.wav"
Echo RESULT = MSGBOX("%A9MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A9CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A9%">nul
If "%ERRORLEVEL%"=="0" goto :A9CHECK
cd..
Goto :S

:A10
cd A10
START "" %SNDPLAY% "SOUND.wav"
Echo RESULT = MSGBOX("%A10MSG%",0+64,"Alarms")> M.vbs
Start M.VBS

:A10CHECK
set NEWTIME=%TIME:~0,-6%
Echo %NEWTIME%|Find "%A10%">nul
If "%ERRORLEVEL%"=="0" goto :A10CHECK
cd..
Goto :S

:EXIT
DEL "EXIT.dll"
EXIT & Exit