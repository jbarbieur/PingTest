@echo off
echo Pinging %1... Please do not close this window
:loop
ping -n 1 %1 >nul || echo %date% %time% no reply from %1 >> C:\temp\pinglog_%1.txt
choice /N /T 1 /D Y >nul
goto loop