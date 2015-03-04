@echo off
:loop
nircmd win hide title "volume.bat"
nircmd.exe mutesysvolume 0
nircmd setsysvolume 65535
goto loop