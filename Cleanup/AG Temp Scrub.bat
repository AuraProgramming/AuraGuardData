@echo off
title AG Temp Scrub
echo 1. Continue
echo 2. Cancel
@choice /c:12 /n
if errorlevel 1 goto cont
if errorlevel 2 goto end
:cont
@echo on
@del /q %temp%\*.*
@echo off
:end
cls
exit
