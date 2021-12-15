@echo off
shutdown /s /f /t 13 /c " "
color 0c
echo Let me check your authenticity 
timeout /t 2 /nobreak > nul
cls
color 0c
set /p pass=Enter Your Password : 
if %pass%==continue goto yes
if not %pass%==continue goto no

:no
cls
color 0a
echo Your Passord Was Incorrect
timeout /t 2 /nobreak > nul
cls
set /p pass=Enter Your Password : 
if %pass%==continue goto yes
if not %pass%==continue goto bye
exit

:bye
cls
echo Bye Bye
echo All Trials Fail
exit

:yes
shutdown /a 
exit