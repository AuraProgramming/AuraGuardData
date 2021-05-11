@echo off
  :title create:
    title Firewall
    
:create files:
  echo netstat -b>>FW1.cmd
  echo netstat -a>>FW2.cmd
  echo netstat -n>>FW3.cmd
  
  :start firewall:
    start "*FW*.cmd"
    
 :exit:
  pause
    cls
    exit
