::IGTDOSAPP
Echo ??? >> %DMP%
CLS
Echo Igtampe DOS Restore Program [Version 2.0]
Echo (C)2016 Igtampe, No Rights Reserved
Echo.
Echo.
IF /i "%1"=="SOS" Goto :DSET
Echo Restore (Y/N)?
Set /p Q1=
If /I "%Q1%"=="N" goto :NO

:DSET
cls
Echo Igtampe DOS Crashed during Preperations to a Restore > %DMP%
Echo Igtampe DOS Restore Program [Version 2.0]
Echo (C)2016 Igtampe, No Rights Reserved
Echo.
Echo.
Echo Checking for Backups on all Drives...
Echo.
IF EXIST A:\BACKUP SET A=1 & Set D=A& GOTO :FOUND
:AC
IF EXIST B:\BACKUP SET B=1 & Set D=B& GOTO :FOUND
:BC
IF EXIST C:\BACKUP SET C=1 & Set D=C& GOTO :FOUND
:CC
IF EXIST D:\BACKUP SET D=1 & Set D=D& GOTO :FOUND
:DC
IF EXIST E:\BACKUP SET E=1 & Set D=E& GOTO :FOUND
:EC
IF EXIST F:\BACKUP SET F=1 & Set D=F& GOTO :FOUND
:FC
IF EXIST G:\BACKUP SET G=1 & Set D=G& GOTO :FOUND
:GC
IF EXIST H:\BACKUP SET H=1 & Set D=H& GOTO :FOUND
:HC
IF EXIST I:\BACKUP SET I=1 & Set D=I& GOTO :FOUND
:IC
IF EXIST J:\BACKUP SET J=1 & Set D=J& GOTO :FOUND
:JC
IF EXIST K:\BACKUP SET K=1 & Set D=K& GOTO :FOUND
:KC
IF EXIST L:\BACKUP SET L=1 & Set D=L& GOTO :FOUND
:LC
IF EXIST M:\BACKUP SET M=1 & Set D=M& GOTO :FOUND
:MC
IF EXIST N:\BACKUP SET N=1 & Set D=N& GOTO :FOUND
:NC
IF EXIST O:\BACKUP SET O=1 & Set D=O& GOTO :FOUND
:OC
IF EXIST P:\BACKUP SET P=1 & Set D=P& GOTO :FOUND
:PC
IF EXIST Q:\BACKUP SET Q=1 & Set D=Q& GOTO :FOUND
:QC
IF EXIST R:\BACKUP SET R=1 & Set D=R& GOTO :FOUND
:RC
IF EXIST S:\BACKUP SET S=1 & Set D=S& GOTO :FOUND
:SC
IF EXIST T:\BACKUP SET T=1 & Set D=T& GOTO :FOUND
:TC
IF EXIST U:\BACKUP SET U=1 & Set D=U& GOTO :FOUND
:UC
IF EXIST V:\BACKUP SET V=1 & Set D=V& GOTO :FOUND
:VC
IF EXIST W:\BACKUP SET W=1 & Set D=W& GOTO :FOUND
:WC
IF EXIST X:\BACKUP SET X=1 & Set D=X& GOTO :FOUND
:XC
IF EXIST Y:\BACKUP SET Y=1 & Set D=Y& GOTO :FOUND
:YC
IF EXIST Z:\BACKUP SET Z=1 & Set D=Z& GOTO :FOUND
:ZC
Echo.
Echo Which Backup to Restore from (D)? Type Exit to cancel.
Set /p DRIVE=
IF /i "%DRIVE%"=="Exit" Goto :NO
%DRIVE%:
cd\
cd BACKUP
Echo.
Echo Preparing to Copy...
cd ..
SET RAWDIR=%CD%
set IGTDOSDIR="%CD%"
%DRVE%:
MD BACKUP
cd BACKUP
MD APPS
CD APPS
MD ALARMS
cd\
%IGTDRIVE%
cd %FD%
Echo WScript.Sleep 500> M.vbs
M.vbs
Del M.vbs
Echo Preperations complete. Copying...
Echo WScript.Sleep 1000> M.vbs
M.vbs
Del M.vbs
Echo Igtampe DOS Crashed During a Restore It is recommended to do an SOS Boot> %DMP%
XCOPY %DRIVE%:\BACKUP %FD% /E /C /Y
Echo IGTAMPE DOS has been restored.
goto :END

:FOUND
%D%:
cd\
cd BACKUP
Set /p VER=<Ver.txt
Echo Backup on %D%: for Version %VER%
Goto :%D%C


:NO
cls
Echo Action canceled by the User.
Goto :END

:END
DEL %DMP%
%IGTDRIVE%
cd %FD%
IGT.bat
Echo THere was an Error Returning to Igtampe DOS
Pause