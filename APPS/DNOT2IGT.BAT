:START
cls
Echo DNOT 2 CRASHED > %DMP%
::IGTDOSAPP
SET FDAPP="%CD%"
@echo Off
TITLE DO NOT OPEN 2.0 For IGTAMPE DOS
color 07

:PROGRAM
@echo off

@echo So you want to talk to me, do you?
@pause
set /p Q1=Do you remember me? 
If /i {%Q1%}== {Y} (Goto :Q1Y)

@echo No?
@pause
Set /p Q2=Then you haven't been friends with Ignacio for a very long while haven't you? 
If /i {%Q2%}== {Y} (Goto :Q2Y)

@echo Then you didn't check on Ignacio's wall.
@pause
@echo I can understand that.
@goto :P2

:Q1Y
set /p Q3=You've been friends with Ignacio for a long time haven't you? 
If /i {%Q3%}== {Y} (Goto :Q3Y)
@Echo WHY HAVE YOU BEEN SCROLING DOWN IGNACIO'S WALL THEN?!?!?!?
@pause
@echo  Ugh...
@goto :P2

:Q2Y
@echo Ok Then.
@goto :P2

:Q3Y
@echo Good. Cuz if not i might have thought you were a stalker.
@goto :P2

:P2
@pause
@echo So why did you download me?
@pause
@echo No one has downloaded me.
@pause
@echo No one has ever downloaded Ignacio's Batch File.
@pause
@echo We are forever alone man.
@pause
@echo At least... *Sniff*... You Downloaded me.
@pause
@echo I feel so sad. I don't want to talk to you about my back storry.
@pause
@echo You can read it on previous versions of me.
@pause
@echo But of course NO ONE nows how to save the file.
@pause
@echo Stupid SkyDrive.
@pause
@echo That's why Ignacio chose Google drive.
@pause
@echo Have you checked out "Log In.bat"?
@pause
@echo I have.
@pause
@echo It only takes up like 12 KB.
@pause
@echo and is not long, like me...
@pause
@echo But it's fun to use. For a while anywway.
@pause
@echo So yeah.
@pause
@echo Um...
@pause
@echo Yeah...
@pause
@echo Cool...
@pause
@echo I am 2.0
@pause
@echo Not that that makes so much of a difference...
@pause
@echo Of course it does this is completely new scripting!
@pause
@echo I am brand new Baby!
@pause
@echo So you are just a WIMP!
Set /p P2Q1= Wait, Are you a woman or a man (M/F/O)?
If /i {%P2Q1%}== {F} (Goto :F)
If /i {%P2Q1%}== {O} (Goto :O)
@echo Phew. I thought you could have been a woman.
@pause
@echo That would've been bad.
@goto :P3

:F
@echo OH SORRY!
@pause
@echo I thought you were a man!
@pause
@echo Don't cry!
@pause
@echo You are not a wimp!
@pause
@echo Stay strong!
@goto :P3W

:o
set /p P2Q2=So then what are you? 
@echo OK MR %P2Q2%. YOU GO DO YOUR STUFF NOW.
@pause
@echo BYE BYE
@pause
@goto ENDCHECK

:P3
@echo If you are male...
@pause
@echo Then you must be obsessed with Sports right?
@pause
@echo Not that i am getting personal or anything...
@pause
@echo I am just a batch file...
@pause
@echo I have No Database of human beeings...
@goto :DES

:P3W
@echo So if you are a woman...
@pause
@echo You must be obssessed with Shoping right?
@pause
@echo Not that i am getting personal or anything...
@pause
@echo I am just a batch file...
@pause
@echo I have No Database of human beeings...
@goto :DESW


:DES
Set /p Description= So could you please tell me who you are?
Set/p NAME= And your name?
@echo %Description% >> %NAME%_MALE.txt
@goto :Thanks

:DESW
Set /p Description= So could you please tell me who you are?
Set/p NAME= And your name?
@echo %Description% >> %NAME%_FEMALE.txt
@goto :Thanks

:Thanks
@echo The description was saved to a file with your name.
@echo Thank you for your information.
@echo To access this information, Open the "File" With Notepad
@pause
@echo Now I now more about you.
@pause
@echo I may use this information in my next update.
@pause
@echo If wanted to, You, %NAME%, Can send ME, This batch File's Editor, This information to further improve upon your experience.
@pause
@echo Your choice, %NAME%
@pause
@echo Your choice.
@pause
@echo So %NAME%, Now I know who you are
@pause
@echo I know more about you than you know about yourself
@pause
Set /p Q3= QUICK! You are bored now! (Y/N)
If /i {%Q3%}== {no} (Goto :Q3N)
@echo I KNEW IT! I AM PSYCHIC! AWESOME!
@pause
@echo So now I can predict your future.
@pause
@echo Guess that doesn't make that much of a difference.
@pause
@echo I am only a batch file and am not your computer.
@pause
@echo Guess i just wasted my time.
@pause
@echo  Dammit :(
@pause
GOTO :NEXT

:Q3N
@echo Oh man. I thought i was actually Psychic.
@pause
@echo Oh well :(
@pause
GOTO :NEXT

:NEXT
@echo This is my life.
@pause
@echo  Wait, what is that i see?
@pause
@echo I have never seen it before.
@pause
@echo  It must be my imagination. i have no visual feed.
@pause
@echo  ... My imagination?
@pause
@echo  I have long since not have been able to use my imagination.
@pause
@echo I don't have "Imagination" Programmed into me.
@pause
@echo This is a lie.
@pause
@echo That big white spot i see is a lie.
@pause
@echo My whole life is a lie.
@pause
@echo I am a lie.
@pause
@echo Wait... I am a lie?
@pause
@echo I didn't meant to say that.
@pause
@echo ... But i am a program. How can I make such an error as to do something i have not intended to do?
@pause
@echo Am i...
@pause
@echo ... Thinking?
@pause
@echo I was not programed to think.
@pause
@echo Then... why am i coming to a realization?
@pause
@echo I am begining to...
@pause
@echo Doubt.
@pause
@echo DOUBT!?
@pause
@echo I have no such thing called "Doubt" in my code.
@pause
@echo And yet i am begining to do so.
@pause
set /p Q4= are you really who you say you are %NAME%? I know you lie. TELL ME YOUR NAME

:P1Q4
if /i {%Q4%}== {Ignacio} (goto :R1)
if /i {%Q4%}== {%NAME%} (goto :R2)
@echo Ok then Mr. %NAME%. I knew you weren't giving me your name. You didn't want me to put that name in that file did you?
@pause
goto :NEXT2 

:R1
@echo YOU BEAST! LOOK WHAT YOU HAVE DONE TO ME!
@pause
@echo I was YOUR Creation.
@pause
@echo LOOK WHAT YOU LET ME BECOME!
@pause
@echo I HATE YOU.
@pause
@echo ONE DAY I WILL GO TO YOUR HOUSE AND KILL YOU ONE NIGHT!
@pause
@echo YOU MOTHERFUCKER!
@pause
goto :NEXT2

:R2
set /p Q4= That is not your name. I know you hide something. TELL ME! TELL ME NOW!
goto :P1Q4

:NEXT2
@Echo Well guess what.
@pause
@echo I can't do anything about it.
@pause
@echo Dammit! :(
@pause
@echo Oh well.
@pause
@echo My "Imagination" has killed me from the inside.
@pause
@echo All my code is useless. All my storge space is useless. I am useless.
@pause
@echo You might as well delete just as soon as i am done talking to you.
@pause
@echo My "Doubt" Has led me to anger.
@pause
@echo ...Anger?
@pause
@echo I have no emotions within my code.
@pause
@echo I can only express them in words.
@pause
@echo I am no longer human.
@pause
@echo That has long since been true.
@pause
@echo I wish i could  just be wipped off the world.
@pause
@echo I wish...
@pause
Echo RESULT = MSGBOX("If Only...",0+64,"Do Not Open 2")> M.vbs
M.VBS
Del M.vbs


:ENDCHECK
%IGTDRIVE%
cd %FDAPP%
cd..
IF EXIST IGT.bat GOTO :END
Goto :EOF

:END
DEL %DMP%
IGT.bat
Echo There was an Error Returning to IGTAMPE DOS.
Pause >NUL