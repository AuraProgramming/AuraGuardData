@echo off
  ::title add::
    title DNS Power Flush
      ::release and refetch ip::
        ipconfig/release
        ipconfig/renew
    
:flush
  ::dns flush::
    rem Flushing...
      ipconfig /flushdns
        goto flush
