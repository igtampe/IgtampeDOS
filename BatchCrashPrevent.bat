@echo off
Echo Launching %1....
Set BatchCrashPrevent=%1

:LaunchCycle
start /w /b IGT.bat
IF "%GOODEXIT%"=="1" goto :EOF

echo should I loop?
pause >nul
Goto :LaunchCycle