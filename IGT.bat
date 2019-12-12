::IGTDOSNT
@echo off
IF /i "%1"=="DEBUG" Set DEBUG=1
if not exist NABAS.bat goto :missingfiles
if not exist Verto.bat goto :missingfiles
goto :UBERSTART

Hello! You've oppened the Igtampe DOS batch file in Notepad!
Please do not edit anything. That may cause Igtampe DOS To crash if you're currently running it.
I Highly recommend that if you're going to look around, to do so. It is very interesting what you can do with the batch file system.

One thing I will overlook from the Terms And Conditions is editing is the logo. If you want to replace it it's fine by me. It's right bellow this note.

:LOGO
Echo                           ษออปษอป  ษอออออป
echo                           บฐฐบบฐบ  บฐฐฐฐฐบ
echo                           บฐบฐบฐบ  ศอปฐษอผ
echo                           บฐบบฐฐบ    บฐบ
echo                           ศอผศออผ    ศอผ
IF /i "%C%"=="GOTO LOGO" GOTO :LOGOC
IF /i "%C%"=="GOTO :LOGO" GOTO :LOGOC
GOTO %CONT%

:Missingfiles
Title Igtampe DOS Crashed...
mode con:cols=70 lines=25
color 37
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS NT
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Igtampe DOS is Unable to start, since critical secondary programs are
echo missing in:
Echo.
Echo %CD%
Echo.
Echo Please make sure that NABAS.bat and VERTO.bat are in this directory.
Echo.

pause >nul
Exit & Exit


:Nopermission
Title Igtampe DOS Crashed...
mode con:cols=70 lines=25
color 37
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS NT
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Igtampe DOS is Unable to start, since it was not started in an
echo Igtampe DOS primary directory.
Echo.
Echo %CD%
Echo.
Echo Please start Igtampe DOS from it's instalation Directory
Echo.
pause >nul
Exit & Exit

:LOGOC
Echo.
Echo You know, You really shouldn't be using the Goto Command.
Echo It can lead to an Igtampe DOS Crash!
Echo.
Goto :C

:DOWNLOADMAKER
Echo DOWNLOAD.VBS Is MISSING.
Echo.
ECHO CREATING DOWNLOAD.vbs
Echo if WScript.Arguments.Count = 0 then>> DOWNLOAD.VBS
Echo     RESULT = MSGBOX("USE: DOWNLOAD [URL] [LOCATION]" ^& chr(13) ^& chr(13) ^& "URL: URL Of the file" ^& chr(13) ^& chr(13) ^& "LOCATION: Place to save the file",0+64,"DOWNLOAD")>> DOWNLOAD.VBS
Echo     RESULT = MSGBOX("Download API VERSION 1.0 BUILD 00" ^& chr(13) ^& chr(13) ^& "(C)2018 Igtampe, No rights Reserved." ^& chr(13) ^& chr(13) ^& "This program uses an Arguement API that is not mine, and the Download API Isn't either. The only thing i've done is put them together.",0+64,"DOWNLOAD")>> DOWNLOAD.VBS
Echo     WScript.Quit>> DOWNLOAD.VBS
Echo end if>> DOWNLOAD.VBS
Echo DIM strFileURL>> DOWNLOAD.VBS
Echo DIM strHDLocation>> DOWNLOAD.VBS
Echo strFileURL = WScript.Arguments(0)>> DOWNLOAD.VBS
Echo strHDLocation = WScript.Arguments(1)>> DOWNLOAD.VBS
Echo. >> DOWNLOAD.VBS
Echo ' Fetch the file>> DOWNLOAD.VBS
Echo     Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")>> DOWNLOAD.VBS
Echo. >> DOWNLOAD.VBS
Echo     objXMLHTTP.open "GET", strFileURL, false>> DOWNLOAD.VBS
Echo     objXMLHTTP.send()>> DOWNLOAD.VBS
Echo. >> DOWNLOAD.VBS
Echo If objXMLHTTP.Status = 200 Then>> DOWNLOAD.VBS
Echo Set objADOStream = CreateObject("ADODB.Stream")>> DOWNLOAD.VBS
Echo objADOStream.Open>> DOWNLOAD.VBS
Echo objADOStream.Type = 1 'adTypeBinary>> DOWNLOAD.VBS
Echo. >> DOWNLOAD.VBS
Echo objADOStream.Write objXMLHTTP.ResponseBody>> DOWNLOAD.VBS
Echo objADOStream.Position = 0    'Set the stream position to the start>> DOWNLOAD.VBS
Echo. >> DOWNLOAD.VBS
Echo Set objFSO = Createobject("Scripting.FileSystemObject")>> DOWNLOAD.VBS
Echo If objFSO.Fileexists(strHDLocation) Then >> DOWNLOAD.VBS
Echo     RESULT = MSGBOX("This file Already Exists!",0+64,"DOWNLOAD")>> DOWNLOAD.VBS
Echo     WScript.Quit>> DOWNLOAD.VBS
Echo end if>> DOWNLOAD.VBS
Echo. >> DOWNLOAD.VBS
Echo Set objFSO = Nothing>> DOWNLOAD.VBS
Echo. >> DOWNLOAD.VBS
Echo objADOStream.SaveToFile strHDLocation>> DOWNLOAD.VBS
Echo objADOStream.Close>> DOWNLOAD.VBS
Echo Set objADOStream = Nothing>> DOWNLOAD.VBS
Echo End if>> DOWNLOAD.VBS
Echo. >> DOWNLOAD.VBS
Echo Set objXMLHTTP = Nothing>> DOWNLOAD.VBS
Echo. >> DOWNLOAD.VBS
Echo CREATED DOWNLOAD.vbs

:UBERSTART
IF "%DEBUG%"=="1" ECHO Igtampe DOS Is loading... > Debug.tmp
Title Igtampe DOS NT
:RELOAD1
Set LOGSET=ON
Set LOGDIR="%CD%\LOGS\logfile.log"
set FD="%CD%"
SET RAWFD=%CD%
SET NOTIFDIR="%RAWFD%\APPS\NABAS\NOTIF.tmp"
Set DEBUGDIR="%RAWFD%\DEBUG.tmp"
Set NABAS="%RAWFD%\APPS\NABAS\APP.tmp"
SET SLEEP="%RAWFD%\APPS\API\SLEEP.exe"
SET SAY="%RAWFD%\APPS\API\SAY.exe"
SET PLAY=START "" "%RAWFD%\APPS\API\PLAY.exe"
SET ON="%RAWFD%\SOUNDS\ON.wav"
SET OFF="%RAWFD%\SOUNDS\Off.wav"
SET HIBREON="%RAWFD%\SOUNDS\HIBREON.wav"
SET HIBREOFF="%RAWFD%\SOUNDS\HIBREOFF.wav"
SET SLEEPSND="%RAWFD%\SOUNDS\SLEEP.wav"
SET WAKEUP="%RAWFD%\SOUNDS\WAKEUP.wav"
SET WELCOME="%RAWFD%\SOUNDS\WELCOME.wav"
SET BETAWELCOME="%RAWFD%\SOUNDS\BETAWELCOME.wav"
SET VERTO=CALL "%RAWFD%\VERTO.bat"
ATTRIB %FD% -H -R
cd\
Set IGTDRIVE=%CD:\=%
cd %RAWFD%
SET ID=NT
SET V=9.1 BETA
SET VER=%V%
Set IGTBIOS=4.0
:BUILD:6012
Set BUILD=6012
IF "%RELOAD%"=="1" goto :skipdownloadmaker
IF NOT EXIST DOWNLOAD.vbs GOTO :DOWNLOADMAKER
:skipdownloadmaker
if /i "%1"== "WELCOME" goto :WELCOME
IF "%DEBUG%"=="1" Echo %ID% %V% %BUILD% %IGTDRIVE% %RAWFD% > Debug.tmp
Title Checking Signal Files
IF "%DEBUG%"=="1" Echo Checking Signal Files... > %DEBUGDIR%
IF NOT EXIST DLLFILES MD DLLFILES
cd DLLFILES
IF NOT EXIST PKG MD PKG

set ARGLAUNCH=1
color 37
Title IGTDOS Arguement Mode [Version %V%]
IF /i "%1"=="IGTINF" GOTO :IGTINF
IF /i "%1"=="LOGMANAGE" GOTO :LOGMANAGE
If /i "%1"=="HELP" GOTO :HELP
If /i "%1"=="THEME" GOTO :THEME
If /i "%1"=="?" Goto :?
If /i "%1"=="/?" Goto :?
IF /i "%1"=="TIME" goto :TIME
IF /i "%1"=="VER" goto :VER
if /i "%1"=="TANDC" goto :TANDC
IF /i "%1"=="APPLIST" goto :1
Color 07
set ARGLAUNCH=0


If exist Progfiletemp.dll goto :POSTPROG
:APPCRASHCONT
cd..
IF NOT EXIST LOGS MD LOGS
cd APPS
IF NOT EXIST UNINST MD UNINST
IF NOT EXIST SHRTCT MD SHRTCT
cd..
Echo Hello!!!> C:\WINDOWS\IGTTESTFILE.dll
SET ADMIN=0
IF EXIST C:\WINDOWS\IGTTESTFILE.DLL SET ADMIN=1
IF EXIST C:\WINDOWS\IGTTESTFILE.DLL DEL C:\WINDOWS\IGTTESTFILE.dll
mode con:cols=70 lines=25
START NABAS.bat
Echo Waiting for NABAS
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
IF EXIST START.TMP GOTO :ASKSOS
:ASKSOSCONT
Title Finding Operating System...
IF "%DEBUG%"=="1" Echo Finding the Operating System... > %DEBUGDIR%
Echo Loading Igtampe DOS...
ver > OS.tmp
Type OS.tmp | find "5.2" >nul
if %ERRORLEVEL% == 0 Set WIN=XP& SET XP=1
Type OS.tmp | find "5.1" >nul
if %ERRORLEVEL% == 0 Set WIN=XP& SET XP=1
Type OS.tmp | find "5.0">nul
if %ERRORLEVEL% == 0 SET WIN=2000& SET XP=1
Type OS.tmp | find "6.4">nul
if %ERRORLEVEL% == 0 SET WIN=10 Preview
Type OS.tmp | find "10.0">nul
if %ERRORLEVEL% == 0 SET WIN=10
Type OS.tmp | find "6.3">nul
if %ERRORLEVEL% == 0 SET WIN=8.1
Type OS.tmp | find "6.2">nul
if %ERRORLEVEL% == 0 SET WIN=8
Type OS.tmp | find "6.1">nul
if %ERRORLEVEL% == 0 SET WIN=7
Type OS.tmp | find "6.0">nul
if %ERRORLEVEL% == 0 SET WIN=Vista
DEL OS.tmp
IF "%XP%"=="" SET XP=0
IF "%WIN%"=="" SET WIN=Unknown
IF "%DEBUG%"=="1" Echo Found Windows %WIN%, Writing Dev Info to Logfile > %DEBUGDIR%
Title Found Windows %WIN%, Writing Dev info to Logfile...
Set DMP="%CD%\M.dmp"
IF /i "%RELOAD%"=="1" goto :RELOAD2
If exist %DMP% goto :POSTCRASH
if "%APPCRASH%"=="1" set APPCRASH=0& goto :PRE123
IF EXIST HIBER.bat goto :POSTHIBER
Echo. >>%LOGDIR%
Echo [%DATE%]: The System was started on %COMPUTERNAME% >>%LOGDIR%
ECHO. >>%LOGDIR%
Echo Debug Info:>>%LOGDIR%
Echo. >>%LOGDIR%
Echo (%ID% %V% %BUILD%) ON %IGTDRIVE% %RAWFD%, XP=%XP%, Windows %WIN%>>%LOGDIR%
Echo. >>%LOGDIR%
if /i "%1"== "/SOS" goto :SOS
IF /i "%1"=="" goto :START
goto :SESSIONSTART

:WELCOME
Title Welcome to IGTAMPE DOS!
Color 2A
Mode con: Lines=25 cols=70
If /i "%ARG1%"=="NOBETA" goto :skipbetacheckwelcome
Echo %V%|Find /i "BETA">nul
IF "%ERRORLEVEL%"=="0" Goto :BETAWELCOME
:skipbetacheckwelcome
%PLAY% %WELCOME%
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Welcome to Igtampe DOS %ID%!
Echo.
Echo Here's what's new (1/3):
Echo	-Graphical update
Echo	-changed speak to say
Echo	-Added VERTO command Interpreter
Echo		-Test using the vertotest application
echo	-Updated copyright dates
Echo	-Upgraded Infinity Text to 1.1
echo		-Now actually outputs a blank line instead of a dash.
Echo	-Added safeguard against internal IGTDOS components
Echo		-such as NABAS, ACE, and VERTO
Echo	-Added RELOAD command
Echo		-Mostly used for my benefit, but reloads all variables
Echo		 and NABAS
Echo	-Added Pre-Uberstart checks to make sure Igtampe DOS has all
Echo	 of it's files and is started in its install directory.
Echo.
Echo.
Echo Press any key to go to page 2.
Pause >nul
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Welcome to Igtampe DOS %ID%!
Echo.
Echo Here's what's new (2/3):
Echo	-Fixed bug that would make shortcuts and secrets not launch if
Echo	 they had spaces in their name.
Echo	-The Beta Welcome Screen used Igtampe DOS NT instead of %%ID%%.
Echo		-This was already fixed in the standard welcome screen.
Echo		-Also added the build.
Echo	-Made the welcome window stop playing music upon exit.
echo	-Changed default Notification SFX
Echo		-Splash.wav from WebTV
Echo	-Gave Backup and Restore a visual tune up.
Echo	-Fixed bug that would make restore not work if Igtampe DOS was
Echo	 not installed on C:.
Echo	-Fixed bug that would make N not register as NO on custom
Echo	 theme maker.
Echo	-Removed "Launching Nabas IUC" Notif on startup.
Echo.
Echo.
Echo Press any key to go to Page 3
Pause >nul
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Welcome to Igtampe DOS %ID%!
Echo.
Echo Here's what's new (3/3):
Echo	-Added a MESSAGE BOARD SYSTEM!
Echo		-Can check other Message boards. Use AddMSG to add.
Echo		-Pre-setup with IGTMSG, a message board for Igtampe DOS
Echo		 Users.
Echo			-Used for emergency notifications of updates
Echo			 and the sort.
Echo		-NABAS Checks and downloads messages on startup.
Echo		-Read messages using new MSG app.
Echo	-Changed remainder of sounds (except sleep/wake).
Echo		-Courtesy of:
Echo			-DevianArt user Sausen and his Longhorn Sound
Echo			 scheme
Echo			-Windows NT 5.0 Shutdown sound
Echo			-The Microsoft Sound by Brian Eno
Echo			-Windows 2000 Startup/Shutdown sounds.
Echo.
Echo Press any key to close this window
Pause >nul
taskkill /f /im play.exe
EXIT & EXIT
Goto :EOF

:BETAWELCOME
%PLAY% %BETAWELCOME%
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID% [%V% (BUILD %BUILD%)]
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Welcome to Igtampe DOS %ID%, build %BUILD%!
Echo.
Echo Here's what's new:
Echo.
Echo	-Added Coinflip command
Echo	-Added Second layer of Crash Prevention on POSTPROG
Echo	-Added ADDTO and WRITETO workarounds for ^>^> and ^> respectively
Echo	-Updated RANDOM to randomize up to a specified value
Echo	-Updated IGTINF to say admin mode was enabled or disabled instead
Echo	 of 1 or 0 respectively
Echo	-Updated Applist with the SeparateWindow option
Echo	-Fixed bugs
Echo		-Error message when Defboot wasn't set properly
Echo		-Finally fixed DIS
Echo		-Fixed bug where IGTBIOS variable was never set
Echo.
Echo.
Echo.
Echo.
Echo Press any Key to close.
Pause >nul
EXIT & EXIT
Goto :EOF


:ASKSOS
cls
IF "%DEBUG%"=="1" Echo Found START.TMP, Must be Startup Error > %DEBUGDIR%
color 37
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Igtampe DOS Crashed during the Startup Procedure.
Echo.
Echo Perform an SOS Boot?
Set /p SOSASK=
IF "%SOSASK%"=="Y" Goto :SOS
Echo.
Echo Atempting to Start again.
goto :ASKSOSCONT

:HIBERE
IF "%DEBUG%"=="1" Echo Found HIBER.tmp. Must be Hibernation Error. > %DEBUGDIR%
Title Hibernation Error
cls
color 37
Echo There was an error Restoring from a Hibernation. Select a Choice:
Echo.
Echo [1.] Abandon Hibernation Data and Perform a Direct Boot.
Echo [2.] Atempt to Restore state Again.
Echo.
Set /p Q1=:
IF /i "%Q1%"=="1" goto :NOHRESTOR
Echo.
Echo Restoring Again...
IF "%DEBUG%"=="1" Echo Chose to Restore again. > %DEBUGDIR%
DEL HIBER.tmp
Goto :POSTHIBER

:NOHRESTOR
IF "%DEBUG%"=="1" Echo Chose to Abandon Hibernation Data > %DEBUGDIR%
Echo.
Echo Deleting Hiberfile
ATTRIB HIBER.bat -H
DEL HIBER.bat 
DEL HIBER.tmp
Echo Done, Direct Booting...
GOTO :PRE123

:POSTHIBER
%PLAY% %HIBREON%
IF "%DEBUG%"=="1" Echo Restoring from Hibernation > %DEBUGDIR%
Title Restoring from Hibernation...
mode con:cols=70 lines=25
Echo [%DATE% %TIME%] Restored from a Hibernation >> %LOGDIR%
ECHO.
ECHO.                        
ECHO.
Echo.
SET CONT=HLOGO
GOTO :LOGO
:HLOGO
Echo.
echo.
echo.
echo.
echo                      Restoring From Hibernation                   
echo.
echo.
echo.
echo.
If exist Hiber.tmp goto :HIBERE
IF "%DEBUG%"=="1" Echo Creating Temporary File... > %DEBUGDIR%
Echo HIBER > HIBER.tmp
IF "%DEBUG%"=="1" Echo Created, Seting Variables > %DEBUGDIR%
Call HIBER.bat
IF "%DEBUG%"=="1" Echo Set, Deleting Hibernation File... > %DEBUGDIR%
ATTRIB %RAWFD%\HIBER.bat -h
Del "%RAWFD%\Hiber.bat"
DEL "%RAWFD%\HIBER.tmp"
IF "%DEBUG%"=="1" Echo Deleted > %DEBUGDIR%
%ODRIVE%
cd %OD%
cls
IF "%DEBUG%"=="1" Echo Done Restoring, Going to Main Screen. > %DEBUGDIR%
Goto :Flash

:APPCRASH
cd..
Set DMP="%CD%\M.dmp"
cd DLLFILES
IF "%DEBUG%"=="1" Echo Found Memory Dump, Must be Crash. > %DEBUGDIR%
Title An Igtampe App DOS Crashed...
mode con:cols=70 lines=25
color 37
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo An Igtampe DOS app crashed. Sorry about that...
Echo.
Echo If you Closed Igtampe DOS while runing a command, this may have
Echo caused this.
Echo.
Echo This may be caused by an improperly coded PC1 App which failed to
Echo return to IGTAMPE DOS
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo Press any key to perform a direct boot
set APPCRASH=1
Pause >nul
if exist %DMP% del %DMP%
If exist Progfiletemp.dll del Progfiletemp.dll
Goto :APPCRASHCONT


:POSTCRASH
IF "%DEBUG%"=="1" Echo Found Memory Dump, Must be Crash. > %DEBUGDIR%
Title Igtampe DOS Crashed...
mode con:cols=70 lines=25
Echo %VER%|FIND /i "BETA" >nul
IF "%ERRORLEVEL%"=="0" goto :BetaPostCrash
color 37
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Igtampe DOS Crashed. Sorry about that...
Echo.
Echo if you Closed Igtampe DOS while runing a command, this may have
Echo caused this.
Echo.
Echo.
Echo.
Echo.
Echo Data Written to the Dump:
Echo.
TYPE M.dmp
Echo.
Echo Save this Dump?
Set /p Q1=
IF /i "%Q1%"=="Y" Goto :SAVEDMP
:SAVEDMPCONT
cd DLLFILES
If exist Progfiletemp.dll del Progfiletemp.dll
cd..
DEL %DMP%
Goto :PRE123

:SAVEDMP
Echo.
Set /p S=Save as: 
Echo.
Echo This is a Dump that was saved >> %S%
Echo. >> %S%
Type %DMP% >> %S%
Echo. >> %S%
Echo Computer: %COMPUTERNAME%, Windows %WIN% type %OS% >> %S%
goto :SAVEDMPCONT


:BetaPostCrash
color 37
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID% [%v%, %BUILD%]
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Igtampe DOS Crashed. Sorry about that...
Echo.
Echo if you Closed Igtampe DOS while runing a command, this may have
Echo caused this.
Echo.
Echo It has been noted that this is an Igtampe DOS BETA. If this was not
Echo caused by you, please report this DMP to Igtampe@gmail.com. It will
Echo be copied to %FD%\M-OLD.dmp 
Echo.
Echo Press any key to do a direct boot.
Echo.
Echo.
Echo Data Written to the Dump:
Echo.
TYPE M.dmp
Echo.
Pause >nul
cd DLLFILES
If exist Progfiletemp.dll del Progfiletemp.dll
cd..
Type %DMP% > "%FD%\M-OLD.dmp"
DEL %DMP%
Goto :PRE123


:POSTPROG
IF "%DMP%"=="" goto :APPCRASH
IF "%DEBUG%"=="1" Echo Found Program Temp. Returning... > %DEBUGDIR%
Title Found Program Return file, Returning...
DEL PROGFILETEMP.dll
IF /I "%CMD%"=="UPDATE" goto :POSTUPDATE
Echo [%TIME%] Returned to IGTAMPE DOS from %CMD% >> %logdir%
cd..
%ODRIVE%
cd %OD%
Echo.
goto :c

:SESSIONSTART
:START
%IGTDRIVE%
cd %FD%
color 07
title IGT BIOS [Version %IGTBIOS%]
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO.
echo                    ÛÛÛÛÛÛÛÛÛÛ ÛÛÛÛÛÛÛÛÛ  ÛÛÛÛÛÛÛÛÛÛ
echo                        ÛÛ     ÛÛ             ÛÛ
echo                        ÛÛ     ÛÛ             ÛÛ
echo                        ÛÛ     ÛÛ             ÛÛ
echo                        ÛÛ     ÛÛ   ÛÛÛÛÛ     ÛÛ
ECHO                        ÛÛ     ÛÛ______ÛÛ     ÛÛ
echo                    ÛÛÛÛÛÛÛÛÛÛ ÛÛÛÛÛÛÛÛÛÛ     ÛÛ
echo.
echo.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
IF "%DEBUG%"=="1" Echo IGTBIOS Version %IGTBIOS% Loaded. > %DEBUGDIR%
set /p B= Type D for Direct boot. Press Enter to Boot. 
Echo [Igtampe DOS] Begun Loading... > %NOTIFDIR%
IF "%DEBUG%"=="1" Echo Checking for need of OOBE  > %DEBUGDIR%
Title Loading Igtampe DOS
if not exist logs md logs
cd DLLFILES
IF not exist SYSFILE.dll goto :FIRSTLOAD
cd ..
if not exist Autoexec.bat Echo. >autoexec.bat
IF /i "%B%"=="D" Goto :PRE123
GOTO :LOAD

:SOS
IF "%DEBUG%"=="1" Echo Save Our Ship mode Activated. > %DEBUGDIR%
Title Igtampe DOS SOS MODE.
color 37
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Igtampe DOS SOS mode
Echo.
Echo.
Echo Type of Saving:
Echo.
Echo [1.] Backup made by the BACKUP Utility
Echo [2.] Igtampe DOS Installation Drive.
Echo.
Set /p SOS=
Goto :SOS%SOS%

:SOS1
cd apps
RESTORE SOS

:SOS2
cd apps
UPDATE SOS

:FIRSTLOAD          
IF "%DEBUG%"=="1" Echo OOBE Has not been Run > %DEBUGDIR%
Echo [%TIME%] Begun Setup Sequence >> %logdir%
color 37
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=SETUPLOGO
GOTO :LOGO
:SETUPLOGO
Echo.
echo. 
echo.
echo.
echo                              IGTAMPE DOS                   
echo.
echo.
echo.
echo.
IF "%DEBUG%"=="1" Echo Running OOBE. > %DEBUGDIR%
Echo WScript.Sleep 6000> M.vbs
M.vbs
Del M.vbs
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=SETUPLOGO1
GOTO :LOGO
:SETUPLOGO1
Echo.
echo.
echo.
echo.
echo                              IGTAMPE DOS                  
echo.
echo.
echo                 Please wait while we prepare the Setup...
echo               ÛÛÛÛÛÛÛÛÛÛÛฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbscls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=SETUPLOGO2
GOTO :LOGO
:SETUPLOGO2
Echo.
echo.
echo.
echo.
echo                              IGTAMPE DOS                  
echo.
echo.
echo                           Creating Folders...
echo               ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
IF NOT EXIST DLLFILES MD DLLFILES
IF NOT EXIST LOGS MD LOGS
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=SETUPLOGO3
GOTO :LOGO
:SETUPLOGO3
Echo.
echo. 
echo.
echo.
echo                              IGTAMPE DOS                  
echo.
echo.
echo                    Preparing to Run for the First Time
echo               ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
cls
ECHO.
ECHO.
ECHO.                        
Echo.
SET CONT=SETUPLOGO4
GOTO :LOGO
:SETUPLOGO4
Echo.
echo.
echo.
echo.
echo                              IGTAMPE DOS                  
echo.
echo.
echo                             Getting Ready
echo               ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
Echo WScript.Sleep 1000> M.vbs
M.vbs
Del M.vbs
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=SETUPLOGO5
GOTO :LOGO
:SETUPLOGO5
Echo.
echo.
echo.
echo.
echo                              IGTAMPE DOS                  
echo.
echo.
echo                             Getting Ready
echo               ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛฑฑฑฑฑฑฑฑฑฑฑ
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=SETUPLOGO6
GOTO :LOGO
:SETUPLOGO6
Echo.
echo.
echo.
echo.
echo                              IGTAMPE DOS                   
echo.
echo.
echo.
echo               ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
Echo WScript.Sleep 2000> M.vbs
M.vbs
Del M.vbs
CLS
cd %FD%
title IGTAMPE DOS SETUP
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
echo Welcome to Igtampe DOS.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Pause
CD DLLFILES
CLs
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Set /P NAME= Name of the User:
ECHO.
ECHO Registered to: %NAME% >>SYSFILE.dll
ECHO On %DATE% >>SYSFILE.dll
set /p  REGION= Region of Usage: 
Echo.
ECHO. >>SYSFILE.dll
Echo Registered in the Region: %REGION% >>SYSFILE.dll
IF "%DEBUG%"=="1" Echo Registration Complete: %NAME% Registered in %REGION%. > %DEBUGDIR%
cls
mode con:cols=70 lines=55
cd ..
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
TYPE TANDC.txt
ECHO.
Echo.
Set /P TANDC= Do you accept the Terms and conditions? (Y/N)? 
If /i "%TANDC%"== "N" goto :ERROR
CLs
mode con:cols=70 lines=25
CD DLLFILES
:FIRSTTHEME
Color 37
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Themes:
Echo The Color Scheme for IGT DOS Can be Later set using Command "THEME"
ECHO.
Echo B : Blue
Echo DB: Deep Blue
Echo R : Red
Echo G : Green
ECHO Y : Yellow
Echo P : Purple
Echo W : White
Echo D : Black (DEFFAULT)
ECHO M : Midnight
Echo T : Terminal
Echo MB: Mid Blue
Echo BR: Bright
Echo BS: BSOD
Echo L : Luna
Echo GR: Gray
Echo LA: Lava
Echo.
Set /p THEME=
If /I "%THEME%"=="C" Goto :FIRSTCUSTTHEME
If /I "%THEME%"=="L" ECHO color 70 >THEME.dll
If /I "%THEME%"=="GR" ECHO color 78 >THEME.dll
If /I "%THEME%"=="B" ECHO color 3B >THEME.dll
IF /I "%THEME%"=="DB" ECHO COLOR 19 >THEME.dll
IF /I "%THEME%"=="G" ECHO COLOR 2A >THEME.dll
IF /I "%THEME%"=="R" ECHO color 4C >THEME.dll
If /I "%THEME%"=="P" ECHO color 5D >THEME.dll
If /I "%THEME%"=="Y" ECHO color 6E >THEME.DLL
If /I "%THEME%"=="W" ECHO color 7F >THEME.dll
IF /I "%THEME%"=="D" ECHO color 07 >theme.dll
IF /I "%THEME%"=="M" ECHO color 01 >theme.dll
IF /I "%THEME%"=="T" ECHO color 0A >theme.dll
IF /I "%THEME%"=="MB" ECHO color 13 >theme.dll
IF /I "%THEME%"=="BR" ECHO color 7B >theme.dll
IF /I "%THEME%"=="BS" ECHO color 1F >theme.dll
IF /I "%THEME%"=="LA" ECHO color CE >theme.dll
GOTO :CUSTTHEMECONT

:FIRSTCUSTTHEME
CLS
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Color List:
Echo.
Echo 0 :Black    8 :Gray
Echo 1 :Blue     9 :Light Blue
Echo 2 :Green    A :Light Green
Echo 3 :Aqua     B :Light Aqua
Echo 4 :Red      C :Light Red
Echo 5 :Purple   D :Light Purple
Echo 6 :Yellow   E :Light Yellow
Echo 7 :White    F :Bright White
Echo.
Echo Background Color Followed by Text Color.
Echo (2A Produces Green Theme)
Echo.
Set /p ALSOCOLOR=
Color %ALSOCOLOR%
Echo.
Echo is This OK (Y/N)?
Set /p YN=
IF /i "%YN%"=="N" Goto :FIRSTTHEME
Echo color %ALSOCOLOR% >Theme.dll


:CUSTTHEMECONT
IF "%DEBUG%"=="1" Echo Wrote %COLOR% as Theme. > %DEBUGDIR%
CLS
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Options:
ECHO.
Echo Default Boot Directory:
Echo Where IGTAMPE DOS automatically Goes to After boot. Can be Later Set
Echo with the Command DEFBOOT. Type N for the Installation Directory.
Echo.
Echo Type it in a DOS Directory (Ex. %USERPROFILE%\Desktop).
Echo.
Set /p BOOTDIR=
If /I "%BOOTDIR%"=="N" Set BOOTDIR=%FD%
ECHO %BOOTDIR% > DEFBOOT.dll
IF "%DEBUG%"=="1" Echo Wrote Boot directory %BOOTDIR%. > %DEBUGDIR%
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
echo Congratulations! You have installed IGTAMPE DOS %V%!
ECHO.
Echo Please register by sending Your name to Igtampe@gmail.com
Echo.
Echo To recieve updates on IGTAMPE DOS, Also include a Note indicating so.
Echo.
echo.
echo IGTAMPE DOS will now Restart.
Echo WScript.Sleep 850> M.vbs
M.vbs
Del M.vbs
IF "%DEBUG%"=="1" Echo Completed OOBE, Restarting... > %DEBUGDIR%
cls
Echo Thank you for choosing IGTAMPE DOS
echo.
Echo                          -Mr. Igtampe
COLOR 0F
Echo WScript.Sleep 1500> M.vbs
M.vbs
Del M.vbs
Echo %V%|FIND /I "BETA"
If "%errorlevel%"=="0" goto :BETANOTE
color 37
color07
set S=R
Goto :RESTART

:BETANOTE
cls
Echo **SPECIAL NOTE**
Echo.
Echo Dear %USERNAME%,
echo.
echo This is an IGTAMPE DOS BETA. The program May have some bugs,
Echo especially with new features, so be cautious. Send Bug reports
echo to Igtampe@gmail.com for elimination of it.
Echo.
Pause
SET S=R
Goto :RESTART


:LOAD           
IF "%DEBUG%"=="1" Echo Begun Loading IGTAMPE DOS using Standard Setup Procedure. > %DEBUGDIR%
Echo [%TIME%] Begun loading IGTAMPE DOS >> %logdir%
Echo HI! > "%RAWFD%\START.tmp"
color 07
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=BOOTLOGO
GOTO :LOGO
:BOOTLOGO
Echo.
echo. 
echo.
echo.
Echo WScript.Sleep 5000> M.vbs
M.vbs
Del M.vbs
SET BLCOUNT=0
Echo WScript.Sleep 2> M.vbs

:BLS
IF "%BLCOUNT%"=="7" GOTO :ENDBLS
SET /a BLCOUNT=%BLCOUNT%+1
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=BOOTLOGO1
GOTO :LOGO
:BOOTLOGO1
Echo.
echo.
echo.
echo.
echo.
echo                                   /
M.vbs
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=BOOTLOGO2
GOTO :LOGO
:BOOTLOGO2
Echo.
echo.
echo.
echo.
echo.
echo                                   -
M.vbs
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=BOOTLOGO3
GOTO :LOGO
:BOOTLOGO3
Echo.
echo.
echo.
echo.
Echo.
echo                                   \
M.vbs
cls
ECHO.
ECHO.                        
ECHO. 
Echo.
SET CONT=BOOTLOGO4
GOTO :LOGO
:BOOTLOGO4
Echo.
echo.
echo.
echo.
echo.
echo                                   [
M.vbs
Goto :BLS

:ENDBLS
CLs
color 0F
Echo [%TIME%] Finished Startup >> %logdir%
IF "%DEBUG%"=="1" Echo Finished Startup. > %DEBUGDIR%
Echo WScript.Sleep 2500> M.vbs
M.vbs
Del M.vbs

:PRE123
Echo hi > START.tmp
IF "%DEBUG%"=="1" Echo Arrived at PRE123, Calling AutoExec.bat > %DEBUGDIR%
Echo [%TIME%] Calling Autoexec.bat >>%LOGDIR%
CLS
CD %FD%
CALL AUTOEXEC.bat
CLS
IF "%DEBUG%"=="1" Echo Finished, Loading the User Environment... > %DEBUGDIR%
Echo [%TIME%] We had a Great conversation. Anywho, Loading the User Environment >>%LOGDIR%
%PLAY% %ON%
cd %FD%
cd DLLFILES
SET /P COLOR=<THEME.dll
SET /p BOOTDIR=<DEFBOOT.dll
CD ..
IF EXIST %BOOTDIR% cd %BOOTDIR%
IF EXIST "%RAWFD%\START.tmp" DEL "%RAWFD%\START.tmp" >nul
IF "%DEBUG%"=="1" Echo Done, Flashing into Main Screen. > %DEBUGDIR%
Echo [Igtampe DOS] Igtampe DOS Is Ready. > %NOTIFDIR%
:flash
Color 78
Echo WScript.Sleep 500> M.vbs
M.vbs
if exist m.vbs Del M.vbs
Color F7
CLS
Echo %V%|Find "BETA" >nul
if "%ERRORLEVEL%"=="0" goto :BETAFLASH
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
Echo บ(C)2018 Igtampe, No rights reserved.
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Color 78
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
%COLOR%
Echo [%TIME%] Done loading the User Environment >>%LOGDIR%
Goto :C

:BETAFLASH
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID% [%V%.%BUILD%]
Echo บ(C)2018 Igtampe, No rights reserved.
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Color 78
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
%COLOR%
Echo [%TIME%] Done loading the User Environment >>%LOGDIR%
Goto :C


:123456789
if "%ARGLAUNCH%"=="1" Exit
cls
Echo %V%|Find "BETA" >nul
if "%ERRORLEVEL%"=="0" goto :BETA123
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID%
Echo บ(C)2018 Igtampe, No rights reserved.
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Goto :C

:BETA123
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS %ID% [%V%.%BUILD%]
Echo บ(C)2018 Igtampe, No rights reserved.
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

:C
if "%ARGLAUNCH%"=="1" Exit
SET ARG=
SET ARG1=
SET ARG2=
SET ARG3=
SET ARG4=
SET ARG5=
SET ARG6=
SET ARG7=
SET ARG8=
IF NOT EXIST "%RAWFD%\DLLFILES\WELCOME" Goto :STARTWELCOME
SET ACE=0
IF "%DEBUG%"=="1" Echo Awaiting Command. > %DEBUGDIR%
IF EXIST %DMP% DEL %DMP%
Title Igtampe DOS %ID%
%COLOR%
@echo.
Set /p C= %cd%\\
IF "%DEBUG%"=="1" Echo Checking Command... > %DEBUGDIR%
Echo The User inputted an Invalid Carachter. > %DMP%
SET CMD=%C:"=%
IF /i "%CMD%"=="%COLD%" Goto :RERUN
:RERUNCONT
set RUNTIME=%TIME:~6, -3%
SET COLD=%CMD%
IF "%DEBUG%"=="1" Echo Running ACE. > %DEBUGDIR%
Echo Igtampe DOS Crashed while running the At Command Executable. > %DMP%
CALL "%RAWFD%\ACE.bat"
IF "%ACE%"=="1" goto :C
Echo Igtampe DOS Crashed under the Command %CMD% > %DMP%
IF "%DEBUG%"=="1" Echo No Problems with Command %CMD%, Interpretting as Internal Command. > %DEBUGDIR%
%VERTO% %C%
If /i "%C%"=="Set Debug=1" goto :STARTDEBUG
If /i "%C%"=="Set Debug=0" goto :ENDDEBUG
If /i "%CMD%"== "Coinflip" Goto :CFLIP
If /i "%CMD%"== "IUC" Goto :IUC
If /i "%CMD%"== "NABAS" Goto :SAFEGUARD
If /i "%CMD%"== "ACE" Goto :SAFEGUARD
If /i "%CMD%"== "VERTO" Goto :SAFEGUARD
If /i "%CMD%"== "AUTOEXEC" Goto :SAFEGUARD
If /i "%CMD%"== "Welcome" Goto :STARTWELCOME
If /i "%CMD%"== "123" GOTO :LADYBUG
If /i "%CMD%"== "NOTIFCLS" Goto :NOTIFCLS
If /i "%CMD%"== "SHRTCTMAN" GOTO :SHRTCTMAN
If /i "%CMD%"== "BLOG" GOTO :BLOG
If /i "%CMD%"== "WWW" goto :WWW
If /i "%CMD%"== "LOGMANAGE" goto :LOGMANAGE
If /I "%CMD%"== "CRASH" goto :CRASH
If /I "%CMD%"== "Intermission" Goto :INTER
If /I "%CMD%"== "MAXOVERDRIVE" goto :SCR
If /I "%CMD%"== "ADJUST" Goto :Adjust
IF /I "%CMD%"== "DEFBOOT" goto :DEFBOOT
IF /I "%CMD%"== "IGTINF" goto :IGTINF
IF /I "%CMD%"== "CLS" Cls & Goto :123456789
If /I "%CMD%"== "HELP" GOTO :HELP
If /I "%CMD%"== "THEME" GOTO :THEME
IF /I "%C%"== "SHUT UP!" Goto :SUP!
If /i "%CMD%"== "SLOTS" goto :Slots
If /i "%CMD%"== "RANDOM" goto :r
If /i "%CMD%"== "SHUTDOWN" goto :SCHOICE
If /i "%CMD%"== "EXIT" goto :EXIT
IF /i "%CMD%"== "APPLIST" goto :1
IF /i "%CMD%"== "TIME" goto :TIME
IF /I "%CMD%"== "VER" goto :VER
if /i "%CMD%"== "TANDC" goto :TANDC
If /i "%CMD%"== "1492" goto :1492
if /i "%CMD%"== "Something" goto :Something
if /i "%CMD%"== "IGTAMPE" goto :IGTAMPE
If /i "%CMD%"== "UPDATE" GOTO :UPDATE
If /i "%CMD%"== "*" goto :STAR
If /i "%CMD%"== "?" goto :?
If /i "%CMD%"== "Notif" goto :Notif
IF /i "%C%"== "I AM THE ALPHA MALE" goto :ALPHAMALE
IF /i "%CMD%"== "%V%" goto :VERSECRET
IF /i "%CMD%"== "%ID%" goto :VERSECRET
IF /i "%CMD%"== "%BUILD%" goto :VERSECRET
IF /i "%CMD%"== "RANDOMIZE" goto :RANDOMIZE
IF /i "%CMD%"== "WRITETO" goto :WT
IF /i "%CMD%"== "WT" goto :WT
IF /i "%CMD%"== "ADDTO" goto :AT
IF /i "%CMD%"== "AT" goto :AT
IF /i "%CMD%"== "SNDOPTIONS" GOTO :SNDOPTIONS
IF /i "%CMD%"== "RELOAD" GOTO :RELOAD
IF "%DEBUG%"=="1" Echo Not Recognized as Internal Command, Interpreting as Shortcut or App > %DEBUGDIR%
IF /i "%CMD%"== "SAY" GOTO :SPEAK
IF EXIST "%RAWFD%\APPS\SHRTCT\%C%.bat" goto :LAUNCHSHRTCT
Set OD="%CD%"
cd\
Set ODRIVE=%CD:\=%
%IGTDRIVE%
cd %FD%
cd APPS
If EXIST "%CMD%.bat" goto :APPLAUNCHER
%ODRIVE%
cd %OD% 
IF "%DEBUG%"=="1" Echo Not Recognized as Shortcut or app, Interpreting as Windows Command. > %DEBUGDIR%
%C%
If NOT "%CMD%"=="" Echo [%TIME%] Ran the command %CMD%. >> %logdir%
goto :C

:WT
IF "%ARG1%"=="" goto :ATHelp1
IF "%ARG2%"=="" goto :ATHelp2
IF "%DEBUG%"=="1" Echo Writing a file... > %DEBUGDIR%
set WTC=%ARG2%
IF NOT "%ARG3%"=="" set WTC=%WTC% %ARG3%
IF NOT "%ARG4%"=="" set WTC=%WTC% %ARG4%
IF NOT "%ARG5%"=="" set WTC=%WTC% %ARG5%
IF NOT "%ARG6%"=="" set WTC=%WTC% %ARG6%
IF NOT "%ARG7%"=="" set WTC=%WTC% %ARG7%
IF NOT "%ARG8%"=="" set WTC=%WTC% %ARG8%
Echo Executing "%WTC%" and writing to %CD%\%ARG1%
%WTC% > %ARG1%
If NOT "%CMD%"=="" Echo [%TIME%] Ran the command %CMD%. >> %logdir%
goto :C

:AT
IF "%ARG1%"=="" goto :ATHelp1
IF "%ARG2%"=="" goto :ATHelp2
IF "%DEBUG%"=="1" Echo Adding to a file... > %DEBUGDIR%
set WTC=%ARG2%
IF NOT "%ARG3%"=="" set WTC=%WTC% %ARG3%
IF NOT "%ARG4%"=="" set WTC=%WTC% %ARG4%
IF NOT "%ARG5%"=="" set WTC=%WTC% %ARG5%
IF NOT "%ARG6%"=="" set WTC=%WTC% %ARG6%
IF NOT "%ARG7%"=="" set WTC=%WTC% %ARG7%
IF NOT "%ARG8%"=="" set WTC=%WTC% %ARG8%
Echo Executing %WTC% and adding to to %CD%\%ARG1%
%WTC% >> %ARG1%
If NOT "%CMD%"=="" Echo [%TIME%] Ran the command %CMD%. >> %logdir%
GOTO :C

:ATHelp1
Echo Need a target file!
goto :C

:ATHelp2
Echo Need a command to execute!
Goto :C

:SAFEGUARD
IF "%DEBUG%"=="1" Echo %CMD% is an IGTAMPE DOS Component. Activating Safeguard > %DEBUGDIR%
Echo.
Echo %CMD% is an internal Igtampe DOS component.
Echo Igtampe DOS already manages these subsystems.
Echo using this command WILL result in a crash.
Echo For this reason, the safeguard has been activated.
Echo.
Goto :C


:RELOAD
Echo.
Set OD="%CD%"
cd\
Set ODRIVE=%CD:\=%
%IGTDRIVE%
cd %FD%
Echo Please wait, Igtampe DOS is reloading....
IF "%DEBUG%"=="1" Echo IGTAMPE DOS is RELOADING > %DEBUGDIR%
Echo [%TIME%] Igtampe DOS reloading begins. >> %logdir%
Echo EXIT> %NOTIFDIR%
SET RELOAD=1
Goto :Reload1
:reload2
Echo Igtampe DOS has reloaded successfully
goto :C


:STARTDEBUG
Set DEBUG=1
Echo Debug Enabled
SET OD=%CD%
CD\
SET ODRIVE=%CD:\=%
%IGTDRIVE%
CD %FD%
START NABAS DEBUGONLY
%ODRIVE%
CD %OD%
Goto :C

:ENDDEBUG
SET DEBUG=0
Echo Debug Has been disabled. Close This Window. >> %DEBUGDIR
goto :C

:IUC
SET OD=%CD%
cd\
SET ODRIVE=%CD:\=%
%IGTDRIVE%
CD %FD%
Echo your Build is %BUILD%
DOWNLOAD http://igtdos.yolasite.com/resources/CURRENT.txt "%CD%\IUC.tmp"
IF NOT EXIST IUC.tmp GOTO :NOINT
TYPE IUC.tmp|FIND /i "CURRENTREGULARBUILD" > OTHERIUC.tmp
Echo %V%|FIND /i "BETA"> NUL
IF "%ERRORLEVEL%"=="0" SET BETA=1
IF "%BETA%"=="1" TYPE IUC.tmp|FIND /i "CURRENTBETA" > OTHERIUC.tmp
SET /p IUC=<OTHERIUC.tmp
DEL IUC.tmp
DEL OTHERIUC.tmp
IF "%IUC%"=="" Goto :CORRUPTDOWN
SET IUC=%IUC:CURRENTREGULARBUILD:=%
IF "%BETA%"=="1" SET IUC=%IUC:CURRENTBETABUILD:=%
Echo The Online Build is %IUC%
IF "%BUILD%"=="%IUC%" Goto :UPTODATE
SET /a CHECK=%BUILD%-%IUC%
Echo %CHECK%|FIND "-" >nul
IF "%ERRORLEVEL%"=="0" Goto :UPDATE
Echo.
Echo You're version number is somehow higher than the online posted highest.
IF "%COMPUTERNAME%"=="IGTAMPE-PC" GOTO :OKHIGHER
IF "%COMPUTERNAME%"=="HERMES" GOTO :OKHIGHER
IF "%COMPUTERNAME%"=="KRATOS" GOTO :OKHIGHER
Echo You Aren't Igtampe, so That's just even weirder. Have you been Modifying?
Pause >nul
%ODRIVE%
cd %OD%
Goto :Flash

:OKHIGHER
Echo Oh Hi Igtampe!
Pause >nul
%ODRIVE%
cd %OD%
Goto :flash

:UPDATE
Echo An Update is available.
IF "%BETA%"=="1" Goto :BETAUPDATE
DOWNLOAD http://igtdos.yolasite.com/resources/CurrentRegular.iso "%RAWD%\UPDATE.iso"
Echo Update has been downloaded.
START %RAWD%\UPDATE.iso
Echo If the ISO Is not mounted already, Mount it to let NABAS Find it and update acordingly
Pause >nul 
%ODRIVE%
cd %OD%
Goto :FLASH

:BETAUPDATE
DOWNLOAD http://igtdos.yolasite.com/resources/CURRENTBETA.iso "%CD%\UPDATE.iso"
Echo Update has been downloaded.
START %CD%\UPDATE.iso
Echo If the ISO Is not mounted already, Mount it to let NABAS Find it and update acordingly
Pause >nul 
%ODRIVE%
cd %OD%
Goto :FLASH

:UPTODATE
Echo Up To Date!
Pause >nul
%ODRIVE%
cd %OD%
Goto :FLASH

:CORRUPTDOWN
Echo Your Download was corrupted. Sorry.
Pause >nul
%ODRIVE%
cd %OD%
Goto :FLASH

:NOINT
Echo No Internet to check your Version, Or some other error.
Pause >nul
%ODRIVE%
cd %OD%
Goto :FLASH


:SPEAK
IF "%ARG1%"=="" Goto :SPEAKHELP
%SAY% "%ARG%"
Goto :C

:SPEAKHELP
Echo USAGE: Say [TEXT]
Goto :C

:NOTIFCLS
Echo CLEAR> %NOTIFDIR%
Goto :C

:SNDOPTIONS
Echo.
Echo Sound Options:
Echo.
Echo [1.] Hear a current sound
Echo [2.] Set a new sound
Echo [3.] Exit
Echo.
Set /p C=:
IF "%C%"=="1" Goto :SNDOPTIONSHEAR
IF "%C%"=="2" GOTO :SNDOPTIONSSET
Echo.
Goto :C

:SNDOPTIONSHEAR
Echo.
Echo Hear what sound?
Echo.
Echo [1.] ON
Echo [2.] OFF
Echo [3.] HIBERON
Echo [4.] HIBEROFF
Echo [5.] SLEEP
Echo [6.] WAKEUP
Echo.
Set /p C=:
IF "%C%"=="1" %PLAY% %ON%
IF "%C%"=="2" %PLAY% %OFF%
IF "%C%"=="3" %PLAY% %HIBREON%
IF "%C%"=="4" %PLAY% %HIBREOFF%
IF "%C%"=="5" %PLAY% %SLEEPSND%
IF "%C%"=="6" %PLAY% %WAKEUP%
goto :SNDOPTIONS

:SNDOPTIONSSETERROR
Echo That sound does not exist!
Echo.
:SNDOPTIONSSET
Echo.
Echo Select a .wav file
Set /p FILE=
Echo.
IF NOT EXIST "%FILE%" Goto :SNDOPTIONSSETERROR
Echo.
Echo Replace Which sound?
Echo.
Echo [1.] ON
Echo [2.] OFF
Echo [3.] HIBERON
Echo [4.] HIBEROFF
Echo [5.] SLEEP
Echo [6.] WAKEUP
Echo.
Set /p C=:
IF "%C%"=="1" TYPE %FILE% > %ON%
IF "%C%"=="2" TYPE %FILE% > %OFF%
IF "%C%"=="3" TYPE %FILE% > %HIBREON%
IF "%C%"=="4" TYPE %FILE% > %HIBREOFF%
IF "%C%"=="5" TYPE %FILE% > %SLEEPSND%
IF "%C%"=="6" TYPE %FILE% > %WAKEUP%
goto :SNDOPTIONS

:STARTWELCOME
Echo hello!> "%RAWFD%\DLLFILES\WELCOME"
Set OD="%CD%"
Set OD="%CD%"
CD\
Set ODRIVE=%CD:\=%
%IGTDRIVE%
CD %FD%
START IGT.bat WELCOME
%ODRIVE%
CD %OD%
goto :C
Goto :C

:Notif
Echo [%TIME%] Sent a Notif to NABAS. >> %logdir%
Echo %ARG% > %NOTIFDIR%
Goto :C

:RANDOMIZE
Echo [%TIME%] Found a Secret! Secret: Randomize >> %logdir%
Echo.
Echo WARNING
Echo.
Echo You have found the secret: RANDOMIZE. This secret may cause SEIZURES.
Echo.
Echo Type randomize again to see this secret
set /p c=
IF /i "%C%"=="RANDOMIZE" Goto :RealRandomize
goto :C

:RealRandomize
Set /a R=%R%+1
IF "%R%"=="200" goto :REALRANDOMIZEEND
TITLE %W% X %H%, %C%%A%
set /a "W=%random% %% 200" >nul
set /a "H=%random% %% 120" >nul
Mode Con: Cols=%W% Lines=%H%
set /a "C=%random% %% 9" >nul
set /a "A=%random% %% 9" >nul
Color %C%%A%
Goto :REALRANDOMIZE

:REALRANDOMIZEEND
Mode con: lines=25 cols=70
SET R=0
Color 1F
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
echo                               [IGTAMPE DOS]
echo.
echo    IGTAMPE DOS Has suffered a fatal Error
echo    IGTAMPE DOS cannot handle how tripy that was.
echo.
ECHO   *  Press enter to try to return to IGTAMPE DOS.
echo   *  type CTRL-C to Force Shutdown IGTAMPE DOS
echo.
echo    ERROR : OHGODTHEACID'SKICKINGIN : AHHHHHHH
echo.
echo.
ECHO.
ECHO                       Press any key to continue
ECHO.
ECHO.
ECHO.
Echo.
Echo.
Pause >nul
Goto :SECRET!


:RERUN
set RERUNTIME=%TIME:~6,-3%
If NOT "%RUNTIME%"=="%RERUNTIME%" GOTO :RERUNCONT
SET C=
GOTO :C

:VERSECRET
IF "%DEBUG%"=="1" Displaying this Version's Thing. > %DEBUGDIR%
Echo [%TIME%] Found a Secret! Secret: Version thing >> %logdir%
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
ECHO.
Echo.
SET CONT=SCRTLOGO
GOTO :LOGO
:SCRTLOGO
Echo.
echo.
echo                             Igtampe DOS NT
echo                                  9.1
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
Echo WScript.Sleep 9000> M.vbs
M.vbs
Del M.vbs
goto :Secret!


:LADYBUG
IF "%DEBUG%"=="1" Echo Loaded Secret At the Ladybug picnick. > %DEBUGDIR%
Echo [%TIME%] Found a Secret! Secret: At the Ladybug Picnick! >> %logdir%
Echo.
Echo One, two, three
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Echo Four, Five Six
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Echo Seven, Eight, Nine
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Echo Ten, Eleven, Twelve
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Echo And they all had fun
Echo WScript.Sleep 1000> M.vbs
M.vbs
Del M.vbs
Echo At the Lady Bug Picnick
Echo WScript.Sleep 3500> M.vbs
M.vbs
Del M.vbs
goto :Secret!

:LAUNCHSHRTCT
IF "%DEBUG%"=="1" Echo Recognized as Shortcut, Launching... > %DEBUGDIR%
Echo.
Echo [%TIME%] Used the Shortcut %C% >> %LOGDIR%
Echo Igtampe DOS Crashed while using the Shortcut "%C%" > %DMP%
CALL "%RAWFD%\APPS\SHRTCT\%C%.bat"
Goto :C

:SHRTCT
IF "%DEBUG%"=="1" Echo Creating a Shortcut... > %DEBUGDIR%
Echo Igtampe DOS Crashed while Creating a Shortcut. > %DMP%
Echo Most likely, the User inputted a bad command. >> %DMP%
Echo.
Echo What will be the Nickname of this Shortcut?
Set /p SNAME=
:SHORTCUT
Echo What command to create a shortcut for?
Set /p S=
Echo %S%>> "%RAWFD%\APPS\SHRTCT\%SNAME%.bat"
Echo.
Echo Add another Line (Y/N)?
Set /p CONT=
IF /i "%CONT%"=="Y" Goto :SHORTCUT
Echo.
Echo Writing...
Echo Written!
Echo.
Echo Do you wish to learn about ShortCuts (Y/N)?
Set /p QS=
IF "%QS%"=="Y" goto :SHRTCTABT
Goto :C

:SHRTCTMAN
IF "%DEBUG%"=="1" Echo Loaded the Shortcut command... > %DEBUGDIR%
Echo Igtampe DOS Crashed while running the Shortcut Manager > %DMP%
Echo.
Echo Here is a List of the Programed Shortcuts:
DIR /b "%RAWFD%\APPS\SHRTCT\*.bat"
Echo.
Echo What to Do?
Echo.
Echo 1: Create a Shortcut
Echo 2: Delete a Shortcut
Echo 3: About Shortcuts
Echo 4: Exit
Echo.
Set /p QS=
IF "%QS%"=="1" Goto :SHRTCT
IF "%QS%"=="2" Goto :SHRTCTDEL
IF "%QS%"=="3" Goto :SHRTCTABT
IF "%QS%"=="4" Goto :C
Goto :SHRTCTMAN

:SHRTCTABT
IF "%DEBUG%"=="1" Echo Learning about Shortcuts... > %DEBUGDIR%
Echo.
Echo Shortcuts are a one command string which can be triggered using an
echo Associated nickname from the Main Screen. They will be ran from the 
Echo directory it is Launched in. Multiple Command strings
Goto :C

:SHRTCTELERROR
IF "%DEBUG%"=="1" Echo ERROR: SHORTCUT DOES NOT EXIST > %DEBUGDIR%
Echo.
Echo That Shortcut does not exist!
:SHRTCTDEL
IF "%DEBUG%"=="1" Echo Deleting a Shortcut > %DEBUGDIR%
Echo.
Echo What shortcut to delete?
set /p SD=
IF NOT EXIST "%RAWFD%\APPS\SHRTCT\%SD%.bat" goto :SHRTCTELERROR
Echo.
Echo Deleting...
DEL "%RAWFD%\APPS\SHRTCT\%SD%.bat"
Echo Deleted!
Echo.
Goto :C

:BLOG
IF "%DEBUG%"=="1" Echo Launching the Blog... > %DEBUGDIR%
Echo.
Echo Launching the Igtampe DOS Blog
Start HTTP://Igtdos.blogspot.com/
Echo.
Goto :C


:WWW
IF "%DEBUG%"=="1" Echo Launching the Website... > %DEBUGDIR%
Echo.
Echo Launching the Igtampe DOS Website.
Start http://igtdos.yolasite.com/
Echo.
Goto :C

:ALPHAMALE
IF "%DEBUG%"=="1" Echo Loaded Secret ALPHAMALE > %DEBUGDIR%
Echo No, I am the Alpha male!
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Echo Hey! I am the Alpha Male!
Echo WScript.Sleep 2500> M.vbs
M.vbs
Del M.vbs
Goto :Secret!

:STAR
IF "%DEBUG%"=="1" Echo WARN: %CMD%=*, DISPLAYING FAKE INTERPRETATION ERROR. > %DEBUGDIR%
Echo '*' is not recognized as an internal or external command,
Echo operable program or batch file.
goto :C

:LOGMANAGE
IF "%DEBUG%"=="1" Echo Logmanager Loaded... > %DEBUGDIR%
Color 87
Echo Logfile Manager [Version 1.0]

:L
Echo.
Set /p L=:
Echo.
If /i "%L%"=="TYPE" Goto :LTYPE
If /i "%L%"=="HELP" Goto :LHELP
If /i "%L%"=="WRITE" Goto :LWRITE
If /i "%L%"=="DEL" GOTO :LDEL
IF /i "%L%"=="CHECK" GOTO :LCHECK
IF /i "%L%"=="EXIT" GOTO :C
Echo "%L%" isn't a LogFile Manager Command.
Echo Type HELP for help.
goto :L

:LTYPE
IF "%DEBUG%"=="1" Echo Typing Logfile... > %DEBUGDIR%
mode con:cols=90 lines=999999
Echo Here is the Logfile:
Echo.
TYPE %LOGDIR%
Pause >nul
mode con:cols=70 lines=25
Goto :L

:LDEL
Echo Delete the Logfile (Y/N)?
Set /p Q=
If /i "%Q%"=="Y" goto :LDEL1
GOTO :LOGMANAGE

:LDEL1
IF "%DEBUG%"=="1" Echo Reseting Logfile... > %DEBUGDIR%
Echo OK. 
DEL %LOGDIR%
Echo Reset the Logfile on %DATE%, %TIME%. >> %LOGDIR%
Echo The logfile has been Reset.
Goto :l

:LWRITE
Echo Write What?
Set /p WRITE=
Echo %WRITE% >> %LOGDIR%
Goto :L

:LHELP
Echo Logfile Manager [Version 1.0]
Echo.
Echo CHECK     Checks File
Echo DEL       Resets File
ECHO EXIT      Exits the LogFile Manager
ECHO TYPE      Reads the Logfile
ECHO WRITE     Writes to File
Goto :L

:LCHECK
IF "%DEBUG%"=="1" Echo Checking the Logfile... > %DEBUGDIR%
ECho Here is the Information on the File
DIR %LOGDIR%
Goto :L

:CRASH
IF "%DEBUG%"=="1" Echo Loaded Secret MANDATEDCRASH... > %DEBUGDIR%
cls
Echo [%TIME%] Found a Secret! Secret: Crash >> %logdir%
Color 1F
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
echo                               [IGTAMPE DOS]
echo.
echo    IGTAMPE DOS Has suffered a fatal Error
echo    Mandated Crash was executed.
echo.
ECHO   *  Press enter to try to return to IGTAMPE DOS.
echo   *  type CTRL-C to Force Shutdown IGTAMPE DOS
echo.
echo    ERROR : MANDATEDCRASH : USERMANDATED
echo.
echo.
ECHO.
ECHO                       Press any key to continue
ECHO.
ECHO.
ECHO.
Echo.
Echo.
Pause >nul
Goto :SECRET!


:INTER
IF "%DEBUG%"=="1" Echo Begun the Intermission... > %DEBUGDIR%
Echo [%TIME%] Found a Secret! Secret: Intermission >> %logdir%
cls
Color 2F
ECHO *********************************************************************
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                           [INTERMISSION]                          *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
ECHO *                                                                   *
echo *********************************************************************
Echo WScript.Sleep 5000> M.vbs
M.vbs
Del M.vbs
Goto :SECRET!

:SCR
Echo Are you sure you want to engage Maximum Overdrive (Y/N)?
Set /P Q1=
If /I "%Q1%"=="N" goto :C
IF "%DEBUG%"=="1" Echo Engaged the Maximum Overdrive Secret... > %DEBUGDIR%
Echo Maximum Overdrive engaged. Be careful.
Echo [%TIME%] Found a Secret! Secret: MAXIMUM OVERDRIVE!!! >> %logdir%
Echo.
Set /P FAKEC=%CD%\\
ECHO MAXIMUMLY EXECUTING %FAKEC%!!!!
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Mode Con:Cols=70 Lines=70
Color 01
Mode Con:Cols=90 Lines=80
Mode Con:Cols=100 Lines=100
Mode Con:Cols=15 Lines=15
Color F7
Mode Con:Cols=20 Lines=50
color F9
Mode Con:Cols=70 Lines=50
color F0
color A0
color B0
Mode Con:Cols=100 Lines=100
color C0
color D0
color E0 
Mode Con:Cols=70 Lines=25
color F0
color A0
color B0
color D0
color F0
%FAKEC%
Echo.
Set /P FAKEC=%CD%\\
cls
Color 1F
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
echo                               [IGTAMPE DOS]
echo.
echo    IGTAMPE DOS Has suffered a fatal Error
echo    I knew I should have gotten the turbo...
echo.
ECHO   *  Press enter to try to return to IGTAMPE DOS.
echo   *  type CTRL-C to Force Shutdown IGTAMPE DOS
echo.
echo    ERROR : MAXOVER : SUCH AWESOME : MUCH CRASH : WOW
echo.
echo.
ECHO.
ECHO                       Press any key to continue
ECHO.
ECHO.
ECHO.
Echo.
Echo.
Pause >nul
Goto :SECRET!

:Adjust
IF "%DEBUG%"=="1" Echo Loaded the Secret ADJUST... > %DEBUGDIR%
Echo [%TIME%] Found a secret! Secret: Adjust >> %logdir%
Echo Please wait while Igtampe DOS Adjust Resolution.
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
mode con:cols=15 lines=10
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
mode con:cols=30 lines=20
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
mode con:cols=45 lines=30
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
mode con:cols=60 lines=40
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
mode con:cols=75 lines=50
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
mode con:cols=100 lines=100
Mode con:Cols=70 Lines=25
Echo Igtampe Dos Has callibrated Resolution. Please wait While it calibrates color
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Color F0
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Color A0
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Color B0
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Color C0
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Color D0
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Color E0
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
%color%
Echo Color Calibrated.
Echo WScript.Sleep 1500> M.vbs
M.vbs
Del M.vbs
Goto :Secret!

:DEFBOOT
IF "%DEBUG%"=="1" Echo Seting a New Default Boot Directory... > %DEBUGDIR%
Echo [%TIME%] Set a New Default Boot Directory >> %logdir%
Set OD=%CD%
cd\
SET ODRIVE=%CD:\=%
%IGTDRIVE%
CD %FD%
CD DLLFILES
IF "%ARG1%"=="" Goto :DEFBOOTHELP
If /I "%ARG1%"=="N" Set BOOTDIR=%FD%
Echo %ARG1% > DEFBOOT.dll
%ODRIVE%
CD %OD%
goto :C

:DEFBOOTHELP
Echo USAGE: Defboot [NEW BOOT DIR]
Echo.
Echo Type N for the Install Directory
Goto :C

:IGTINF
cls
IF "%DEBUG%"=="1" Echo Loaded the IGTAMPE DOS INFORMATION PAGE > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Looked at Igtampe Dos Information >> %logdir%
if "%ADMIN%"=="1" set ADMINSTATUS=Enabled
if "%ADMIN%"=="0" set ADMINSTATUS=Disabled
ECHO ษอออออออออออออออออออออออป
Echo บIGTAMPE DOS INFORMATIONบ
Echo ศอออออออออออออออออออออออผ
Echo.
Echo ษอออออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออออออออ
Echo บIGTAMPE DOS            บ %ID%
Echo บVersion                บ %V%
Echo บBuild                  บ %BUILD%
Echo บSource Code Version    บ 4.0
Echo บFile Structure version บ 5.1
Echo บIGT BIOS Version       บ %IGTBIOS%
Echo บ                       บ
Echo บRunning on             บ %COMPUTERNAME%
Echo บOpened by              บ %USERNAME%
Echo บOn Windows             บ %WIN%
Echo บAdmin Mode             บ %ADMINSTATUS%
Echo ศอออออออออออออออออออออออสออออออออออออออออออออออออออออออออออออออออออออ
Pause >nul
cls
if "%ARGLAUNCH%"=="1" Exit
goto :123456789

:HELP
IF "%DEBUG%"=="1" Echo Loaded the Help System... > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launched the Help Utility >> %logdir%
mode con:cols=70 lines=163
Help
Echo ษอออออออออออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออ
Echo บIGTAMPE DOS INTERNAL COMMANDSบ
Echo ศอออออออออออออออออออออออออออออผ
Echo. 
Echo ADDTO     : A workaround for the ^>^> operation (Or AT)
ECHO ?         : About Page
Echo APPLIST   : Application List in the folder "APPS" in %FD%
Echo COINFLIP  : Flips a Coin
Echo BLOG      : Igtampe DOS Blog
Echo DEFBOOT   : Deffault Boot Directory chooser.
ECHO IGTINF    : Igtampe DOS Information
ECHO IUC       : Internet Update Checker For IGTDOS
ECHO LOGMANAGE : LogFile Manager
Echo NOTIF     : Notification sender for NABAS
Echo NOTIFCLS  : Clears NABAS Screen
Echo RANDOM    : Random Number Generator
Echo RELOAD    : Quick reboots the system (including NABAS, and Variables)
Echo SAY       : Use the SAPI engine to speak
Echo SHRTCTMAN : ShortCut Manager
Echo SNDOPTIONS: Options for the sounds
ECHO SHUTDOWN  : SHUT DOWN IGTAMPE DOS
ECHO TANDC     : Terms and Conditions
ECHO THEME     : Theme Editor
Echo Time      : Time Utility
Echo VER       : Igtampe DOS Version
Echo WWW       : Igtampe DOS Website
Echo WRITETO   : A workaround for the ^> operation (or WT)
Echo.
Echo ษอออออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออ
Echo บCOMMANDS THAT USE VERTOบ
Echo ศอออออออออออออออออออออออผ
Echo.
Echo ADDTO     : ADDTO [FILE] [Command]
Echo APPLIST   : APPLIST (SeparateWindow)
Echo DEFBOOT   : DEFBOOT [New Boot Directory]
Echo NOTIF     : NOTIF [Notification]
Echo SAY       : SAY [Text]
ECHO THEME     : THEME [Color Code] (Custom Color Code)
ECHO SHUTDOWN  : SHUTDOWN [Shutdown Code]
Echo RANDOM    : RANDOM [Max Value]
Echo WRITETO   : WRITETO [FILE] [Command]
Pause >NUL
mode con:cols=70 lines=25
GOTO :123456789

:OLDARG
SET ARG=%ARG%
goto :LAUNCHER

:APPLAUNCHER
IF "%DEBUG%"=="1" Echo Recognized as an App > %DEBUGDIR%
DEL %DMP%
Type %CMD%.bat|FIND "::ARGCOMPATIBLE" >NUL
If "%ERRORLEVEL%"=="0" Goto :OLDARG
Type %CMD%.bat|FIND "::OLDARG" >NUL
If "%ERRORLEVEL%"=="0" Goto :OLDARG
Type %CMD%.bat|FIND "::IGTDOSAPP" >NUL
If "%ERRORLEVEL%"=="0" Goto :LAUNCHER
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launched %CMD%.bat >> %logdir%
IF "%DEBUG%"=="1" Echo App %CMD% is not an IGTAMPE DOS APP, Calling as Regular Batch file. > %DEBUGDIR%
Echo The App %CMD% Crashed > %DMP%
CALL %CMD%.bat
DEL %DMP%
%ODRIVE%
CD %OD%
goto :C

:UPDATE
IF "%DEBUG%"=="1" Echo Begun Loading Sequence > %DEBUGDIR%
Set OD=%CD%
cd\
SET ODRIVE=%CD:\=%
%IGTDRIVE%
cd %FD%
cd APPS
Set V-OLD=%V%
SET BUILD-OLD=%BUILD%

:LAUNCHER
IF "%DEBUG%"=="1" Echo Launching the app %CMD% > %DEBUGDIR%
cd ..
cd DLLFILES
Echo %CMD% > PROGFILETEMP.dll
CD ..
CD APPS
echo.
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launched %CMD%.bat With the Arguement %ARG%>> %logdir%
%cMD%.bat
Echo There was an Error Launching %CMD%.bat.
Echo There was an Error launching %CMD%.bat. >> %LOGDIR% 
cd ..
cd DLLFILES
DEL PROGFILETEMP.dll
%ODRIVE%
CD %OD%
Goto :C

:THEME
IF "%DEBUG%"=="1" Echo Theme Selector loaded. > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launched Theme Utility >> %logdir%
Set OD="%CD%"
cd\
SET ODRIVE=%CD:\=%
%IGTDRIVE%
CD %FD%
CD DLLFILES
IF NOT "%ARG1%"=="" SET THEME=%ARG1%& Goto :THEMEDIRECT
Echo Themes:
ECHO.
Echo B : Blue
Echo DB: Deep Blue
Echo R : Red
Echo G : Green
ECHO Y : Yellow
Echo P : Purple
Echo W : White
Echo D : Black (DEFFAULT)
ECHO M : Midnight
ECHO T : Terminal
Echo O : Ocean
Echo BR: Bright
Echo BS: BSOD
Echo L : Luna
Echo GR: Gray
Echo LA: Lava
Echo C : Custom
Echo.
Set /p THEME=
:THEMEDIRECT
If /i "%THEME%"=="C" Goto :CUSTTHEME
If /I "%LOGSET%"=="ON" Echo [%TIME%] Changed theme to: %THEME% >> %logdir%
If /I "%THEME%"=="B" ECHO color 3B >Theme.dll & SET COLOR=COLOR 3B
If /I "%THEME%"=="GR" ECHO color 78 >Theme.dll & SET COLOR=COLOR 78
If /I "%THEME%"=="L" ECHO color 70 >Theme.dll & SET COLOR=COLOR 70
IF /I "%THEME%"=="DB" ECHO color 19 >Theme.dll & SET COLOR=COLOR 19
IF /I "%THEME%"=="G" ECHO color 2A >Theme.dll & SET COLOR=COLOR 2A
IF /I "%THEME%"=="R" ECHO color 4C >Theme.dll & SET COLOR=COLOR 4C
If /I "%THEME%"=="P" ECHO color 5D >Theme.dll & SET COLOR=COLOR 5D
If /I "%THEME%"=="Y" ECHO color 6E >Theme.dll & SET COLOR=COLOR 6E
If /I "%THEME%"=="W" ECHO color 7F >Theme.dll & SET COLOR=COLOR 7F
IF /I "%THEME%"=="D" ECHO color 07 >Theme.dll & SET COLOR=COLOR 07
IF /I "%THEME%"=="M" ECHO color 1 >Theme.dll & SET COLOR=COLOR 01
IF /I "%THEME%"=="T" ECHO color A >Theme.dll & SET COLOR=COLOR 0A
IF /I "%THEME%"=="O" ECHO color 13 >theme.dll & SET COLOR=COLOR 13
IF /I "%THEME%"=="BR" ECHO color 7B >theme.dll & SET COLOR=COLOR 7B
IF /I "%THEME%"=="BS" ECHO color 1F >theme.dll & SET COLOR=COLOR 1F
IF /I "%THEME%"=="LA" ECHO color CE >theme.dll & SET COLOR=COLOR CE
IF "%DEBUG%"=="1" Echo Wrote configuration for theme %THEME% > %DEBUGDIR%
%ODRIVE%
cd %OD%
goto :C

:CUSTTHEME
IF NOT "%ARG2%"=="" SET ALSOCOLOR=%ARG2%& GOTO :CUSTTHEMEDIRECT
%COLOR%
Echo Igtampe DOS Crashed while Setting a Custom Theme> %DMP%
Echo.
Echo Color List:
Echo.
Echo 0 :Black    8 :Gray
Echo 1 :Blue     9 :Light Blue
Echo 2 :Green    A :Light Green
Echo 3 :Aqua     B :Light Aqua
Echo 4 :Red      C :Light Red
Echo 5 :Purple   D :Light Purple
Echo 6 :Yellow   E :Light Yellow
Echo 7 :White    F :Bright White
Echo.
Echo Background Color Followed by Text Color.
Echo (2A Produces Green Theme)
Echo.
Set /p ALSOCOLOR=
:CUSTTHEMEDIRECT
Color %ALSOCOLOR%
Echo.
Echo is This OK (Y/N)?
Set /p YN=
IF /i "%YN%"=="N" Goto :CUSTTHEME
Set COLOR=COLOR %ALSOCOLOR%
Echo color %ALSOCOLOR% >Theme.dll
Echo.
Echo Done Setting Custom Theme.
If /I "%LOGSET%"=="ON" Echo [%TIME%] Set Custom Theme "%ALSOCOLOR%" >> %logdir%
IF "%DEBUG%"=="1" Echo Wrote Custom Configuration %ALSOCOLOR% > %DEBUGDIR%
%ODRIVE%
CD %OD%
Goto :C

:SUP!
IF "%DEBUG%"=="1" Echo Responding to Offensive Language > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Found a Secret! Found: Shut up! >> %logdir%
ECHO No, You Shut Up!!
Echo WScript.Sleep 1500> M.vbs
M.vbs
Del M.vbs
Goto :SECRET!

:CFLIP
IF "%DEBUG%"=="1" Echo Flipping a Coin > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Flipped a coin >> %logdir%
set /a "NUMBER=%random% %% 2" >nul
Echo Flipping a coin...
if "%NUMBER%"=="0" set NUMBER=Heads
If "%NUMBER%"=="1" set number=Tails
Echo %NUMBER%
If /I "%LOGSET%"=="ON" Echo [%TIME%] %NUMBER% >> %logdir%
goto :C

:r
IF "%DEBUG%"=="1" Echo Generating a Random Number... > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launched Random Number Generator >> %logdir%
title Generating random Number
if "%ARG1%"=="" set ARG1=10
set /a ARG1=%ARG1%
IF "%ARG1%"=="0" set ARG1=10
Echo Your random number is...
set /a "NUMBER=%random% %% %ARG1%" >nul
set /a NUMBER=%NUMBER%+1 >nul
Echo %NUMBER%!
If /I "%LOGSET%"=="ON" Echo [%TIME%] Random number: %NUMBER% >> %logdir%
Goto :C

:Slots
IF "%DEBUG%"=="1" Echo Spining the Slots of the IGTAMPE DOS SUPER SLOT MACHINE... > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Found a Secret! Found: Slot Machine >> %logdir%
title Slot Machine
Echo Spinning the slots... Please Wait.
set /a "Number1=%random% %% 10"
set /a "Number2=%random% %% 10"
set /a "Number3=%random% %% 10"
Echo The slots are: %NUMBER1%%NUMBER2%%NUMBER3%
Echo WScript.Sleep 2500> M.vbs
M.vbs
Del M.vbs
Echo Well, whichever way you can't win anything. So, yeah. 
Echo WScript.Sleep 2500> M.vbs
M.vbs
Del M.vbs
Echo Thanks for playing! oh and by the way...
Echo WScript.Sleep 1500> M.vbs
M.vbs
Del M.vbs
Goto :secret!
 
:IGTAMPE
IF "%DEBUG%"=="1" Echo Saying the Ultimate Truth of Igtampe > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Found a Secret! Found: Igtampe is Cool >> %logdir%
Echo Igtampe is cool
color 10
Echo Igtampe is cool
color 20
Echo Igtampe is cool
color 30
Echo Igtampe is cool
color 40
Echo Igtampe is cool
color 50
Echo Igtampe is cool
color 60
Echo Igtampe is cool
color 70
Echo Igtampe is cool
color 80
Echo Igtampe is cool
color 90
Echo Igtampe is cool
color A0
Echo Igtampe is cool
color B0
Echo Igtampe is cool
color C0
Echo Igtampe is cool
color D0
Echo Igtampe is cool
color E0
Echo Igtampe is cool
color F0
Echo Igtampe is cool
color 10
Echo Igtampe is cool
color 20
Echo Igtampe is cool
color 30
Echo Igtampe is cool
color 40
Echo Igtampe is cool
color 50
Echo Igtampe is cool
color 60
Echo Igtampe is cool
color 70
Echo Igtampe is cool
color 80
Echo Igtampe is cool
color 90
Echo Igtampe is cool
color A0
Echo Igtampe is cool
color B0
Echo Igtampe is cool
color C0
Echo Igtampe is cool
color D0
Echo Igtampe is cool
color E0
Echo Igtampe is cool
color F0
IF /I "%IGTAMPE%"== "1" timeout /t 1 /Nobreak >NUL & goto :SECRET!
SET IGTAMPE=1
goto :IGTAMPE

:SOMETHING
IF "%DEBUG%"=="1" Echo The User was found to be really bored > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Found a Secret! Found: Something >> %logdir%
cls
Echo                  You are really Bored Aren't you?
Echo WScript.Sleep 1500> M.vbs
M.vbs
Del M.vbs
goto :secret!


:1492
IF "%DEBUG%"=="1" Echo In 1492, Columbus sailed the Ocean Blue... > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Found a Secret! Found: 1492 >> %logdir%
cls
color 13
Echo.                                
Echo.
echo.
Echo                                 l\
echo                                 l_\ 
echo ---      ---        ------   ___l___ ---------     --- ----- --- -
echo  -     - ----         -- --- \_____/ --- ----------          ---- --
echo  --        -- -- -- -- -      ------ --            -- - --   - -----
Echo                              in 1492
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
cls
Echo.                                
Echo.
echo.
Echo                                 l\
echo                                 l_\ 
echo -------   -- ---    -----    ___l___ --     ---         ------- --- -
echo  -     - ----         -- --- \_____/  - -    -  ---     ----- ---- -
echo  --- --- ---- --        --   ------ --    ---  --- -     -- ----- --
Echo                              in 1492
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
cls
Echo.                                
Echo.
echo.
Echo                                 l\
echo                                 l_\ 
echo ---  - --         -----   -- ___l___  ----       --- -- --- -- --- -
echo  -  ---     -----   --    -- \_____/  - -  ----      --- --- ---- -
echo  --- ----- --  -----       -----------         -- ----      --- --
Echo                              in 1492
Echo                   Columbus Sailed the ocean blue
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
cls
color 13
Echo.                                
Echo.
echo.
Echo                                 l\
echo                                 l_\ 
echo ---      ---        ------   ___l___ ---------     --- ----- --- -
echo  -     - ----         -- --- \_____/ --- ----------          ---- --
echo  --        -- -- -- -- -      ------ --            -- - --   - -----
Echo                              in 1492
Echo                   Columbus Sailed the ocean blue
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
cls
Echo.                                
Echo.
echo.
Echo                                 l\
echo                                 l_\ 
echo -------   -- ---    -----    ___l___ --     ---         ------- --- -
echo  -     - ----         -- --- \_____/  - -    -  ---     ----- ---- -
echo  --- --- ---- --        --   ------ --    ---  --- -     -- ----- --
Echo                              in 1492
Echo                   Columbus Sailed the ocean blue
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
cls
Echo.                                
Echo.
echo.
Echo                                 l\
echo                                 l_\ 
echo ---  - --         -----   -- ___l___  ----       --- -- --- -- --- -
echo  -  ---     -----   --    -- \_____/  - -  ----      --- --- ---- -
echo  --- ----- --  -----       -----------         -- ----      --- --
Echo                              in 1492
Echo                   Columbus Sailed the ocean blue
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
goto :Secret!

:Secret!
Echo [Secret System Manager] You found a Secret in IGTAMPE DOS! > %NOTIFDIR%
IF "%DEBUG%"=="1" Echo If not stated before, A Secret has been found > %DEBUGDIR%
cls
color 0F
Echo                 You found a Secret in IGTAMPE DOS!
Echo WScript.Sleep 2500> M.vbs
M.vbs
Del M.vbs
goto :FLASH

:TANDC
IF "%DEBUG%"=="1" Echo Loaded the Terms and Conditions > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Reviewed the Terms and Conditions >> %logdir%
set OD="%CD%"
cd\
Set ODRIVE=%CD:\=%
%IGTDRIVE%
cls
color 37
mode con:cols=70 lines=40
cd %FD%
echo *********************************************************************
echo *                       TERMS AND CONDITIONS                        *
echo *********************************************************************
Echo.
TYPE TANDC.txt
ECHO.
Echo.
Echo You already agreed to these terms
Pause >nul
mode con:cols=70 lines=25
%ODRIVE%
cd %OD%
GOTO :123456789

:SCHOICE
IF "%DEBUG%"=="1" Echo Loaded the Shutdown utility... > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launched the Shutdown Utility >> %logdir%
IF NOT "%ARG1%"=="" SET S=%ARG1%& GOTO :SCHOICEDIRECT
@echo Shut down [Version 2.0]
@echo.
Echo Choices:
Echo.
Echo Shutdown        ( S)
Echo Direct Shutdown (DS)
Echo Restart         ( R)
Echo Direct Restart  (DR)
Echo Hibernate       ( H)
Echo Standby         ( Z)
Echo.
Set /p S= 
:SCHOICEDIRECT
If /i "%S%"== "S" goto :S
IF /I "%S%"== "R" goto :RESTART
If /i "%S%"== "Z" goto :Z
IF /I "%S%"== "DS" Goto :DS
IF /I "%S%"== "DR" Goto :DR
IF /I "%S%"== "H" Goto :HIBER
If /I "%LOGSET%"=="ON" Echo [%TIME%] Canceled the Shutdown Utility >> %logdir%
goto :C

:HIBER
%PLAY% %HIBREOFF%
IF "%DEBUG%"=="1" Echo The System is going for a Hibernation NOW! > %DEBUGDIR%
Echo [%TIME%] Igtampe DOS became a Bear and decided it's winter >> %LOGDIR%
Echo               In Other Words, Igtampe DOS Went into Hibernation >> %LOGDIR%
Cls
Color 0F
SET OD=%CD%
cd\
SET ODRIVE=%CD:\=%
%IGTDRIVE%
CD %FD%
IF "%DEBUG%"=="1" Echo Wrote the variabes %ODRIVE% %OD% %COLOR% > %DEBUGDIR%
Echo SET ODRIVE=%ODRIVE% > HIBER.bat
Echo SET OD=%OD% >> HIBER.bat
Echo SET COLOR=%COLOR% >> Hiber.bat
Attrib Hiber.bat +h
DEL %DMP%
IF "%DEBUG%"=="1" Echo The System was halted. Close this window. > %DEBUGDIR%
Echo WScript.Sleep 2500> M.vbs
M.vbs
Del M.vbs
DEL %DEBUGDIR%
Echo EXIT> %NOTIFDIR%
Set IGTLAUNCHEXIT=1
EXIT & EXIT

:DR
IF "%DEBUG%"=="1" Echo The system is going for a Restart NOW NOW! > %DEBUGDIR%
DEL %DMP%
Echo [%TIME%] DR'ed the System >> %logdir%
Echo Directly Restarting the System.
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Goto :START

:DS
IF "%DEBUG%"=="1" Echo The System is going for a Full Halt NOW NOW! > %DEBUGDIR%
IF EXIST %DMP% DEL %DMP%
Echo [%TIME%] DS'ed the System >> %logdir%
Echo Directly Shutting down
IF "%DEBUG%"=="1" Echo The System was Halted, Close this window. > %DEBUGDIR%
Echo WScript.Sleep 500> M.vbs
M.vbs
DEL %DEBUGDIR%
Echo EXIT> %NOTIFDIR%
Set IGTLAUNCHEXIT=1
Goto :EOF

:EXIT
IF "%DEBUG%"=="1" Echo WARN: %CMD%=EXIT, HIBERNATION IMINENT > %DEBUGDIR%
Echo [%TIME%] Typed %CMD%, Interpreted as a Hibernation Signal >> %logdir%
GOTO :HIBER

:Z
IF "%DEBUG%"=="1" Echo The System has been Paused > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launched Stand By >> %logdir%
@echo Standing by
Echo WScript.Sleep 500> M.vbs
M.vbs
%PLAY% %SLEEPSND%
IF "%DEBUG%"=="1" Echo Resumed  the System > %DEBUGDIR%
Cls
pause >nul
%PLAY% %WAKEUP%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Got out of Standby >> %logdir%
goto :C

:VER
IF "%DEBUG%"=="1" Echo Told the User what version of IGTAMPE DOS this is > %DEBUGDIR%
@echo IGTAMPE DOS [Version %V%]
Goto :C

:?
IF "%DEBUG%"=="1" Echo Loaded the About Page. > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launched the About Page >> %logdir%
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
SET CONT=HLPLOGO
GOTO :LOGO
:HLPLOGO
Echo.
Echo                                  N T
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo Igtampe DOS %ID%
@echo Version %V% (Build %BUILD%)
@Echo.                           
@ECHO (C) Igtampe 2018. No Rights reserved.
Echo.
Set OD==%CD%
CD\
SET ODRIVE=%CD:\=%
%IGTDRIVE%
cd %FD%
cd DLLFILES
Type SYSFILE.DLL
%ODRIVE%
cd %OD%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo All parts of this program or any of its contents may be reproduced,
@echo copied, modififed, or adapted, even without the pior written consent
@echo of the author, unless otherwise indicated (Which will never happen)
@echo for stand-alone materials (Bundled Programs)
PAUSE >NUL
cls
goto 123456789

:1SW
set ARG1=
Set OD="%CD%"
Set OD="%CD%"
CD\
Set ODRIVE=%CD:\=%
%IGTDRIVE%
CD %FD%
START IGT APPLIST
%ODRIVE%
CD %OD%
goto :C

:1
IF "%DEBUG%"=="1" Echo Loaded the Applist... > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launhced the Applist >> %logdir%
IF /i "%ARG1%"=="SeparateWindow" goto :1SW
mode con:cols=70 lines=50
@echo.
Set OD="%CD%"
CD\
Set ODRIVE=%CD:\=%
%IGTDRIVE%
CD %FD%
CD APPS
Echo These are the Apps in %RAWFD%\APPS
Echo.
DIR /B /P *.bat
Pause >NUL
mode con:cols=70 lines=25
%ODRIVE%
CD %OD%
@GOTO 123456789

:TIME
IF "%DEBUG%"=="1" Echo Converting the Time and Date Variable > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Launched the TIME utiity >> %logdir%
set NEWTIME=%TIME:~0,-6%
set NEWDATE=%DATE:~4%
SET CONVERT=%NEWTIME::=%
SET /a CONVERT=%CONVERT%/1200
IF NOT "%CONVERT%"=="0" goto :PM
Set T=AM
:TIMECONT
IF "%DEBUG%"=="1" Echo Converted %TIME% to %NEWTIME% and %DATE% to %NEWDATE% > %DEBUGDIR% 
echo It is %NEWTIME% %T% of %NEWDATE%
GOTO :C

:PM
Set HOUR=%NEWTIME:~0,-3%
Set MIN=%NEWTIME:~3%
SET /a HOUR=%HOUR%-12
SET NEWTIME=%HOUR%:%MIN%
SET T=PM
Goto :TIMECONT
:RESTART
Echo [%TIME%] Restarted IGTAMPE DOS >> %logdir%

:S
IF "%DEBUG%"=="1" Echo The System is Halting NOW! > %DEBUGDIR%
DEL %DMP%
TITLE IGTAMPE DOS IS SHUTTING DOWN
%PLAY% %OFF%
SET SSCOUNT=0

:SSEQUENCE
IF "%SSCOUNT%"=="12" GOTO :ACTUALS
SET /a SSCOUNT=%SSCOUNT%+1
cls
ECHO.
ECHO.
echo.
echo.
echo.
echo.
echo.
ECHO.
echo.
echo.
echo.
echo                             SHUTTING DOWN
echo.
echo.
echo                                   /
echo.
Echo WScript.Sleep 10> M.vbs
M.vbs
cls
ECHO.
ECHO.
echo.
echo.
echo.
echo.
echo.
ECHO.
echo.
echo.
echo.
echo                             SHUTTING DOWN
echo.
echo.
echo                                   -
echo.
IF "%DEBUG%"=="1" Echo Stoping Services... > %DEBUGDIR%
Echo WScript.Sleep 10> M.vbs
M.vbs
cls
ECHO.
ECHO.
echo.
echo.
echo.
echo.
echo.
ECHO.
echo.
echo.
echo.
echo                             SHUTTING DOWN
echo.
echo.
echo                                   \
echo.
IF "%DEBUG%"=="1" Echo Oh wait, Igtampe DOS Has no Services... > %DEBUGDIR%
Echo WScript.Sleep 10> M.vbs
M.vbs
cls
ECHO.
ECHO.
echo.
echo.
echo.
echo.
echo.
ECHO.
echo.
echo.
echo.
echo                             SHUTTING DOWN
echo.
echo.
echo                                   [
echo.
IF "%DEBUG%"=="1" Echo Oh well. > %DEBUGDIR%
Echo WScript.Sleep 10> M.vbs
M.vbs
Goto :SSEQUENCE

:ACTUALS
cls
color 07
Echo WScript.Sleep 2500> M.vbs
M.vbs
IF /I "%S%"=="R" COLOR 0F & goto :START
IF "%DEBUG%"=="1" Echo The System was Halted. Close this Window. > %DEBUGDIR%
If /I "%LOGSET%"=="ON" Echo [%TIME%] Shutdown IGTAMPE DOS >> %logdir%
DEL %DEBUGDIR%
CLS
Echo EXIT> %NOTIFDIR%
Set IGTLAUNCHEXIT=1
Goto :EOF

:ERROR
Echo [%TIME%] IGTAMPE DOS had a Fatal Error >> %logdir%
MSG * IGTAMPE DOS Had a Fatal Error and cannot continue to run.