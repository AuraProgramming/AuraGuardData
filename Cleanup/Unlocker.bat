@echo off
  ::title add::
    title Unlocker
    
::var create::
  echo What folder/file would you like to unlock?
    set /p ff=
      takeown /f %ff%
        pause>nul
          cls
            exit
