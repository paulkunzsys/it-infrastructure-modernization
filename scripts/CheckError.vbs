' CheckError.vbs – prüft den MDT-Status und startet bei Fehler neu
On Error Resume Next

Set oShell = CreateObject("WScript.Shell")

' MDT Deployment Status prüfen (1 = erfolgreich)
status = oShell.RegRead("HKLM\SOFTWARE\Microsoft\Deployment 4\DeploymentStatus")

If status <> 1 Then
    ' Fehler – Neustart, damit PXE-Boot wieder beginnt
    oShell.Run "wpeutil reboot", 0, False
End If