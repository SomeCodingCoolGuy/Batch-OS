@echo off

:home

title Log in to Exp.os16

color 07

cls

echo.

echo Exp.os16 Accounts

echo =================

echo.

echo %TIME% %DATE%

echo [1] Log In

echo [2] Sign Up

echo [3] Exit

echo.

set /p op=

if %op%==1 goto 123

if %op%==2 goto 223

if %op%==3 exit

goto error

:223

cls

echo Sign Up

echo ======================================

echo.

echo %TIME% %DATE%

set /p newname="Enter new username:"

if "%newname%"=="%newname%" goto inputname

:inputname

cd "%userprofile%\documents"

if exist "cmdacoBin" goto skip

if not exist "cmdacoBin" goto noskip

:noskip

md "cmdacoBin"

goto skip

:skip

cd "%userprofile%\documents\cmdacoBin"

if exist "%newname%.bat" goto namexist

if not exist "%newname%.bat" goto skip2

:skip2

echo set realusername=%newname%> "%newname%.bat"

goto next

:next

echo.

set /p pswd=Enter new Password:

if "%pswd%"=="%pswd%" goto inputpass

:inputpass

cd "%userprofile%\documents\cmdacoBin"

echo set password=%pswd%>> "%newname%.bat"

goto next1

:namexist

echo.

echo The entered username already exists.

echo Press any key to return. . .

pause >nul

goto 2

:next1

cls

echo Exp.os16 Accounts

echo =================

echo.

echo %TIME% %DATE%

echo Your account has been successfully created!

echo.

pause

goto home

:123

color 07

cls

echo Exp.os16 Accounts Log In

echo ========================

echo.

echo %TIME% %DATE%

Set /p logname=Username:

if "%logname%"=="%logname%" goto 2.1

:2.1

echo.

set /p logpass="Password:"

if "%logpass%"=="%logpass%" goto login

:login

cd "%userprofile%\documents\cmdacoBin"

if exist "%logname%.bat" goto call

if not exist "%logname%.bat" goto errorlog

:call

call "%logname%.bat"

if "%password%"=="%logpass%" goto logdone

goto errorlog

:errorlog

color 0c

echo.

echo Username or Password incorrect.

echo Access denied.

pause >nul

goto home

:logdone

cls

echo Command Prompt

echo ==============

echo.

echo %TIME% %DATE%

echo Successfully logged in!

echo.

pause

goto account

:account

cls

cd "%userprofile%\documents\cmdacoBin"

call "%realusername%color.bat"

call "%realusername%.bat"

color %colorcode%

cls

echo.

echo -------------------------------------------------------------------------------

echo %realusername%

echo -------------------------------------------------------------------------------

break off

Title Command Prompt

cls

:cmd

echo Type "home" any time to go to the current user profile directory.

echo Type "desktop" any time to go to the current user desktop.

echo.

echo Type help to see list of common commands like cd, rd, md, del,

echo ren, replace, copy, xcopy, move, attrib, tree, edit, and cls.

echo Type [command]/? for detailed info.

echo.

echo Type red, blue, or green to change color of text.

echo Type normal to change the color of the text back.

echo.

echo Type apps to go to app screen.

echo.

echo %TIME% %DATE%

echo Directory: %CD%

set /P CMD=Command:

if "%CMD%" == "cls" goto cls

if "%CMD%" == "home" goto home2

if "%CMD%" == "desktop" goto desktop

if "%CMD%" == "red" goto red

if "%CMD%" == "green" goto green

if "%CMD%" == "normal" goto normall12

if "%CMD%" == "blue" goto blue

if "%CMD%" == "apps" goto Beginning

cls

%CMD%

cd C:\

goto cmd

:cls

cls

goto cmd

:home2

cd /d %USERPROFILE%

cls

goto cmd

:desktop

cd /d %SystemDrive%\Users\%USERNAME%\Desktop

cls

goto cmd

:red

color 0c

cls

goto cmd

:green

color 0a

cls

goto cmd

:blue

color 9

cls

goto cmd

:normall12

color 7

cls

goto cmd

cls

:Beginning

cls

echo Type [1] to start Browser.

echo Type [2] to start Calculator.

echo Type [3] to start File editor.

echo Type [4] to start PC cleaner.

echo Type [5] to start random string generator.

echo Type [6] to start start screen

echo Type [7] to start batch file maker/editor

echo Type [8] to exit Exp.os12.

echo %TIME% %DATE%

set /p input= "input number"

if %input%==1 goto Browser

if %input%==2 goto Calculator

if %input%==3 goto File editor

if %input%==4 goto menu

if %input%==5 goto random

if %input%==6 goto account

if %input%==7 goto begg

if %input%==8 exit

:random

cls

setlocal enabledelayedexpansion

echo =================================

echo Exp.os16 random string generator.

echo =================================

echo %TIME% %DATE%

set /p input= "Input string length."

set _RNDLength=%input%

set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890

set _Str=%_Alphanumeric%\

:_LenLoop

if not "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop

set _tmp=%_Str:~9,1%

set /A _Len=_Len+_tmp

set _count=0

set _RndAlphaNum=

:_loop

set /a _count+=1

set _RND=%Random%

set /A _RND=_RND%%%_Len%

set _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!

if !_count! lss %_RNDLength% goto _loop

echo Random string is !_RndAlphaNum!

set /p uppit= "Do you want to exit? (y/n)"

if %uppit%==y goto Beginning

if %uppit%==n goto random

:menu

cls

echo ===========================

echo Exp.os16 PC Cleanup Utility

echo ===========================

echo %TIME% %DATE%

echo.

echo Select a tool

echo =============

echo.

echo [1] Delete Internet Cookies

echo [2] Delete Temporary Internet Files

echo [3] Disk Cleanup

echo [4] Disk Defragment

echo [5] Exit

echo.

set /p op=Run:

if %op%==1 goto 1

if %op%==2 goto 2

if %op%==3 goto 3

if %op%==4 goto 4

if %op%==5 goto Beginning

goto error

:1

cls

echo =======================

echo Delete Internet Cookies

echo =======================

echo.

echo %TIME% %DATE%

echo Deleting Cookies...

ping localhost -n 3 >nul

del /f /q "%userprofile%\Cookies\*.*"

cls

echo =======================

echo Delete Internet Cookies

echo =======================

echo.

echo %TIME% %DATE%

echo Cookies deleted.

echo.

echo Press any key to return to the menu. . .

pause >nul

goto menu

:2

cls

echo ===============================

echo Delete Temporary Internet Files

echo ===============================

echo.

echo %TIME% %DATE%

echo Deleting Temporary Files...

ping localhost -n 3 >nul

del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"

cls

echo ===============================

echo Delete Temporary Internet Files

echo ===============================

echo.

echo %TIME% %DATE%

echo Temporary Internet Files deleted.

echo.

echo Press any key to return to the menu. . .

pause >nul

goto menu

:3

cls

echo ============

echo Disk Cleanup

echo ============

echo.

echo %TIME% %DATE%

echo Running Disk Cleanup...

ping localhost -n 3 >nul

if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"

if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"

if exist "C:\tmp" del /f /q "C:\tmp\*.*"

if exist "C:\temp" del /f /q "C:\temp\*.*"

if exist "%temp%" del /f /q "%temp%\*.*"

if exist "%tmp%" del /f /q "%tmp%\*.*"

if not exist "C:\WINDOWS\Users\*.*" goto skip

if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q

if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q

if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q

if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q

if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q

if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q

if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q

if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q

if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q

if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q

if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q

if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q

if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q

if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q

if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q

:skip

if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q

if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q

:skippy

if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q

if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"

cls

echo ============

echo Disk Cleanup

echo ============

echo.

echo %TIME% %DATE%

echo Disk Cleanup successful!

echo.

pause

goto menu

:4

cls

echo ===============

echo Disk Defragment

echo ===============

echo.

echo %TIME% %DATE%

echo Defragmenting hard disks...

ping localhost -n 3 >nul

defrag -c -v

cls

echo ===============

echo Disk Defragment

echo ===============

echo.

echo %TIME% %DATE%

echo Disk Defrag successful!

echo.

pause

goto menu

:error

cls

echo Command not recognized.

ping localhost -n 4 >nul

:Browser

title Batch browser

:start

cls

echo _/Main Menu\____________________________Exp.os16 Browser______________________________

echo _____________________________________________________________________________________)

echo Welcome to Exp.os16 Browser!

echo Type [1] to open search.

echo Type [2] to open apps.

echo Type [3] to Exit This Browser.

echo %TIME% %DATE%

set /p menu=

if %menu%==1 (

set menu=

goto middle

)

if %menu%==2 (

set menu=

goto end

)

if %menu%==3 goto Beginning

cls

:middle

echo _/Search\____________________________Exp.os16 Browser_________________________________

echo _____________________________________________________________________________________)

echo Enter keywords or surf the web.

echo Type "1" to exit Search.

echo %TIME% %DATE%

set /p keyword=

if %keyword%==1 (

set keyword=

goto start

)

start "" https://www.google.com/?gws_rd=ssl#q=%keyword%

start %keyword%

pause>null

cls

goto middle

pause>null

:end

cls

echo _/Apps\____________________________Exp.os16 Browser___________________________________

echo _____________________________________________________________________________________)

echo These are your apps.

echo Type [1] to start Google.

echo Type [2] to start Youtube.

echo Type [3] to start Reddit

echo Type [4] to start Instructables

echo Type [5] to Exit Apps.

echo %TIME% %DATE%

set /p select=

if %select%==1 (

set select=

start "" https://www.google.com/?gws_rd=ssl

goto end

)

if %select%==2 (

set select=

start "" https://youtube.com/

goto end

)

if %select%==3 (

set select=

start "" https://reddit.com/

goto end

)

if %select%==4 (

set select=

start "" https://instructables.com/

goto end

)

if %select%==5 (

set select=

goto start

)

:Calculator

title Exp.os16Calculator

:main

cls

echo ========================================

echo Your previous Calulated number was %sum%

echo ========================================

echo %TIME% %DATE%

echo.

echo Enter the specified number to continue..

echo.

echo [1] Addition

echo.

echo [2] Subtraction

echo.

echo [3] Divison

echo.

echo [4] Multipication

echo.

echo [5] Square, Cube or any power

echo.

echo [6] Exit

set /p do=Value.

if %do%== 1 goto add

if %do%== 2 goto sub

if %do%== 3 goto div

if %do%== 4 goto mul

if %do%== 5 goto power1

if %do%== 6 goto Beginning

echo.

cls

echo Invalid value = %do%

echo.

pause

cls

goto main

:add

cls

echo ADDITON

echo.

set /p no1="num1. "

echo +

set /p no2="num2. "

set /a sum=no1+no2

echo ------------

echo %sum%

echo.

pause

cls

goto main

:sub

cls

echo SUBTRACTION

echo.

set /p no1="num1. "

echo -

set /p no2="num2. "

set /a sum=no1-no2

echo ------------

echo %sum%

echo.

pause

cls

goto main

:div

cls

echo DIVISON

echo.

set /p no1="num1. "

echo /

set /p no2="num2. "

set /a sum=no1/no2

echo ------------

echo %sum%

echo.

pause

cls

goto main

:mul

cls

echo MULTIPLICATION

echo.

set /p no1="num1. "

echo *

set /p no2="num2. "

set /a sum=no1*no2

echo ------------

echo %sum%

echo.

pause

cls

goto main

:power1

cls

echo Square, Cube or any power

echo.

echo Select the number

set /p num=

cls

echo Select the power

set /p pow=

set /a pow=%pow%+1

set ans=%num%

cls

:power2

set /a pow=%pow%-1

if %pow% LSS 1 goto next

set /a ans=%ans%*%num%

goto power2

:next

echo Your answer is %ans%

echo.

goto main

:File editor

title Exp.os16File editor

:options

cls

echo Exp.os16 File editor.

echo Type [1] to edit a File that already exists.

echo Type [2] to edit the name of your document.

echo Type [3] to edit the contents of your File.

echo Type [4] to exit.

echo %TIME% %DATE%

set /p you=">"

if %you%==1 goto 1

if %you%==2 goto 2

if %you%==3 help

if %you%==4 goto Beginning

:1

echo Name Your File.

set /p name=">"

goto options

:2

cls

echo - %name%

echo To add another line to your text press enter. To stop editing press the big

echo red X in the corner of this screen.

echo.

echo Cannot use symbols:" > < | " if you use any of them the window closes.

echo.

set /p content=">"

echo %content%>>%name%

cls

echo Save Successful!

ping localhost -n 2 >nul

goto 2

:help

cls

:0

cls

echo - %name%

echo Type in the name.

echo The file has to be in the same directory as notepad.

set /p edit=">"

edit %edit%

goto options

:begg

cls

echo ==========================

echo Exp.os16 batch file editor

echo ==========================

echo %TIME% %DATE%

:begg

set /p opttt="edit file? (y/n)"

if %opttt%=="y" goto hurrr

if %opttt%=="n" goto beggg

:beggg

set /p filename="name file"

set /p fileinsides="create file""

if exist "expfilebin" goto hurdur

if not exist "expfilebin" goto hurdurr

:hurdurr

md "expfilebin"

goto hurdur

:hurdur

cd "%userprofile%\documents\expfilebin"

echo @echo off>> "%filename%.bat"

echo echo %fileinsides%>> "%filename%.bat"

echo pause>> "%filename%.bat"

:hurrr

set /p fileopen="open file and state file name"

if exist "%fileopen%" goto hhh

if not exist "%fileopen%" goto unfound

:hhh

set /p ff="input file contents"

echo echo %ff%>> "%fileopen%.bat"

echo pause>> "%fileopen%.bat"

goto exx

:unfound

echo file not found

pause

goto begg

:exx

set /p exxx="exit (y/n)"

if %exxx%==y goto Beginning

if %exxx%==n goto begg