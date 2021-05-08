@echo off
ipconfig/release
ipconfig/renew
:flush
rem Flushing...
ipconfig /flushdns
goto flush
