@echo off
  :title add:
    title Executable Cleanup
    
:top
  :folder check:
    echo Type folder path that you would like to clean of executables
    set /p folder=
      IF EXIST %folder% goto cont
      IF NOT EXIST %folder% goto top
    
:cont
  echo Are you sure you would like to clean %folder% of executables? Y/N
    choice /c yn /n
      if errorlevel 2 goto N
      if errorlevel 1 goto Y

:Y
  echo Cleaning up...
    @echo on
      del /q %folder%\*.exe
      del /q %folder%\*.bat
      del /q %folder%\*.com
      del /q %folder%\*.vbs
      del /q %folder%\*.js
      del /q %folder%\*.py
      del /q %folder%\*.cmd
      del /q %folder%\*.apk
      del /q %folder%\*.run
      del /q %folder%\*.jar
      del /q %folder%\*.bin
      del /q %folder%\*.app
      del /q %folder%\*.e_e
        @echo off
          echo Process has been completed!
            pause
              cls
                exit
               
:N
  echo Canceling
    pause
      cls
      exit
