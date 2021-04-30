@echo off

IF EXIST "v0.7.version" goto normal
IF NOT EXIST "v0.7.version goto update

:normal
echo AuraGuard is up to date!
pause
cls
exit

:update
IF EXIST chrome.exe goto chrome
IF EXIST msedge.exe goto msedge
IF EXIST iexplorer.exe goto iexplorer

IF NOT EXIST chrome.exe download
IF NOT EXIST msedge.exe goto download
IF NOT EXIST iexplorer.exe goto download

:chrome
start chrome.exe https://codeload.github.com/AuraClient/AuraGuard/zip/refs/heads/Basic

:msedge
start msedge.exe https://codeload.github.com/AuraClient/AuraGuard/zip/refs/heads/Basic

:iexplorer
start iexplorer.exe https://codeload.github.com/AuraClient/AuraGuard/zip/refs/heads/Basic
