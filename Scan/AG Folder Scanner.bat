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
IF EXIST *good*.exe goto disinfectgoodexe
IF EXIST *1*.exe goto disinfect1exe
IF EXIST *file*.exe goto disinfectfileexe
IF NOT EXIST *file*.exe goto clean
IF NOT EXIST *1*.exe goto clean 
IF NOT EXIST *good*.exe goto clean
:disinfectfileexe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*file*.exe" "*file*.agq"
move "%DRIVE%\*file*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto clean
:disinfectgoodexe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*good*.exe" "*good*.agq"
move "%DRIVE%\*good*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto clean
:disinfect1exe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*1*.exe" "*1*.agq"
move "%DRIVE%\*1*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto clean
:clean
cls
echo Your sytem is clean
pause 
cls
exit


