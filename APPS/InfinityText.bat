@echo off
Echo.
Echo InfinityText [Version 1.0]
Echo (C)2014 Igtampe No Rights Reserved
Echo.
Echo.
Echo.
Echo File name with Extention and Directory 
Echo Example: C:\Users\Thing.txt
Echo.
Echo Do not put Quotation Marks on this Field
Echo.
Echo Type only the File name. To put it in %CD%
Echo.
Echo.
Set /p FILE=
Echo.
Echo Writing Space. Infinite Lines of Text Possible.
Echo Hitting Enter will add that line of text to the file.
Echo Type END to stop Writing.
Echo.

:WRITE
Set /p W=
IF /i "%W%"=="%W2%" Set W=-
IF /i "%W%"=="END" goto :END
Set W2=%W%
Echo %W% >> "%FILE%"
Goto :Write

:END
Echo.
Echo Ended Writing.
Echo.
Echo Select a Choice:
Echo.
Echo [1.] Discard the file Completely
Echo [2.] Return to writing
Echo [3.] Check the File
Echo [4.] Exit
Echo.
Set /p Q1=Choice:
Echo.
Echo.
IF "%Q1%"=="1" goto :DEL
IF "%Q1%"=="2" goto :WRITE
IF "%Q1%"=="3" goto :CHECK
Goto :E

:DEL
Echo Are you sure (Y/N)?
Echo.
Set /p Q2=
If /i "%Q2%"=="Y" goto :ActualDel
Echo.
Goto :END

:ActualDel
Echo Deleting the file...
Del "%FILE%"
echo Deleted.
Echo WScript.Sleep 3500> M.vbs
M.vbs
Del M.vbs
Goto :E

:CHECK
Mode con: Lines=999
Echo Here is the File:
Type %FILE%
Echo.
Pause
Mode Con: Lines=25
Goto :END

:E
