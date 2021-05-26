@echo off
	::title add::
		title File Scanner
		
echo Enter file path:
	:file add
		::get hash::
			set /p file=
				IF EXIST %file% goto next
					IF NOT EXIST %file% goto file add

:next
	::hash discover::
		CertUtil -hashfile "%file%" MD5 ^| findstr /i /v "CertUtil">scannedhash.txt
			cls

::scan::
	for /f "tokens=* delims= " %%x in (scannedhash.txt) do (
	for /f "tokens=* delims= " %%y in ("AG DB.txt") do (
		if "%%x" == "%%y" (
			ren "%file%" "%file%.AGQ"
			move "%file%" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
			echo. %file% was infected and quarantined.
			echo. %file% was infected and quarantined.>>"LOG.ag"
			pause >nul
			cls
		)
	)
)

::end::
del /q scannedhash.txt
	echo. No threats found!
	pause
		cls
		exit
