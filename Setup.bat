@echo off
echo Please Extract AuraGuardOS-BETA0.5.zip to your downloads folder
pause
ren "C:\Users\%USERFROFILE%\Downloads\AuraGuardOS-BETA0.5" "AuraGuard"
ren "C:\Users\%USERFROFILE%\Downloads\AuraGuardOS-BETA0.5\AuraGuardOS-BETA0.5" "AuraGuardOS"
move "C:\Users\%USERPROFILE%\Downloads\AuraGuard" "C:\"
