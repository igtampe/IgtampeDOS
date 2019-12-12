::IGTDOSAPP
@echo off
Title Timer [Version 1.0]
Color 8
cls
Echo Timer Crashed. > %DMP%
Echo This could be due to a Bad Time inputted >> %DMP%
Echo TIMER For IGTAMPE DOS
Echo (C)2013 Igtampe. No Rights Reserved
Echo.
Echo You will be asked for Hours, Minutes, and Seconds.
Echo.
Set /p H=Hours:
Set /a HT=%H%*60*60
Set /p M=Minutes:
Set /a MT=%M%*60
set /p S=Seconds:
Set /a T=%MT%+%HT%+%S%
Cls
Echo OK. The Time Will Run out in:
Echo %H% Hour(s)
Echo %M% Minute(s)
Echo %S% Second(s)
Echo.
Echo Press any key to start the timer.
Pause >nul

:TIMERCORE
cls
Echo off
Color 7F
IF "%T%"=="0" GOTO :OUTATIME
SET ST=%T%
Set /a MT=%T%/60
Set /a HT=%T%/60/60
Set /a MM=%HT%*60
Set /a MT=%MT%-%MM%
Set /a SM=%MT%*60
Set /a SM2=%HT%*60*60
Set /a ST=%ST%-%SM%-%SM2%
Echo.
Echo %HT% Hour(s)
Echo %MT% Minute(s)
Echo %ST% Seccond(s)
Echo.
Title %HT%:%MT%:%ST%
Echo WScript.Sleep 850> M.vbs
M.vbs
Del M.vbs
Set /a T=%T%-1
Goto :TIMERCORE

:OUTATIME
Echo WScript.Sleep 850> M.vbs
M.vbs
Del M.vbs
Echo The Timer has Finished!
MSG * Timer has Finished!
Goto :END

:END
%IGTDRIVE%
CD %FD%
Del %DMP%
IGT
Echo Timer Could not Return to Igtampe DOS > %DMP%
Echo There was an Error Returning to Igtampe DOS
Pause >nul