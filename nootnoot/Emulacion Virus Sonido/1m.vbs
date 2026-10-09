WScript.Sleep 60000

do
Dim var1, var2
var1="Hola! tienes un virus. te estoy observando!"
Set va2=CreateObject("sapi.spvoice")
va2.Speak var1
loop