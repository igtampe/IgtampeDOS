::IGTDOSAPP
IF /i "%1"=="SOS" goto :SOS
Title Updating IGTAMPE DOS
set Q1=%FD%
Color 18

Echo Loading the Updator

:neXt1
Echo IGTAMPE DOS Crashed during the Begining of the Updator > %DMP%
cls
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO                     ________   _______    ________
echo                    [________] [_______]  [________]
echo                        []     []             []
echo                        []     []             []
echo                        []     []    ___      []
echo                        []     []   [___]     []
ECHO                     ___[]___  []______[]     []
echo                    [________] [________]     []
echo.
echo.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO ____________________________________________________________________
Echo Finding the Drive                                                  !
Echo WScript.Sleep 3500> "%TEMP%\M.vbs"
"%TEMP%\M.vbs"
Del "%TEMP%\M.vbs"
goto :DRIVE

:SOS
Set SOS=1
:DRIVE
Echo IGTAMPE DOS Crashed While the Updator was finding the Drive > %DMP%
IF EXIST A:\FTC GOTO :A
IF EXIST B:\FTC GOTO :B
IF EXIST D:\FTC GOTO :D
IF EXIST E:\FTC GOTO :E
IF EXIST F:\FTC Goto :F
IF EXIST G:\FTC goto :G
IF EXIST H:\FTC GOTO :H
IF EXIST I:\FTC GOTO :I
IF EXIST J:\FTC GOTO :J
IF EXIST K:\FTC GOTO :K
IF EXIST L:\FTC Goto :L
IF EXIST M:\FTC goto :M
IF EXIST N:\FTC GOTO :N
IF EXIST O:\FTC GOTO :O
IF EXIST P:\FTC GOTO :P
IF EXIST Q:\FTC GOTO :Q
IF EXIST R:\FTC Goto :R
IF EXIST S:\FTC goto :S
IF EXIST T:\FTC GOTO :T
IF EXIST U:\FTC GOTO :U
IF EXIST V:\FTC GOTO :V
IF EXIST W:\FTC GOTO :W
IF EXIST X:\FTC Goto :X
IF EXIST Y:\FTC goto :Y
IF EXIST Z:\FTC GOTO :Z
Echo Please insert the IGTAMPE DOS installation disk and Try Again
Pause >nul
Goto :DRIVE

:A
A:
Goto :INSTALL

:B
B:
Goto :INSTALL

:D
D:
Goto :INSTALL

:E
E:
Goto :INSTALL

:F
F:
Goto :INSTALL

:G
G:
Goto :INSTALL

:H
H:
Goto :INSTALL

:I
I:
Goto :INSTALL

:J
J:
Goto :INSTALL

:K
K:
Goto :INSTALL

:L
L:
Goto :INSTALL

:M
M:
Goto :INSTALL

:N
N:
Goto :INSTALL

:O
O:
Goto :INSTALL

:P
P:
Goto :INSTALL

:Q
Q:
Goto :INSTALL

:R
R:
Goto :INSTALL

:S
S:
Goto :INSTALL

:T
T:
Goto :INSTALL

:U
U:
Goto :INSTALL

:V
V:
Goto :INSTALL

:W
W:
Goto :INSTALL

:X
X:
Goto :INSTALL

:Y
Y:
Goto :INSTALL

:Z
Z:
Goto :INSTALL

:INSTALL
IF "%SOS%"=="1" GOTO :COPY
cls
cd\
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO                     ________   _______    ________
echo                    [________] [_______]  [________]
echo                        []     []             []
echo                        []     []             []
echo                        []     []    ___      []
echo                        []     []   [___]     []
ECHO                     ___[]___  []______[]     []
echo                    [________] [________]     []
echo.
echo.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO ____________________________________________________________________
Echo Drive found on %CD%                                                !
Echo WScript.Sleep 2500> "%TEMP%\M.vbs"
"%TEMP%\M.vbs"
Del "%TEMP%\M.vbs"
Echo IGTAMPE DOS Crashed while the Updator was Copying Files > %DMP%
cls
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO                     ________   _______    ________
echo                    [________] [_______]  [________]
echo                        []     []             []
echo                        []     []             []
echo                        []     []    ___      []
echo                        []     []   [___]     []
ECHO                     ___[]___  []______[]     []
echo                    [________] [________]     []
echo.
echo.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO ____________________________________________________________________
Echo Copying Files. This may take some time                             !
Echo WScript.Sleep 3500> "%TEMP%\M.vbs"
"%TEMP%\M.vbs"
Del "%TEMP%\M.vbs"
cls
color 1B
:COPY
XCOPY FTC %Q1% /E /C /F /Y
IF "%SOS%"=="1" GOTO :END
Timeout /t 2 >nul
cls
Color 18
C:
cd %Q1%
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO                     ________   _______    ________
echo                    [________] [_______]  [________]
echo                        []     []             []
echo                        []     []             []
echo                        []     []    ___      []
echo                        []     []   [___]     []
ECHO                     ___[]___  []______[]     []
echo                    [________] [________]     []
echo.
echo.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO ____________________________________________________________________
Echo Update Finished. Returning to IGTAMPE DOS                          !
Echo WScript.Sleep 1500> "%TEMP%\M.vbs"
"%TEMP%\M.vbs"
Del "%TEMP%\M.vbs"
:END
DEL %DMP%
cls
%IGTDRIVE%
cd %FD%
IGT.bat
cls
Echo The Updator Failed to Return to IGTAMPE DOS > %DMP%
Echo there was an error Returning to IGTAMPE DOS
echo.
Pause
Goto :EOF

:E1
cls
Echo.
ECHO                                ______
Echo                               /      \
ECHO                               !  \/  !
ECHO                               !  /\  !
ECHO                               \      /
ECHO                                ------
echo                                ERROR
echo.
echo              *********************************************
echo              *              IGTAMPE DOS                  *
echo              *********************************************
echo.
echo            IGTAMPE DOS Files are missing for the installation 
echo.
echo.
Pause >nul
%IGTDRIVE%
cd %FD%
IGT.bat