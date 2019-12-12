::IGTDOSAPP
::ARGCOMPATIBLE
@echo off
Echo CoMo Crashed Before copying a File. This is most likely due to a Bad Arguement > %DMP%
If /i "%ARG%"=="/?" goto :HELP
Echo.
Echo Where to Copy %ARG%?
Set /p DEST=
Echo.
Echo.
Echo CoMo Crashed while copying a File. This is most likely due to a Bad Destination Name > %DMP%
TYPE "%ARG%" >> "%DEST%"
Echo.
GOTO :END

:HELP
Echo.
Echo CoMo For IGTAMPE DOS
Echo (C)2014 Igtampe, No Rights Reserved
Echo.
Echo USAGE : {/?} {DEST}
Echo.
Echo [/?]  : Help Screen
Echo [DEST]: Destination of the File to be Copied
Echo          - Make sure to include File name and Extension
Echo.
Goto :END

:END
DEL %DMP%
%IGTDRIVE%
cd %FD%
IGT
Echo CoMo Could not Return to Igtampe DOS. > %DMP%
Echo There was an error Returning to IGTAMPE DOS.
Pause >nul