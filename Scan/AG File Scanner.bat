@echo off
title AG File Scanner
echo Enter file path:
set /p file= 
powershell Get-FileHash %file% -Algorithm MD5 ^| Format-Table -Property Hash>scannedhash.txt
cls
for /f "tokens=* delims= " %%x in (scannedhash.txt) do (
	for /f "tokens=* delims= " %%y in (AG DB.txt) do (
		if "%%x" == "%%y" (
			ren "%file%" "%file%.AGQ"
			move "%file%" "C:\Program Files\Aura Guard\AG Quarantine
			echo. %file% was infected and quarantined.
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