@echo off
	::title add::
		title Folder Scanner
      			SetLocal EnabledelayedExpansion
		
echo Enter Folder path:
	:file add
		::get hash::
			set /p folder=

:next
	::hash discover::
		cd %folder%
		for /d /r %%a in ("%folder%") do (
      		for /f " delims=" %%H in ('CertUtil -hashfile "%%~a" MD5 ^| findstr /i /v "CertUtil"') do (
			set "H=%%H"
       			echo %%a=!H: =!
			cd %temp%\
        		echo %%a=!H: =!>>"scannedhashes.txt
			cd %folder%
 				for /f "tokens=* delims= " %%x in (scannedhashes.txt) do (
  				for /f "tokens=* delims= " %%b in ("AG DB.txt") do (
					if "%%x"=="%%b" do (
						ren "%file%" "%file%.AGQ"
						move "%file%" "C:\AuraGuard\AuraGuardOS-Basic\AG Quarantine\"
						echo. %file% was infected and quarantined.
						CD "C:\AuraGuard\AuraGuardOS-Basic\"
						echo. %file% was infected and quarantined.>>"LOG (OPEN WITH NOTEPAD).ag"
						pause >nul
						cls
			)
		)
	)
)

::screen clear::
  cls


::end::
	del /q scannedhashes.txt
		echo. No threats found!
			pause>nul
				cls
				exit
