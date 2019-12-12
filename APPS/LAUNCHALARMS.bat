::IGTDOSAPP
Echo off
Echo Igtampe DOS Crashed While running LAUNCHALARMS > %DMP%
cd ALARMS
Start ALARMS.bat
cd..
cd..
DEL %DMP%
IGT.bat
Echo LAUNCHALARMS Failed to Return to IGTAMPE DOS > %DMP%