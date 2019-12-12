::IGTDOSAPP
@echo off
Title PC3DEMO
If /I "%C%"=="PC3DEMO" goto :IGT
Goto :NONIGT

:IGT
Echo This app was recognized to be running on IGTAMPE DOS.
Pause
Echo See what happens when you run it sepperately!
Echo.
Echo Type this:
Echo Start %RAWFD%\Apps\PC3DEMO.bat
Echo.
cd %FD%
IGT.bat
Echo There was An error returning to IGTAMPE DOS
Pause
Goto :EOF

:NONIGT
Echo This app was recognized NOT to be Running on IGTAMPE DOS.
Pause
Echo CONGRATURATIONS! You won..
Timeout /t 1 >nul
Echo NOTHING!
Pause >nul