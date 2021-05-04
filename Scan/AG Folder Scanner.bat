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
IF EXIST *popen*.exe goto disinfectpopenexe
IF EXIST *scalc*.exe goto disinfectscalcexe

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
IF NOT EXIST *popen*.exe goto scan8
:scan8
IF NOT EXIST *scalc*.exe goto scan 9
:scan9
IF NOT EXIST *good*.exe goto clean

:disinfectgvprexe
echo "*gvpr*.exe in %DRIVE% is potentially infected
pause
ren "*gvpr*.exe" "*gvpr*.agq"
move "%DRIVE%\*gvpr*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*gvpr*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:disinfectscalcexe
echo "*scalc*.exe" in %DRIVE% is potentially infected
pause
ren "*scalc*.exe" "*scalc*.agq"
move "%DRIVE%\*scalc*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*scalc*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:disinfectpopenexe
echo "*popen*.exe" in %DRIVE% is potentially infected
pause
ren "*popen*.exe" "*popen*.agq"
move "%DRIVE%\*popen*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*popen*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:disinfectcyclicexe
echo "*cyclic*.exe" in %DRIVE% is potentially infected
pause
ren "*cyclic*.exe" "*cyclic*.agq"
move "%DRIVE%\*cyclic*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*cyclic*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:disinfectclicxe
echo "*clic*.exe" in %DRIVE% is potentially infected
pause
ren "*clic*.exe" "*clic*.agq"
move "%DRIVE%\*clic*.agq" C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*clic*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:disinfectacyexe
echo "*acy*.exe" in %DRIVE% is potentially infected
pause
ren "*acy*.exe" "*acy*.agq"
move "%DRIVE%\*acy*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*acy*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:disinfectdrawexe
echo "*draw*.exe" in %DRIVE% is potentially infected
pause
ren "*draw*.exe" "*draw*.agq"
move "%DRIVE%\*draw*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*draw*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:disinfectfileexe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*file*.exe" "*file*.agq"
move "%DRIVE%\*file*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*file*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:disinfectgoodexe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*good*.exe" "*good*.agq"
move "%DRIVE%\*good*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*good*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:disinfect1exe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*1*.exe" "*1*.agq"
move "%DRIVE%\*1*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*1*.exe" in %DRIVE% was infected and quarantined>>AG LOG.txt
pause
goto start

:clean
cls
echo Your system is clean
pause 
cls
exit


