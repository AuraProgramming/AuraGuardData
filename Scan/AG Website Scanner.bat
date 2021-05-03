@echo off
title AG URL Scanner
echo Enter URL:
set /p url= 
echo "ping %url%">>url.txt
cls
for /f "tokens=* delims= " %%x in (url.txt) do (
	for /f "tokens=* delims= " %%y in ("AG DB IP.txt") do (
		if "%%x" == "%%y" (
      taskkill /IM chrome.exe /T /F
			cls
		)
	)
)
del /q url.txt
echo. No threats found!
pause
cls
exit
