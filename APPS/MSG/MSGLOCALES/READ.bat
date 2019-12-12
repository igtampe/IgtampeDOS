@echo off
Set FILE=%1
Set VAR=%2
Set VARSET=%3
IF "%VARSET%"=="" SET VARSET=%VAR%
TYPE %FILE%|FIND "%VAR%:"> TEMP.tmp
Set /p V=<Temp.tmp
Set V=!V:%VAR%:=!
Set %VARSET%=%V%
Del temp.tmp
