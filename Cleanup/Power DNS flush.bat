@echo off
  :release and refetch ip:
    ipconfig/release
      ipconfig/renew
    
:flush
  :dns flush:
    rem Flushing...
      ipconfig /flushdns
        goto flush
