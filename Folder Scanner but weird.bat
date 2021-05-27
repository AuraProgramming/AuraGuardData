@echo off
	::title add::
		title Folder Scanner
      			SetLocal EnabledelayedExpansion
		
echo Enter Folder path:
	:file add
		::get hash::
			set /p folder=
				IF EXIST %folder% goto next
					IF NOT EXIST %folder% goto file add

:next
	::hash discover::
    for /d %%e in ("%folder%") do (
      		for /f " delims=" %%H in ('CertUtil -hashfile "%%~a" MD5 ^| findstr /i /v "CertUtil"') do set "H=%%H"
       			echo %%a=!H: =!
        		echo %%a=!H: =! >>"%scannedhashes.txt%
)

::screen clear::
  cls

::scan::
  for /d %%n in ("%folder%") do (
  for /f "tokens=* delims=" %%x in (scannedhashes.txt) do (
  for /f "tokens=* delims= " %%b in ("AG DB.txt") do (
	if "%%x"=="%%b" (
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
