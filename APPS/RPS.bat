Echo off
Title Rock Paper Scissors [1.1]
Echo Loading RPS
cls

:Begining
Echo Welcome To Rock Paper Scissors.
Pause
Echo.
Echo Single Player (S) or Multiplayer (M)?
Set /p Q1=
If /i "%Q1%"=="s" goto S
If /I "%Q1%"=="M" goto M
Echo.
Echo %Q1% is not a Choice
goto begining

:S
Echo.
Echo OK. What will it be?
Echo 1: ROCK
Echo 2: PAPER
Echo 3: SCISSORS
Set /p P1=
Echo.
Echo The CPU will now Decide...
Set /a "P2=%random% %% 3"
If /I "%P2%"=="0" Set P2=1
Goto Check

:M
Echo Player 1, Choose
Echo 1: ROCK
Echo 2: PAPER
Echo 3: SCISSORS
Set /p P1=
cls
Echo Player 2, Press any key to Continue...
Pause >nul
Echo Player 2, Choose
Echo 1: ROCK
Echo 2: PAPER
Echo 3: SCISSORS
Set /p P2=

:CHECK
If /I "%P2%"=="1" Set P2=Rock
IF /I "%P2%"=="2" Set P2=Paper
If /I "%P2%"=="3" Set P2=Scissors
If /I "%P1%"=="1" goto R
If /I "%P1%"=="2" goto PA
If /I "%P1%"=="3" Goto SC
Echo There was an Error with Player 1's Choice. Please Input it again.
Set /p P1=
Echo.
Goto :Check

:R
cls
Set P1=Rock
If /I "%P2%"=="Rock" Set A=Is Same As & SET T=T
If /I "%P2%"=="Paper" Set A=Is Covered By & SET T=L
If /I "%P2%"=="Scissors" Set A=Crushes & SET T=W
Goto WIN

:PA
cls
Set P1=Paper
If /I "%P2%"=="Rock" Set A=covers & Set T=W
IF /I "%P2%"=="Paper" Set A=Is Same as & SET T=T
IF /I "%P2%"=="Scissors" set A=Is Cut by & SET T=L
Goto WIN

:SC
cls
Set P1=Scissors
If /I "%P2%"=="Rock" Set A=Is Crushed By & SET T=L
If /i "%P2%"=="Paper" set A=Cuts & SET T=W
If /I "%P2%"=="Scissors" set A=Is Same As & Set T=T
Goto WIN

:WIN
If /I "%Q1%"=="M" Goto :MWIN
If /I "%T%"=="T" Echo TIE!
If /I "%T%"=="L" Echo You Loose!
If /I "%T%"=="W" Echo You Win!
Echo %P1% %A% %P2%
Pause >nul
Echo Play Again (Y/N)?
Set /p E=
If /I "%E%"=="Y" goto S
Goto END

:MWIN
If /I "%T%"=="T" Echo TIE!
If /I "%T%"=="L" Echo Player 2 Wins!
If /I "%T%"=="W" Echo Player 1 Wins!
Echo %P1% %A% %P2%
Pause >nul
Echo Play Again (Y/N)?
Set /p E=
If /I "%E%"=="Y" goto M

:End
Echo Thank You for Playing Rock Paper Scissors. Goodbye!
Pause
Cls
ECHO ROCK PAPER SCISSORS [Version 1.1]
ECHO (C)2014 Igtampe. No Rights Reserved.
Echo.
@echo All parts of this program or any of its contents may be reproduced,
@echo copied, modififed, or adapted, even without the pior written consent
@echo of the author, unless otherwise indicated (Which will never happen)
@echo for stand-alone materials (Bundled Programs)
@echo.