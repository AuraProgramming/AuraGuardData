@echo off
title AG File Scanner
echo Enter file path:
set /p file= 
powershell Get-FileHash %file% -Algorithm MD5 ^| Format-Table -Property Hash>scannedhash.txt
cls
for /f "tokens=* delims= " %%x in (scannedhash.txt) do (
	for /f "tokens=* delims= " %%y in ("AG DB.txt") do (
		if "%%x" == "%%y" (
			ren "%file%" "%file%.AGQ"
			move "%file%" "C:\AuraGuard\AG Quarantine"
			echo. %file% was infected and quarantined.
			echo. %file% was infected and quarantined.>>"AG LOG.txt"
			pause >nul
			cls
		)
	)
)
del /q scannedhash.txt
echo. No threats found!
pause
cls
exit
