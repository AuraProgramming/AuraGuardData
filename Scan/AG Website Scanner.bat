@echo off
title AG URL Scanner
echo Enter URL:
set /p url= 
echo "ping %url%">>url.txt
cls
for /f "tokens=* delims= " %%x in (url.txt) do (
	for /f "tokens=* delims= " %%y in ("AG DB IP.txt") do (
		if "%%x" == "%%y" (
			start chrome.exe https://sites.google.com/view/auraguardblocked/home
			cls
		)
	)
)
del /q url.txt
echo. No threats found!
pause
cls
exit
