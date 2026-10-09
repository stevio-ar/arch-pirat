# Malware Archives

> ⚠️ **WARNING — READ BEFORE USE**
>
> This repository contains malware samples, scripts, and programs designed to cause unwanted or disruptive behavior on Windows systems.
>
> **Do not execute these files on your main computer, on a computer containing important data, or on any system without explicit authorization.**
>
> The contents are provided for educational, research, and malware-analysis purposes. Testing should only be performed in an isolated and controlled environment.

> 🇪🇸 **Note about the file names:**
> Although this README is written in English, many of the file and folder names are intentionally kept in **Spanish**, as they were created by a Spanish-speaking developer. We apologize for any possible confusion.

---

## Safety Classification

Not every sample in this repository is intended to cause permanent damage. The collection contains a mixture of **harmless prank programs, malware-like simulations, disruptive scripts, and more aggressive system-level samples**.

### 🟢 Harmless / Prank

These samples are primarily designed as jokes or demonstrations. Their main effects are visual, audible, or otherwise annoying rather than destructive.

Examples include:

* `Emulacion Virus Acoso`
* `Emulacion Virus Porno`
* `Emulacion Virus Sistema`
* `Emulacion Virus Sonido`

### 🟠 Disruptive

These samples can interfere significantly with normal computer usage or cause loss of unsaved work.

Examples include:

* `Apagado del Equipo`
* `Reinicio del Equipo`

The preconfigured timer variants can make these behaviors occur after a delay.

### 🔴 High Impact / Experimental

These samples can place substantial load on the system or potentially affect system stability.

Examples include:

* `Bucle de Terminales CMD`
* `Ejecutable de Chrome 1M de veces`
* `Windows Crash BSOD`

These should only be considered for controlled laboratory environments and should **not** be tested on a primary or production computer.

> **Important:** “Harmless” refers to the intended effect described by the project, not a guarantee of safety. Unexpected behavior, bugs, system differences, or resource exhaustion can still occur.

---

## Contents

### `Apagado del Equipo`

Contains samples related to shutting down a Windows computer.

* Includes a sample intended to trigger an immediate shutdown.
* Also contains a subfolder with **preconfigured timers** for different shutdown delays.

### `Bucle de Terminales CMD`

Repeatedly launches `cmd.exe` through a loop, potentially creating a large number of terminal processes and consuming significant system resources.

### `Ejecutable de Chrome 1M de veces`

Attempts to launch an extremely large number of Google Chrome instances simultaneously, potentially causing very high CPU and memory usage and affecting system stability.

### `Emulacion Virus Acoso`

Simulates the behavior of disruptive malware by repeatedly displaying unsettling messages and windows on the screen.

Its purpose is to demonstrate how malicious software can use pop-ups and repeated messages to disturb or intimidate a user.

### `Emulacion Virus Porno`

Simulates a fake infection involving adult-themed content through pop-up windows and explicit messages.

> This is a **simulation** and does not necessarily represent a genuine infection.

### `Emulacion Virus Sistema`

Simulates a fake Windows Defender security warning through on-screen alerts and messages.

Its purpose is to demonstrate how malicious software can imitate legitimate security notifications in order to make a user believe that their computer is infected.

### `Emulacion Virus Sonido`

Simulates an infection by playing spoken warning messages through the computer's speakers, including messages claiming that the system has been infected.

### `Reinicio del Equipo`

Contains samples related to restarting a Windows computer.

* Includes a sample intended to trigger an immediate restart.
* Also contains a subfolder with **preconfigured timers** for different restart delays.

### `Windows Crash BSOD`

An experimental sample related to low-level Windows system behavior.

It may cause an unexpected restart or a **Blue Screen of Death (BSOD)** and therefore should **never be tested on a normal or production computer**.

---

## Preconfigured Timers

Several of the samples include a **subfolder containing preconfigured timers**.

These files are already prepared with different time intervals, allowing the corresponding behavior to occur after a predefined delay. This structure is intended to make the different test cases easier to identify and study in an authorized laboratory environment.

---

## USB / Flash Drive Use

This project is designed to be stored on a **USB flash drive** as a portable collection of samples for authorized malware research, demonstrations, and controlled laboratory analysis.

The collection can be used for manual testing in an appropriately isolated environment. It should **not be used to deploy or execute software on computers belonging to other people or organizations without explicit authorization**.

---

## Access Shortcuts and Visual Deception

Some samples may use Windows shortcuts (`.lnk`) with names and icons designed to make them appear to be different programs.

This is a form of **visual deception / masquerading**, a technique that can be used by malicious software to hide its actual purpose.

When analyzing unfamiliar USB drives or files, users should therefore pay attention to file extensions, file properties, and the origin of the files rather than relying solely on their displayed names or icons.

---

## Safety Considerations

* Do not execute these samples on your primary computer.
* Do not disable Windows Defender or other security protections to run them.
* Use an isolated virtual machine or dedicated test environment for analysis.
* Keep important files and backups outside the testing environment.
* Expect some samples to cause high resource usage, application failures, restarts, shutdowns, or system instability.
* Do not test the samples against systems or users without authorization.
* “Harmless” samples may still behave unexpectedly because of bugs or differences between Windows systems.

---

## Project Purpose

The purpose of this repository is to **document and study different malware-like behaviors and disruptive programs on Windows**, making their characteristics easier to understand and analyze in a controlled environment.

The collection is intended for:

* Educational purposes
* Cybersecurity research
* Malware analysis
* Authorized laboratory testing
* Demonstrations of common disruptive techniques

**Use responsibly and only on systems you own or have explicit permission to test.**
