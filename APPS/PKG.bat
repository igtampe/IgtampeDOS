::IGTDOSAPP
Title Igtampe DOS Package Installer

:FIND
Echo The Igtampe DOS Package Installer crashed during the Begining of the Installation > %DMP%
Echo Needn't wory, Just restart the installation >> %DMP%
Echo.
Echo Finding Application Packages, Please wait...
Echo.
IF EXIST A:\PKG ECHO Found Package in A: & Set PKG=1
IF EXIST B:\PKG ECHO Found Package in B: & Set PKG=1
IF EXIST D:\PKG ECHO Found Package in D: & Set PKG=1
IF EXIST E:\PKG ECHO Found Package in E: & Set PKG=1
IF EXIST F:\PKG ECHO Found Package in F: & Set PKG=1
IF EXIST G:\PKG ECHO Found Package in G: & Set PKG=1
IF EXIST H:\PKG ECHO Found Package in H: & Set PKG=1
IF EXIST I:\PKG ECHO Found Package in I: & Set PKG=1
IF EXIST J:\PKG ECHO Found Package in J: & Set PKG=1
IF EXIST K:\PKG ECHO Found Package in K: & Set PKG=1
IF EXIST L:\PKG ECHO Found Package in L: & Set PKG=1
IF EXIST M:\PKG ECHO Found Package in M: & Set PKG=1
IF EXIST N:\PKG ECHO Found Package in N: & Set PKG=1
IF EXIST O:\PKG ECHO Found Package in O: & Set PKG=1
IF EXIST P:\PKG ECHO Found Package in P: & Set PKG=1
IF EXIST Q:\PKG ECHO Found Package in Q: & Set PKG=1
IF EXIST R:\PKG ECHO Found Package in R: & Set PKG=1
IF EXIST S:\PKG ECHO Found Package in S: & Set PKG=1
IF EXIST T:\PKG ECHO Found Package in T: & Set PKG=1
IF EXIST U:\PKG ECHO Found Package in U: & Set PKG=1
IF EXIST V:\PKG ECHO Found Package in V: & Set PKG=1
IF EXIST W:\PKG ECHO Found Package in W: & Set PKG=1
IF EXIST X:\PKG ECHO Found Package in X: & Set PKG=1
IF EXIST Y:\PKG ECHO Found Package in Y: & Set PKG=1
IF EXIST Z:\PKG ECHO Found Package in Z: & Set PKG=1
IF NOT "%PKG%"=="1" goto :NOPKG
Goto :PKG

:NOPKG
Echo No Packages were found, (R)etry or (A)bort
Set /p Q1=
If /i "%Q1%"=="R" goto :FIND
Goto :END

:PKG
Echo.
Echo Select a Package from above (D:)
Set /p D=
%D%
CD\
CD PKG
Set /p PKGNAME=<PKGNAME.TXT
Echo.
Echo.
Echo Package was Recognized as %PKGNAME%. Continue (Y/N)?
Set /p Q1=
If /i "%Q1%"=="N" goto :PKG
Echo.
Echo Calling The Package's Installer.
Echo.
Echo The Igtampe DOS Package Installer Crashed during the Installation > %DMP%
CALL PKG.bat
Echo.
Echo.
Echo Done installing the Package.

:END
%IGTDRIVE%
CD %RAWFD%
DEL %DMP%
IGT
Echo The Package Installer Could not return to Igtampe DOS >%DMP%
Echo there was an Error Returning to Igtampe DOS.
Pause >nul