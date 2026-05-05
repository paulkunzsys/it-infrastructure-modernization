# IT Infrastructure Modernization – MDT/WDS Deployment Project

## English

### Project Overview

This project implements a centralized and automated deployment solution for Windows 11 Education and Microsoft Office 2021 LTSC within a school environment.  
The solution is based on Microsoft Deployment Toolkit (MDT) and Windows Deployment Services (WDS) and enables network-based installation via PXE boot.

The goal of the project is to replace outdated client systems and provide a standardized, reproducible, and efficient operating system deployment process.

### Objectives

- Replacement of legacy hardware and unsupported Windows 10 systems
- Centralized deployment of Windows 11 Education
- Automated installation process using MDT and WDS
- Standardized system configuration across all client devices
- Reduction of manual installation effort
- Improved maintainability and documentation of the IT infrastructure

### Technical Architecture

The solution consists of the following core components:

- Windows Server 2022 (Domain Controller, DNS, DHCP)
- Microsoft Deployment Toolkit (MDT)
- Windows Deployment Services (WDS)
- Windows Assessment and Deployment Kit (ADK)
- Windows PE Add-ons

Deployment is performed via PXE boot using a preconfigured boot image (LiteTouchPE).

### Deployment Steps

1. Install Windows Server 2022
2. Configure AD DS, DNS, DHCP
3. Install MDT and WDS with Windows PE Add-ons
4. Import OS images and drivers
5. Configure Deployment Share
6. Create LiteTouch boot image
7. Boot clients via PXE

### Operating System Deployment

Windows 11 Education is deployed using a fully automated MDT task sequence, including:

- Unattended installation configuration
- Driver injection based on hardware models
- Domain join to Active Directory
- Post-installation configuration tasks

### Software Deployment

#### Office Deployment via Office Deployment Tool (ODT)

Microsoft Office 2021 LTSC is deployed using the Office Deployment Tool (ODT).  
A custom configuration file (XML) is used to define installation parameters, language settings, and licensing mode.

Installation is fully automated and integrated into the MDT task sequence.

#### KMS-based Activation

Both Windows 11 Education and Microsoft Office 2021 LTSC are activated using a Key Management Service (KMS) server.

Activation is performed automatically after installation using predefined scripts integrated into the deployment process.

#### Automatic Updates Enabled

Automatic updates are enabled for both the operating system and Microsoft Office products to ensure security compliance and long-term maintainability.

Updates are managed via Windows Update services within the domain environment.

### Testing Environment

The deployment solution was tested in a controlled environment consisting of:

- Physical client systems with different hardware configurations
- Virtual machines (Hyper-V)
- Isolated PXE network environment

Tests included simultaneous deployments, driver compatibility validation, and network boot reliability.

### Outcome

The implemented solution provides a fully automated and scalable deployment infrastructure suitable for school environments with multiple client systems.  
It significantly reduces manual installation effort and ensures consistent system configuration across all devices.

## Note
All sensitive data has been anonymized.
---

## Deutsch

### Projektübersicht

Dieses Projekt implementiert eine zentrale und automatisierte Bereitstellungslösung für Windows 11 Education sowie Microsoft Office 2021 LTSC in einer schulischen IT-Infrastruktur.  
Die Lösung basiert auf dem Microsoft Deployment Toolkit (MDT) und den Windows Deployment Services (WDS) und ermöglicht die netzwerkbasierte Installation über PXE-Boot.

Ziel des Projekts ist der Ersatz veralteter Systeme sowie die Bereitstellung eines standardisierten, reproduzierbaren und effizienten Installationsprozesses.

### Zielsetzung

- Austausch veralteter Hardware und nicht unterstützter Windows-10-Systeme
- Zentrale Bereitstellung von Windows 11 Education
- Automatisierte Installation mittels MDT und WDS
- Standardisierte Systemkonfiguration auf allen Clients
- Reduzierung manueller Installationsaufwände
- Verbesserte Wartbarkeit und Dokumentation der IT-Infrastruktur

### Technische Architektur

Die Lösung besteht aus folgenden Kernkomponenten:

- Windows Server 2022 (Domänencontroller, DNS, DHCP)
- Microsoft Deployment Toolkit (MDT)
- Windows Deployment Services (WDS)
- Windows Assessment and Deployment Kit (ADK)
- Windows PE Add-ons

Die Bereitstellung erfolgt über PXE-Boot mithilfe eines vorkonfigurierten Boot-Images (LiteTouchPE).

### Betriebssystembereitstellung

Windows 11 Education wird über eine vollständig automatisierte MDT-Task-Sequenz installiert, einschließlich:

- Unbeaufsichtigter Installationskonfiguration
- Treiberintegration abhängig von Hardwaremodellen
- Domänenbeitritt zur Active Directory Umgebung
- Nachkonfiguration des Systems

### Softwarebereitstellung

#### Office Deployment via Office Deployment Tool (ODT)

Microsoft Office 2021 LTSC wird über das Office Deployment Tool (ODT) bereitgestellt.  
Eine angepasste XML-Konfigurationsdatei definiert Installationsparameter, Sprachpakete und Lizenzierungsmodus.

Die Installation erfolgt vollständig automatisiert und ist in die MDT-Task-Sequenz integriert.

#### KMS-basierte Aktivierung

Sowohl Windows 11 Education als auch Microsoft Office 2021 LTSC werden über einen Key Management Service (KMS)-Server aktiviert.

Die Aktivierung erfolgt automatisiert nach der Installation über integrierte Skripte im Deployment-Prozess.

#### Automatische Updates aktiviert

Für Betriebssystem und Microsoft Office sind automatische Updates aktiviert, um Sicherheitsstandards und langfristige Wartbarkeit sicherzustellen.

Die Updateverwaltung erfolgt über Windows Update im Domänenkontext.

### Testumgebung

Die Lösung wurde in einer kontrollierten Umgebung getestet:

- Physische Clients mit unterschiedlicher Hardware
- Virtuelle Maschinen (Hyper-V)
- Isoliertes PXE-Netzwerk

Es wurden Mehrfachinstallationen, Treiberkompatibilität und Netzwerk-Boot getestet.

### Ergebnis

Die implementierte Lösung stellt eine vollständig automatisierte und skalierbare Bereitstellungsinfrastruktur für schulische IT-Umgebungen dar.  
Sie reduziert den manuellen Installationsaufwand erheblich und gewährleistet eine einheitliche Systemkonfiguration auf allen Endgeräten.

## Hinweis
Alle sensiblen Daten wurden anonymisiert.