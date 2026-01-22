# Environment Toolkit for TestStand

Environment Toolkit for TestStand is an open-source utility that simplifies working with multiple NI TestStand versions and environments on a single system.

It allows users to discover installed TestStand versions, define reusable **profiles** (TestStand version + environment), and **launch** them in a controlled and repeatable way via **CLI or GUI**.

The toolkit is intended for developers who frequently switch between TestStand versions, customers, or projects and want to avoid manual configuration errors.

## 🚀 Features

- Automatic discovery of installed TestStand versions
- Profile-based workflow (TestStand version + environment)
- Launching a profile activates the corresponding TestStand version (if required) and launches the appropriate TestStand Sequence Editor executable with the configured environment, via CLI or GUI
- Centralized profile storage via INI configuration

---

## 🧭 Usage

When you start the software for the first time, a small, persistent cache INI file is created at

```C:\Users\<your-username>\env-toolkit-cache.ini```

This file acts as a configuration pointer and contains only a reference to the currently active profiles file.

It contains the single entry

```EnvironmentToolkit.ProfilesFile```

which points to the **active profiles file** used by the toolkit.

The default profiles file is:

```C:\Users\<your-username>\Environment Toolkit Profiles.ini```

This file contains the actual profile definitions.

All profiles are stored as plain text in this file.

A profile contains:

- **Name** (e.g. `customer1-project1`)
- (TestStand) **Version** (e.g. `25.5`)
- **Architecture** (`32bit` or `64bit`)
- **Environment** (optional TestStand environment file, e.g. `my-environment.tsenv`)

After creating a profile, the tool allows you to launch it.  
Launching a profile activates the corresponding TestStand version (if necessary) and starts the TestStand Sequence Editor with the specified environment activated (or the global environment if none is defined).

The toolkit also allows you to add and remove profiles from the active profiles file and to switch between multiple profiles files if desired.

### 🧰 CLI

Run the CLI via `g-cli` with the `help` command to see available commands and syntax:

```powershell
? / help: Display help and exit

installations: Print a table of all TestStand installations in the system.

profiles [--name <name>]: Print a table of all profiles in the current profile file. If a name is provided only the specified profile will be printed.

open: Open the active profiles file in notepad.exe.

new --name <name> --version <version> -arch <architecture> [--file <environment>]: Create a new profile in the current file. Environment is an optional parameter.

delete --name <name>: Delete profile from current file.  

set-file --file <profiles.ini>: Set profiles file.

launch --name <name>: Launch the specified profile. This will activate the profiles TestStand version (if necessary) and launch the sequence editor with the corresponding environment.

activate --version <version>: Activate the specified TestStand version.

licenses: display license information of the project.

=============== Examples =====================

Create a profile:
g-cli --lv-ver 2025 --arch 32  --kill env-toolkit -- new --name customer1-project1 --version 25.5 -arch 64 --file C:\Users\Public\Documents\development.tsenv

Launch:
g-cli --lv-ver 2025 --arch 32  --kill env-toolkit -- launch --name customer1-project1
============================================
```

### 🖥️ GUI

A lightweight GUI is included for interactive usage.

It exposes the same functionality as the CLI, except for isolated activation of a TestStand installation, which is intentionally not available in the GUI.

---

## 📦 Installation

### GUI User

If you only intend to use the GUI, install the setup from the [latest release](https://github.com/HasbunWoodEngineering/Environment-Toolkit-for-TestStand/releases).

**Note**: The installer will install [Jetbrains Mono](https://www.jetbrains.com/de-de/lp/mono/) font (Regular and Bold). During uninstallation, you will be asked whether these fonts should also be removed.

### CLI / DQMH Module User

If you intend to use the CLI or integrate the DQMH module directly into your own VIs, install the package via [vipm.io](vimp.io):
- The installer places the core VI ```env-toolkit.vi``` in ```<LabVIEW>\vi.lib\G CLI Tools```, so it can be invoked as shown in [the CLI section above](#cli).
- A palette containing all relevant VIs and controls from the DQMH module is added to the Addons folder.

Note: This installation only includes the required runtime components. Mocks, tests, and other development-only artifacts are excluded. If you require these components, proceed with the [developer installation](#developer).

### 🛠️ Developer

To develop or contribute to the project, clone the repository and open it using [JKI Dragon](https://dragon.vipm.io/).

Use Dragon to install all development dependencies defined in [`Environment Toolkit.dragon`](Environment%20Toolkit.dragon).

You will also need to manually install the [Jetbrains Mono Font](https://www.jetbrains.com/de-de/lp/mono/).

---

## Documentation

Refer to the [generated module documentation](Antidoc-Output/Environment%20Toolkit.pdf) and inline VI documentation.

> **License Notice**  
> The generated documentation is created automatically and does **not** include all license texts of this project or its dependencies.  
> For complete and authoritative licensing information, you must refer to the files [LICENSE](LICENSE) and [THIRD_PARTY_LICENSES](THIRD_PARTY_LICENSES) in this repository, which are also named and linked in chapter 1 of the documentation.

### Custom Error Codes

- 510000: The specified executable does not exist.
- 510001: File is not an executable.
- 510002: Timeout during execution.
- 510003: Process completed with exit code different than 0.
- 510004: Specified TestStand version not found.
- 510005: Specified TestStand environment does not exist.
- 510006: Specified file is not a TestStand environment.
- 510007: Cannot activate TestStand version (no architecture installed).
- 510008: Profile already exists — delete first to overwrite.
- 510009: Profile not found.
- 510010: Unrecognized CLI command.
- 510011: Invalid architecture (must be 32 or 64).
- 510012: Invalid version format (must be Major.Minor).
- 510013: Invalid CLI parameter input. See help for correct syntax.
- 510014: Invalid profile name (empty string).

---

## 🔐 Licenses

This project is licensed under the **MIT License**.  
See the [LICENSE](LICENSE) file for details.

The licenses of all dependencies (runtime and development) are documented in
[THIRD_PARTY_LICENSES](THIRD_PARTY_LICENSES) and include the full license texts.

Vendored copies of ```Install-Font.ps1``` and ```Uninstall-Font.ps1``` from [PSWinGlue](https://github.com/ralish/PSWinGlue) (MIT License) are used during setup to install and uninstall the JetBrains Mono (Regular and Bold) fonts required by the standalone GUI.

---

## ⚙️ Continuous Integration (CI)

This project includes a functional CI pipeline that runs unit tests and VI Analyzer checks to ensure code quality and consistency.
The workflow is executed on a self-hosted GitHub runner with LabVIEW installed.

For security reasons, CI is deactivated in the public repository —
self-hosted runners execute workflows directly on private infrastructure, which poses a potential safety risk when triggered from public forks or pull requests.

All workflow definitions and configuration files are available in the repository under .github/workflows/,
so you can reproduce the CI locally or adapt it to your own secure environment.

---

## ™️Trademark Notice

TestStand™ and LabVIEW™ are registered trademarks of National Instruments Corporation.

Environment Toolkit for TestStand is an independent open-source project.  
It is not affiliated with, endorsed by, or sponsored by National Instruments Corporation.

Any use of the TestStand or LabVIEW names is for descriptive purposes only.   
All other trademarks are the property of their respective owners.
