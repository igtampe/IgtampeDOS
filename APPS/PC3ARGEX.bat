::IGTDOSAPP
::ARGCOMPATIBLE
Echo off

If /I "%C%"=="PC3ARGEX" goto :SKIP
Set ARG=%1

:SKIP
If /I "%ARG%"=="/1" goto :1
Echo PC3ARGEX
Echo.
Echo Example of The New PC3 Arguement System.
Echo.
Echo About PC3ARGEX:
Echo.
Echo Use "/1" to see an Example.
Echo.
Echo To use without IGT, Start this program Like this:
Echo START %RAWFD%\APPS\PC3ARGEX.bat /1
Goto :END

:1
IF /I "%C%"=="PC3ARGEX" goto :1IGT
Echo Great! You followed My Instructions!
Pause
Goto EOF

:1IGT
Echo OK. You put the arguement in IGT. Now put it in as I Told you!
Pause
Goto :END

:OTHEREND
CD %FD%
IGT.bat
Echo There was an error returning to IGTAMPE DOS
Pause
Goto EOF

:END
If /I "%C%"=="PC3ARGEX" goto OTHEREND