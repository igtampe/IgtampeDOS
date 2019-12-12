::IGTDOSAPP
Echo OFF
Echo IGTAMPE DOS Crashed while checking the battery > %DMP%
Echo Your battery is:
WMIC PATH WIN32_BATTERY GET ESTIMATEDCHARGEREMAINING
cd..
DEL %DMP%
IGT.bat
Echo BATTERY failed to Return to IGTAMPE DOS > %DMP%