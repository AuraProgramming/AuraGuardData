@echo off
title AG Folder Scanner
:DRIVESELECT
echo Please enter a VALID folder path you would like to scan
set /p DRIVE=
IF EXIST %DRIVE% goto start
IF NOT EXIST %DRIVE% goto DRIVESELECT
:start
cls
echo Scanning for known viruses...
CD "%DRIVE%"
IF EXIST *good*.exe goto disinfect
IF NOT EXIST *good*.exe goto clean
:disinfect
ren "*good*.exe" "*good*.agq
move "%DRIVE%\*good*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
goto clean
:clean
cls
echo Your sytem is clean
pause 
cls
exit


