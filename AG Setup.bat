@echo off
mkdir "C:\Extract AG Here\"
echo Extract the file to C:\Extract AG Here\ and rename the folder to AuraGuard
pause
mkdir "C:\AuraGuard\"
mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\Extract AG Here\AuraGuard\AuraGuard-Basic\Scan\AG File Scanner.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\Extract AG Here\AuraGuard\AuraGuard-Basic\Scan\AG Folder Scanner.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\Extract AG Here\AuraGuard\AuraGuard-Basic\Scan\AG Folder Scanner.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\Extract AG Here\AuraGuard\AuraGuard-Basic\Cleanup\AG Cleanup.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\Extract AG Here\AuraGuard\AuraGuard-Basic\Cleanup\AG Temp Scrub.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
