@echo off
mkdir "C:\AuraGuard\"
echo Extract the file to C:\AuraGuard\ and rename the folder to AuraGuard
pause
mkdir "C:\AuraGuard\"
mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\AuraGuard\AuraGuard\AuraGuard-Basic\Scan\AG File Scanner.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\AuraGuard\AuraGuard\AuraGuard-Basic\Scan\AG Folder Scanner.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\AuraGuard\AuraGuard\AuraGuard-Basic\Scan\AG Folder Scanner.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\AuraGuard\AuraGuard\AuraGuard-Basic\Cleanup\AG Cleanup.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
move "C:\AuraGuard\AuraGuard\AuraGuard-Basic\Cleanup\AG Temp Scrub.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AuraGuard\"
