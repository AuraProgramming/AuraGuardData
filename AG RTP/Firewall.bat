@echo off
  :title create:
    title Firewall
    
:monitor create:
  netstat -a
  netstat-b
  netstat-n
  
:exit:
  pause
    cls
      exit
  
