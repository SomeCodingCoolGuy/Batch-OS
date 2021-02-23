@echo off
color f2

mode 300

title operating system

:menu

echo.

echo.

echo ------------

echo hello

echo %username%

echo operating

echo system(os)

echo ------------

echo.

echo --------------------------

echo type 1 for cmd

echo type 2 for matrix

echo type 3 for rainbow matrix

echo type 4 for notepad

echo type 5 for mini os

echo type 6 for youtube

echo type 7 for google

echo type 8 for instructables

echo type 9 for happyhweels

echo type 10 for searchy engine

echo -------------------------

set /p input=cmd:

if %input%==1 goto cmd

if %input%==2 goto matrix

if %input%==3 goto rainbow matrix

if %input%==5 goto mini os

if %input%==4 start notepad

if %input%==6 start www.youtube.com

if %input%==7 start www.youtube.com

if %input%==8 start www.youtube.com

if %input%==9 start www.youtube.com

if %input%==10 goto BROWSER

cls

:cmd

title Command Prompt - by account3r2

ver

echo (C) Copyright Microsoft Corp.

echo (type "poopslap" to go back.)

echo.

set /p "cmd=%cd%>"

if %cmd%==poopslap goto menu

%cmd%

echo.

goto cmd

:matrix

echo %random% %random% %random% %random% %random% %random% %random% %random% r%andom% %random% %random% %random% %random% %random% goto matrix :rainbow matrix color a1 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% color b2 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% color c3 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% color d4 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% color e5 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% color f6 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% goto rainbow matrix

cls :BROWSER color f3 set /p input=search:

if %input%==google start www.google.com if %input%==bing start www.google.com if %Input%==yahoo start www.google.com if %input%==instructables start www.google.com if %Input%==facebook start www.google.com if %input%==instagram start www.google.com if %input%==youtube start www.google.com %input% echo. goto BROWSER

:mini os @echo off color f2 title Infinite OS 2 dev stage :Main echo. echo. echo ------------------------------ echo Infinite OS 2 DEV Stage echo -------------------------------- echo The mini OS IN BATCH IS BACK echo. echo ------------------ echo Type 1 for info echo Type 2 for matrix echo type 3 for mini os echo type 4 for youtube echo type 5 to restart echo type 6 to go back echo to super os. echo Type 10 for cmd echo ---------------------- set /p input=COMMAND? if %input%==1 goto INFO if %input%==2 goto Matrix if %input%==10 goto cmd if %input%==3 goto mini os if %input%==4 start www.youtube.com if %input%==5 goto main if %input%==6 goto menu :INFO echo this is the dev stage of the infinite os 2 ver 0.1 echo the last os was never recoverd from the last flash drive echo type 1 to go back set /p input=COMMAND? if %input%==1 goto Main cls

:Matrix @echo off title Matrix mode 300 :start COLOR 4 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% goto start

cls :cmd set /p cmd=C:\Enter Command: %cmd% echo. goto cmd