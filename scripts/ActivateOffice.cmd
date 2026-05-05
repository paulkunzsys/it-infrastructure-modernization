@echo off

REM KMS-Server festlegen
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /sethst:kms.server.local

REM Office aktivieren
cscript "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" /act