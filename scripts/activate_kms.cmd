@echo off
echo Konfiguration der KMS-Aktivierung von Windows...

REM KMS-Server festlegen
slmgr /skms kms.server.local

REM Aktivierung durchführen
slmgr /ato

REM Aktivierungsstatus anzeigen
slmgr /dli

exit