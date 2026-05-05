# Deployment-Anleitung (WDS + MDT)

## Überblick

Diese Anleitung beschreibt die Einrichtung einer automatisierten Windows-Bereitstellung mittels Windows Deployment Services (WDS) und Microsoft Deployment Toolkit (MDT).

---

## Voraussetzungen

* Windows Server 2022
* WDS (Windows Deployment Services)
* MDT (Microsoft Deployment Toolkit)
* Windows ADK + WinPE Add-ons
* DHCP-Server
* Netzwerk mit PXE-Unterstützung

---

## 1. Server-Grundkonfiguration

1. Installation von Active Directory Domain Services (AD DS)
2. Konfiguration von DNS
3. Einrichtung eines DHCP-Bereichs (z. B. 192.168.1.100 – 192.168.1.200)
4. Vergabe einer statischen IP-Adresse für den Server (z. B. 192.168.1.1)

---

## 2. Installation der Deployment-Tools

Installieren Sie folgende Komponenten:

* Microsoft Deployment Toolkit (MDT)
* Windows Assessment and Deployment Kit (ADK)
* WinPE Add-ons

### Bekannter Fehler

Beim Öffnen der Windows-PE-Einstellungen im Deployment Workbench kann es zu einem Absturz kommen.

### Lösung

Erstellen Sie folgende Verzeichnisstruktur:

C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\x86\WinPE_OCs

---

## 3. MDT-Konfiguration

1. Importieren Sie das Windows 11 ISO-Image
2. Erstellen Sie einen Deployment Share
3. Führen Sie ein Update des Deployment Shares durch („Complete regenerate boot image“)
4. Konfigurieren Sie die folgenden Dateien:

   * CustomSettings.ini
   * Bootstrap.ini

---

## 4. WDS-Konfiguration

1. Öffnen Sie die WDS-Konsole
2. Fügen Sie das Boot-Image hinzu:

   * LiteTouchPE_x64.wim
3. Aktivieren Sie PXE-Boot
4. Überprüfen Sie die DHCP-Optionen:

   * Option 66 (Boot Server)
   * Option 67 (Boot-Datei, z. B. wdsnbp.com)

---

## 5. Durchführung des Deployments

1. Starten Sie den Client über PXE
2. Der MDT Deployment Wizard wird automatisch gestartet
3. Die Installation erfolgt automatisiert anhand der definierten Regeln

---

## 6. Fehlerbehebung

### Fehler 1

**WinPE unattended failed (0x80071577)**

**Ursache:**
Restdaten auf dem Datenträger

**Lösung:**

* Datenträger vollständig löschen (z. B. Diskpart)

---

### Fehler 2

**Deployment Wizard – Verbindungsfehler**

**Ursache:**
Falscher Pfad zum Deployment Share

**Lösung:**

* Überprüfung und Anpassung der Datei Bootstrap.ini
* Korrektur des Parameters:
  DeployRoot=\192.168.1.1\DeploymentShare$

---

## Ergebnis

Durch diese Konfiguration wird eine vollständig automatisierte und standardisierte Bereitstellung von Windows-Clients ermöglicht.
