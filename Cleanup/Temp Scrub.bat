@echo off
  :title add:
    title AG Temp Scrub

:confirm:
  echo 1. Continue
  echo 2. Cancel
    @choice /c:12 /n
      if errorlevel 1 goto cont
      if errorlevel 2 goto end

:cont
  :cleanup:
    cls
      echo Deleting all files in Temporary Directory...
        @echo on
          @del /q %temp%\*.*
            @echo off
              goto end

:end
  :exit:
    cls
      exit
