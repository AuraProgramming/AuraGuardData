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
IF EXIST *draw*.exe goto disinfectdrawexe
IF EXIST *1*.exe goto disinfect1exe
IF EXIST *file*.exe goto disinfectfileexe
IF EXIST *acy*.exe goto disinfectacyexe
IF EXIST *clic*.exe goto disinfectclicexe
IF EXIST *cyclic*.exe goto disinfectcyclicexe
IF EXIST *gvpr*.exe goto disinfectgvprexe

IF NOT EXIST *acy*.exe goto scan1
:scan1
IF NOT EXIST *draw*.exe goto scan2
:scan2
IF NOT EXIST *file*.exe goto scan3
:scan3
IF NOT EXIST *1*.exe goto scan4
:scan4
IF NOT EXIST *clic*.exe goto scan5
:scan5
IF NOT EXIST *cyclic* goto scan6
:scan6
IF NOT EXIST *gvpr*.exe goto scan7
:scan7
IF NOT EXIST *good*.exe goto clean

:disinfectgvprexe
echo "*gvpr*.exe in %DRIVE% is potentially infected
pause
ren "*gvpr*.exe" "*gvpr*.agq"
move "%DRIVE%\*gvpr*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto start

:disinfectcyclicexe
echo "*cyclic*.exe in %DRIVE% is potentially infected
pause
ren "*cyclic*.exe" "*cyclic*.agq"
move "%DRIVE%\*cyclic*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto start

:disinfectclicxe
echo "*clic*.exe in %DRIVE% is potentially infected
pause
ren "*clic*.exe" "*clic*.agq"
move "%DRIVE%\*clic*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto start

:disinfectacyexe
echo "*acy*.exe in %DRIVE% is potentially infected
pause
ren "*acy*.exe" "*acy*.agq"
move "%DRIVE%\*acy*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto start

:disinfectdrawexe
echo "*draw*.exe in %DRIVE% is potentially infected
pause
ren "*draw*.exe" "*draw*.agq"
move "%DRIVE%\*draw*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto start

:disinfectfileexe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*file*.exe" "*file*.agq"
move "%DRIVE%\*file*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto start

:disinfectgoodexe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*good*.exe" "*good*.agq"
move "%DRIVE%\*good*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto start

:disinfect1exe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*1*.exe" "*1*.agq"
move "%DRIVE%\*1*.agq" "C:\Program Files\AuraGuard\AG Quarantine\"
echo Threat disinfected.
pause
goto start

:clean
cls
echo Your sytem is clean
pause 
cls
exit


