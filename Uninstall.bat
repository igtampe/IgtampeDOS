@echo Off
cls
mode con:cols=70 lines=25
Title Igtampe DOS Uninstaller
SET FD=%CD%
ECHO.
ECHO.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO                      ______________________
echo                     [         / \          ]
echo                     [        / ! \         ]
echo                     [       /_____\        ]
echo                     [                      ]        
echo                     [       WARNING        ]
ECHO                     [______________________]
echo.
echo.
echo.
echo          __________________________________________________
echo         [                                                  ]
ECHO         [               Uninstall IGTDOS?                  ]
ECHO         [__________________________________________________]
ECHO.
ECHO ____________________________________________________________________
Set /p Q1=(Y/N)?
If /I "%Q1%"=="Y" goto :UNINST
Cls
Echo Action Canceled By the User
Pause
Goto eof

:UNINST
CLS
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
Echo Please Wait while Uninstallation Occurs...                         !
Timeout /t 5 >nul
ClS
Echo LOGS
Timeout /t 1 >nul
RD /S /Q LOGS
Echo.
Echo DLLFILES
Timeout /t 1 >nul
RD /s /q DLLFILES
Echo.
Echo APPS
Timeout /t 1 >nul
rd /s /q apps
Echo Main Directory (%FD%)
Timeout /t 1 >nul
Echo Autoexec.bat
Del Autoexec.bat
Echo Icon
Del Icon.ico
Echo Readme
Del Readme.txt
Echo TANDC
Del Tandc.txt
Echo IGT
Del IGT.bat
Timeout /t 2 >nul
CLS
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
ECHO                              Finished
ECHO.
ECHO.
ECHO ____________________________________________________________________
Pause
del UNINSTALL.bat