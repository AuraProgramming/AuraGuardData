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
IF EXIST "*good*.exe" goto disinfectgoodexe
IF EXIST "*draw*.exe" goto disinfectdrawexe
IF EXIST "*1*.exe goto" disinfect1exe
IF EXIST "*file*.exe" goto disinfectfileexe
IF EXIST "*acy*.exe" goto disinfectacyexe
IF EXIST "*clic*.exe" goto disinfectclicexe
IF EXIST "*cyclic*.exe" goto disinfectcyclicexe
IF EXIST "*gvpr*.exe" goto disinfectgvprexe
IF EXIST "*popen*.exe" goto disinfectpopenexe
IF EXIST "*scalc*.exe" goto disinfectscalcexe
IF EXIST "*cmd*.exe" goto disinfectcmdexe
IF EXIST "*runtime*.exe" goto disinfectruntimexe
IF EXIST "*broker*.exe" goto disinfectbrokerexe

IF NOT EXIST "*acy*.exe" goto scan1
:scan1
IF NOT EXIST "*draw*.exe" goto scan2
:scan2
IF NOT EXIST "*file*.exe" goto scan3
:scan3
IF NOT EXIST "*1*.exe" goto scan4
:scan4
IF NOT EXIST "*clic*.exe" goto scan5
:scan5
IF NOT EXIST "*cyclic*" goto scan6
:scan6
IF NOT EXIST "*gvpr*.exe" goto scan7
:scan7
IF NOT EXIST "*popen*.exe" goto scan8
:scan8
IF NOT EXIST "*scalc*.exe" goto scan 9
:scan9
IF NOT EXIST "*cmd*.exe" goto scan 10
:scan 10
IF NOT EXIST "*runtime*.exe" goto scan 11
:scan 11
IF NOT EXIST "*broker*.exe" goto scan 12
:scan 12
IF NOT EXIST "*good*.exe" goto clean

:disinfectcruntimeexe
echo "*runtime*.exe" in %DRIVE% is potentially infected
pause
ren "*runtime*.exe" "*runtime*.agq"
move "%DRIVE%\*runtime*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*runtime*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectbrokerexe
echo "*broker*.exe" in %DRIVE% is potentially infected
pause
ren "*broker*.exe" "*broker*.agq"
move "%DRIVE%\*broker*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*broker*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectcmdexe
echo "*cmd*.exe" in %DRIVE% is potentially infected
pause
ren "*cmd*.exe" "*cmd*.agq"
move "%DRIVE%\*cmd*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*cmd*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectgvprexe
echo "*gvpr*.exe" in %DRIVE% is potentially infected
pause
ren "*gvpr*.exe" "*gvpr*.agq"
move "%DRIVE%\*gvpr*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*gvpr*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectscalcexe
echo "*scalc*.exe" in %DRIVE% is potentially infected
pause
ren "*scalc*.exe" "*scalc*.agq"
move "%DRIVE%\*scalc*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*scalc*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectpopenexe
echo "*popen*.exe" in %DRIVE% is potentially infected
pause
ren "*popen*.exe" "*popen*.agq"
move "%DRIVE%\*popen*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*popen*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectcyclicexe
echo "*cyclic*.exe" in %DRIVE% is potentially infected
pause
ren "*cyclic*.exe" "*cyclic*.agq"
move "%DRIVE%\*cyclic*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*cyclic*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectclicexe
echo "*clic*.exe" in %DRIVE% is potentially infected
pause
ren "*clic*.exe" "*clic*.agq"
move "%DRIVE%\*clic*.agq" C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*clic*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectacyexe
echo "*acy*.exe" in %DRIVE% is potentially infected
pause
ren "*acy*.exe" "*acy*.agq"
move "%DRIVE%\*acy*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*acy*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectdrawexe
echo "*draw*.exe" in %DRIVE% is potentially infected
pause
ren "*draw*.exe" "*draw*.agq"
move "%DRIVE%\*draw*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*draw*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectfileexe
echo "*file*.exe" in %DRIVE% is potentially infected
pause
ren "*file*.exe" "*file*.agq"
move "%DRIVE%\*file*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*file*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfectgoodexe
echo "*good*.exe" in %DRIVE% is potentially infected
pause
ren "*good*.exe" "*good*.agq"
move "%DRIVE%\*good*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*good*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:disinfect1exe
echo "*1*.exe" in %DRIVE% is potentially infected
pause
ren "*1*.exe" "*1*.agq"
move "%DRIVE%\*1*.agq" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
echo Threat disinfected.
echo "*1*.exe" in %DRIVE% was infected and quarantined>>LOG.ag
pause
goto start

:clean
cls
echo Your system is clean
pause 
cls
exit


