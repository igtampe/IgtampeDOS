@if "%C%"=="" Goto :HELP
SET CMD=%1
IF "%2"=="" SET ARG=
IF "%3"=="" SET ARG=%2
IF "%4"=="" SET ARG=%2 %3
IF "%5"=="" SET ARG=%2 %3 %4
IF "%6"=="" SET ARG=%2 %3 %4 %5
IF "%7"=="" SET ARG=%2 %3 %4 %5 %6
IF "%8"=="" SET ARG=%2 %3 %4 %5 %6 %7
IF "%9"=="" SET ARG=%2 %3 %4 %5 %6 %7 %8
IF NOT "%9"=="" SET ARG=%2 %3 %4 %5 %6 %7 %8 %9
SET ARG1=%2
SET ARG2=%3
SET ARG3=%4
SET ARG4=%5
SET ARG5=%6
SET ARG6=%7
SET ARG7=%8
SET ARG8=%9
GOTO :EOF

:HELP
@echo off
Echo VERTO Command Translator
Echo For Igtampe DOS
Echo.
Echo Version 1.0.0004
Echo.
Echo USAGE: VERTO [Command] [ARg1] [ARg2]... ...[Arg8]
Echo.
Echo.
Echo COMMAND: Command variable set as CMD
Echo ARG1-8 : Converted to ARG alltogether and Arg1, Arg2... Respectively
Pause >nul