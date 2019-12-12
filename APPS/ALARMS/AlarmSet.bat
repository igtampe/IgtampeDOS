@echo off
Color 8F
Mode Con: Cols=57 Lines=25
Title Alarms Settings Application
Echo Alarms Settings Application
Echo WScript.Sleep 3500> "%TEMP%\M.vbs"
"%TEMP%\M.vbs"
Del "%TEMP%\M.vbs"
Echo.
Echo.
cd Alarms
cd A1
If not exist A.dll goto :NEW
cd..
Goto :OLD

:NEW
cd..
cd..
Echo Welcome to Alarms!
Echo Please wait while I create some Files...
PAUSE
cd ALARMS
Echo NOT SET> A1\A.dll
Echo NOT SET> A2\A.dll
Echo NOT SET> A3\A.dll
Echo NOT SET> A4\A.dll
Echo NOT SET> A5\A.dll
Echo NOT SET> A6\A.dll
Echo NOT SET> A7\A.dll
Echo NOT SET> A8\A.dll
Echo NOT SET> A9\A.dll
Echo NOT SET> A10\A.dll
Echo NOT SET> A1\MSG.dll
Echo NOT SET> A2\MSG.dll
Echo NOT SET> A3\MSG.dll
Echo NOT SET> A4\MSG.dll
Echo NOT SET> A5\MSG.dll
Echo NOT SET> A6\MSG.dll
Echo NOT SET> A7\MSG.dll
Echo NOT SET> A8\MSG.dll
Echo NOT SET> A9\MSG.dll
Echo NOT SET> A10\MSG.dll
Echo NOT SET> A1\REASON.dll
Echo NOT SET> A2\REASON.dll
Echo NOT SET> A3\REASON.dll
Echo NOT SET> A4\REASON.dll
Echo NOT SET> A5\REASON.dll
Echo NOT SET> A6\REASON.dll
Echo NOT SET> A7\REASON.dll
Echo NOT SET> A8\REASON.dll
Echo NOT SET> A9\REASON.dll
Echo NOT SET> A10\REASON.dll
Echo NOT SET> A1\SOUND.wav
Echo NOT SET> A2\Sound.wav
Echo NOT SET> A3\Sound.wav
Echo NOT SET> A4\Sound.wav
Echo NOT SET> A5\Sound.wav
Echo NOT SET> A6\Sound.wav
Echo NOT SET> A7\Sound.wav
Echo NOT SET> A8\Sound.wav
Echo NOT SET> A9\Sound.wav
Echo NOT SET> A10\Sound.wav
Echo OK. I have finished. Going to Main Screen...

Echo WScript.Sleep 500> "%TEMP%\M.vbs"
"%TEMP%\M.vbs"
Del "%TEMP%\M.vbs"


:OLD
Cls
Echo Alarms Settings Application
Echo.
Echo.
Echo Choose a Command:
Echo.
Echo [1] Modify an Alarm
Echo [2] Exit
Echo.
Echo.
Set /p Q1=:

IF "%Q1%"=="1" Goto :1
IF "%Q1%"=="2" Goto :2
Goto :OLD

:1
Echo.
Echo Which Alarm to Modify (1-10)
Set /p A=
IF NOT EXIST A%A% goto :1
cd A%A%

:1a
Echo.
Echo.
Echo Select a Choice for This Alarm:
Echo.
Echo [1] Set a New Time.
Echo [2] Set a New Message
Echo [3] Set a New Reason
Echo [4] Set a New Sound
Echo [5] End
Echo.
Set /p Q2=
IF "%Q2%"=="1" goto :TIME
IF "%Q2%"=="2" goto :MSG
IF "%Q2%"=="3" goto :REASON
IF "%Q2%"=="4" goto :SOUND
If "%Q2%"=="5" goto :OLD
goto :1a

:SOUND
Echo.
Echo Where is the Sound so that I May copy it here?
Echo.
Echo It can only be a .Wav file.
Echo.
Set /p SOUND=
If Not Exist "%SOUND%" goto :Sound
del Sound.wav
TYPE "%SOUND%">> Sound.wav
Goto :NOTICE

:TIME
Echo.
Echo What will be the New time for Alarm %A%?
Echo.
Echo Example: 21:30 (9:30 PM)
Echo.
Echo.
Set /p TIME=
Echo %TIME%> A.dll
Goto :NOTICE

:REASON
Echo.
Echo What will be the New Reason for Alarm %A%?
Echo.
Echo.
Set /p REASON=
Echo %REASON% > REASON.dll
Goto :NOTICE

:MSG
Echo.
Echo What will be the new Message for Alarm %A%?
Echo.
Echo.
Set /p MSG=
Echo MSG > MSG.dll
Goto :NOTICE

:NOTICE
Mode Con: Lines=25
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo You MUST Restart alarms for these changes to take effect.
Echo Any Alarms you have added will not work until you do so.
Echo.
Echo Close this window BEFORE closing Alarms.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo Press any Key to go back to the first screen.
Pause >nul
cd..
Goto :OLD

:2
Echo EXITSIGNAL> EXIT.dll  
EXIT & EXiT