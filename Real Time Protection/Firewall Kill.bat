@echo off
  ::title add::
    title Firewall Process killer

:kill
::var add::
  echo What proccess would you like to kill?
    set /p process=
      taskkill /f /im %process% /t
        goto kill
        
