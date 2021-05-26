@echo off
  ::title add::
    title Data Backup

echo Where would you like to place your files
  ::file check and confirm::
    set /p destination=
      echo WARNING! This requires you to have at maximum 1/2 of storage on your computer.
        pause
          xcopy "C:\" "%destination%" /E
        
Echo Data backup success!
  ::success::
    pause>nul
     cls
      exit
