::IGTDOSAPP
@echo off
Cd..
Echo The Local Editor Crashed IGTAMPE DOS > %DMP%
START /WAIT NOTEPAD IGT.bat
DEL %DMP%
IGT.bat
Echo The Local Editor Failed to return to IGTAMPE DOS > %DMP%
Echo There was an Error returning to IGTAMPE DOS.
Pause >nul