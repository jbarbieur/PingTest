REM This script is used for testing connection to various points along a network to help determine the source of issues
REM This script (pingstarter.bat) and it's companion script (pingtest.bat) should both be stored in C:\temp on the machine to be tested
REM Typically, this is used for testing issues with VPN connections; set the firewall to the local gateway and DC to a machine across the VPN

@echo off
set FIREWALL=169.211.10.1
set GOOGLE=8.8.8.8
set DC=4.2.2.2

start C:\temp\pingscript.bat %FIREWALL%
start C:\temp\pingscript.bat %GOOGLE%
start C:\temp\pingscript.bat %DC%
