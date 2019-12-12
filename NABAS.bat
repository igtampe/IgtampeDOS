@echo Off
setlocal enabledelayedexpansion
Goto :NABASSTART

:UPDATECORE
Echo The System is going for an update please wait> %DEBUGDIR%
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [Update Core] Please Wait while Igtampe DOS is Updated...
Echo               Do NOT Close NABAS.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo The Debug Window Might crash, This is normal.> %DEBUGDIR%
XCOPY "C:\UPDATETEMP" "%FD%" /E /C /F /Y >nul
RD /Q /S "C:\UPDATETEMP"
Set update=0
set cycle=0
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [Update Core] Finished Upadting, Restarting...
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Color 07
Echo WScript.Sleep 3500> M.vbs
Echo NABAS Updated Igtampe DOS from %BUILD% to %NEWBUILD%>> %logdir%
Set build=%NEWBUILD%
M.vbs
Del M.vbs
cd %FD%
DEL "%RAWFD%\DLLFILES\WELCOME"
IGT.bat
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS] FATAL ERROR: Could not restart Igtampe DOS.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Pause
goto :EOF

:IUC
SET OD=%CD%
CD %FD%
DOWNLOAD http://igtdos.yolasite.com/resources/CURRENT.txt "%CD%\IUC.tmp"
IF NOT EXIST IUC.tmp GOTO :NOINT
TYPE IUC.tmp|FIND /i "CURRENTREGULAR" > OTHERIUC.tmp
Echo %V%|FIND /i "BETA"> NUL
IF "%ERRORLEVEL%"=="0" SET BETA=1
IF "%BETA%"=="1" TYPE IUC.tmp|FIND /i "CURRENTBETA" > OTHERIUC.tmp
SET /p IUC=<OTHERIUC.tmp
DEL IUC.tmp
DEL OTHERIUC.tmp
IF "%IUC%"=="" Goto :CORRUPTDOWN
SET IUC=%IUC:CURRENTREGULARBUILD:=%
IF "%BETA%"=="1" SET IUC=%IUC:CURRENTBETABUILD:=%
IF "%BUILD%"=="%IUC%" Goto :UPTODATE
SET /a CHECK=%BUILD%-%IUC%
Echo %CHECK%|FIND "-" >nul
IF "%ERRORLEVEL%"=="0" Goto :UPDATE
Echo.
IF "%COMPUTERNAME%"=="HERMES" GOTO :OKHIGHER
IF "%COMPUTERNAME%"=="KRATOS" GOTO :OKHIGHER
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS IUC] NABAS Warns you, that you've been Modifying.
Echo.
Echo             CURRENT BUILD: %BUILD%
Echo             ONLINE BUILD : %IUC%
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
cd %OD%
Goto :MSGfinder

:OKHIGHER
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS IUC] Hello Igtampe.
Echo.
Echo             CURRENT BUILD: %BUILD%
Echo             ONLINE BUILD : %IUC%
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
cd %OD%
Goto :MSGfinder

:UPDATE
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS IUC] Nabas is downloading an IGTAMPE DOS Update.
Echo.
Echo             CURRENT BUILD: %BUILD%
Echo             ONLINE BUILD : %IUC%
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
IF "%BETA%"=="1" Goto :BETAUPDATE
DOWNLOAD http://igtdos.yolasite.com/resources/CurrentRegular.iso "%RAWFD%\UPDATE.iso"
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS IUC] Update downloaded, Please mount it if it isn't mounted
Echo             already. The NABAS Automatic Updator will finish the
Echo             Update process.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
START %CD%\UPDATE.iso
cd %OD%
Goto ::MSGfinder

:BETAUPDATE
DOWNLOAD http://igtdos.yolasite.com/resources/CURRENTBETA.iso "%CD%\UPDATE.iso"
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS IUC] Update downloaded, Please mount it if it isn't mounted
Echo             already. The NABAS Automatic Updator will finish the
Echo             Update process.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
START %CD%\UPDATE.iso
cd %OD%
Goto :MSGfinder

:UPTODATE
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS IUC] No Updates were found.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
cd %OD%
Goto :MSGfinder

:CORRUPTDOWN
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS IUC] The CURRENT.txt file Download was corrupted, and thus
Echo             we cannot continue to check for updates.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
cd %OD%
Goto :MSGfinder

:NOINT
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS IUC] You are not connected to the internet. Connect to the
Echo             internet to check for updates.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
cd %OD%
Goto :MSGfinder

:MSGfinder
Echo MSGFINDER Loaded > %DEBUGDIR%
cd %FD%
CD APPS
IF NOT EXIST MSG GOTO :IUCDONE
Echo Found folder MSG > %DEBUGDIR%
CD MSG
CD MSGLOCALES
SET A=0

:MSGFINDERLOOP
Set /A A=%A%+1
IF NOT EXIST %A%.txt Goto :IUCDONE
Echo Found localE %A%> %DEBUGDIR%
CALL READ %A%.txt NAME 
CALL READ %A%.txt URL 
CALL READ %A%.txt URLM
Echo MSGFINDER LOCALE %A%: "!name!" "!URL!" "!URLM!"> %DEBUGDIR%
IF EXIST M.txt del M.txt
%RAWFD%\DOWNLOAD.vbs !URLM! M.txt
IF NOT EXIST M.TXT GOTO :DOWNLOADERROR
CALL READ M.txt M
SET READ=CALL %CD%\READ.bat
Echo MSGFINDER FOUND %M% MESSAGES> %DEBUGDIR%
CD..
IF NOT EXIST !NAME! MD !NAME!
CD !NAME!
IF NOT EXIST UNREAD MD UNREAD
IF NOT EXIST READ MD READ
IF NOT EXIST FLAGGED MD FLAGGED
IF NOT EXIST M.TXT SET D=0& Goto :DOWNLOAD
%READ% M.txt D
IF "%D%"=="%M%" GOTO :DOWNLOADSKIP

:DOWNLOAD
Echo %D% OF !M! MESSAGES DOWNLOADED. DOWNLOADING REST.> %DEBUGDIR%
cd UNREAD

:DOWNLOADLOOP
IF "%D%"=="%M%" GOTO :DOWNLOADSKIP
Set /a D=%D%+1
%RAWFD%\DOWNLOAD.vbs %URL%/%D%.msg %D%.msg
IF NOT EXIST %D%.msg Goto :DOWNLOADERROR
Echo Downloaded message %D%.msg > %DEBUGDIR%
cd..
ECHO D:%D%>M.txt
cd UNREAD
Goto :DOWNLOADLOOP

:DOWNLOADERROR
ECHO ERROR: COULD NOT DOWNLOAD "%URL%/%D%.msg"> %DEBUGDIR%
GOTO :IUCDONE

:DOWNLOADSKIP
IF EXIST UNREAD CD UNREAD
IF EXIST *.msg goto :UNREADNOTIF
cd %FD%
cd APPS
CD MSG
CD MSGLOCALES
goto :MSGFINDERLOOP

:UNREADNOTIF
%PLAY% "%RAWFD%\SOUNDS\MSG.wav"
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [Messageboard] Unread messages from messageboard %NAME%
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
cd %FD%
cd APPS
CD MSG
CD MSGLOCALES
goto :MSGFINDERLOOP

:NABASSTART
Mode con: Lines=25 Cols=70
IF "%1"=="DEBUGONLY" Goto :DEBUGONLY
IF "%DEBUG%"=="1" GOTO :DEBUG
Title Notification And Backround Application System
Echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
Echo บ                              NABAS                                บ
Echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
Echo.
Echo.
cd %FD%
SET SND="%RAWFD%\SOUNDS\NOTIF.wav"
CD DLLFILES
SET /p COLOR=<THEME.dll
%COLOR%
GOTO :IUC
:IUCDONE
CD %FD%
cd APPS
cd NABAS
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Nabas is Ready
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
IF "%ADMIN%"=="1" goto :ADMINNOTIF
Set CYCLE=0
goto :NABASWAIT

:ADMINNOTIF
%PLAY% %SND%
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [IGTAMPE DOS] You are running Igtampe DOS as an administrator.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.

:NABASWAIT
Title Notification and Background Application System
IF "%CYCLE%"=="2000" Goto :UPDATECHECK
SET /a CYCLE=%CYCLE%+1
IF EXIST APP.tmp GOTO :APP
IF NOT EXIST NOTIF.TMP goto :NABASWAIT
SET /p ECHO=<NOTIF.tmp
If /i "%ECHO%"=="%ECHO2%" GOTO :NABASWAIT
SET ECHO2=%ECHO%
IF "%ECHO%"=="EXIT" GOTO :EXIT
IF "%ECHO%"=="CLEAR" GOTO :CLS
%PLAY% %SND%
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo %ECHO%
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Goto :NABASWAIT

:CLS
Mode con: Lines=25 Cols=70
Echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
Echo บ                              NABAS                                บ
Echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
Echo.
Echo.
goto :NABASWAIT

:SAMEBUILD
Set CYCLE=-1000
Goto :NABASWAIT

:UPDATECHECKERROR2
If "%UPDATECHECKERROR2%"=="1" Goto :UPDATECHECKERROR2SKIP
%PLAY% %SND%
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [Background Update Checker] ERROR: The Update Disk found was of an
Echo                             older build of Igtampe DOS. (%DRIVE%:)
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
:UPDATECHECKERROR2SKIP
Set Cycle=-2000
Set UPDATECHECKERROR2=1
goto :NABASWAIT

:UPDATECHECKERROR1
%PLAY% %SND%
If "%UPDATECHECKERROR1%"=="1" Goto :UPDATECHECKERROR1SKIP
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [Background Update Checker] ERROR: Could not find the Build
Echo                             Identifier on the Copy of Igtampe DOS
Echo                             in the Update Disk inserted (%DRIVE%:)
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
:UPDATECHECKERROR1SKIP
Set Cycle=-2000
Set UPDATECHECKERROR1=1
goto :NABASWAIT

:UPDATECHECKNONE
Set CYCLE=0
goto :NABASWAIT

:UPDATECHECK
IF "%UPDATE%"=="1" Goto :NABASWAIT
Set DRIVE=
IF EXIST A:\FTC SET DRIVE=a
IF EXIST B:\FTC SET DRIVE=b
IF EXIST D:\FTC SET DRIVE=D
IF EXIST E:\FTC SET DRIVE=e
IF EXIST F:\FTC SET DRIVE=f
IF EXIST G:\FTC SET DRIVE=g
IF EXIST H:\FTC SET DRIVE=h
IF EXIST I:\FTC SET DRIVE=i
IF EXIST J:\FTC SET DRIVE=j
IF EXIST K:\FTC SET DRIVE=k
IF EXIST L:\FTC SET DRIVE=l
IF EXIST M:\FTC SET DRIVE=m
IF EXIST N:\FTC SET DRIVE=n
IF EXIST O:\FTC SET DRIVE=o
IF EXIST P:\FTC SET DRIVE=p
IF EXIST Q:\FTC SET DRIVE=q
IF EXIST R:\FTC SET DRIVE=r
IF EXIST S:\FTC SET DRIVE=s
IF EXIST T:\FTC SET DRIVE=t
IF EXIST U:\FTC SET DRIVE=u
IF EXIST V:\FTC SET DRIVE=v
IF EXIST W:\FTC SET DRIVE=w
IF EXIST X:\FTC SET DRIVE=x
IF EXIST Y:\FTC SET DRIVE=y
IF EXIST Z:\FTC SET DRIVE=z
IF "%DRIVE%"=="" Goto :UPDATECHECKNONE
IF NOT EXIST "%DRIVE%:\FTC\IGT.bat" Goto :UPDATECHECKNONE
TYPE %DRIVE%:\FTC\IGT.bat| Find /i "BUILD:"> UpdateCheckerTemp.tmp
Set /p NEWBUILD=<UpdateCheckerTemp.tmp
IF "%NEWBUILD%"=="" Goto :UPDATECHECKERROR1
SET NEWBUILD=%NEWBUILD::BUILD:=%
Set /a CHECK=%BUILD%-%NEWBUILD%
IF "%CHECK%"=="0" Goto :SAMEBUILD
Echo %CHECK%| FIND "-" >nul
If "%ERRORLEVEL%"=="1" goto :UPDATECHECKERROR2
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [Background Update Checker] An Update was found on %DRIVE%: for
Echo                             Build %NEWBUILD%. Please wait while
Echo                             the files are copied...
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
MD C:\UPDATETEMP
XCOPY "%DRIVE%:\FTC" "C:\UPDATETEMP" /E /C /F /Y >nul
%PLAY% %SND%
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [Background Update Checker] Shutdown/Hibernate Igtampe DOS to Finish
Echo                             updating all files...
Echo.
Echo                             It is now safe to remove the Media.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Set UPDATE=1
Set CYCLE=2001
goto :NABASWAIT

:APP
SET /p APP=<APP.tmp
Del APP.tmp
IF NOT EXIST %APP%.bat goto :APPERROR1
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS] Pausing Notification System for %APP%
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Call %APP%.bat
Echo.
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS] Ready
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
goto :NABASWAIT

:APPERROR
%PLAY% %SND%
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS] ERROR: App %APP% was not found
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
goto :NABASWAIT

:DEBUG
SET DEBUG=0
Title Debug Window
START NABAS
:DEBUGONLY
Title Debug Window
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Igtampe DOS Debug Window                                          %V%
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
:DEBUGWAIT
IF NOT EXIST DEBUG.TMP goto :DEBUGWAIT
SET /p ECHO=<DEBUG.tmp
If /i "%ECHO%"=="%ECHO2%" GOTO :DEBUGWAIT
SET ECHO2=%ECHO%
Echo %ECHO%
Goto :DebugWAIT


:EXIT
DEL NOTIF.tmp
IF "%UPDATE%"=="1" goto :UPDATECORE
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [NABAS] Shutting Down NABAS...
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
EXIT & EXIT