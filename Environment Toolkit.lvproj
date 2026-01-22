<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="25008000">
	<Property Name="CCSymbols" Type="Str">MOCK_TSDisc,False;</Property>
	<Property Name="NI.LV.All.SaveVersion" Type="Str">25.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str">Environment Toolkit for TestStand is an open-source utility that simplifies working with multiple NI TestStand versions and environments on a single system.

It allows users to discover installed TestStand versions, define reusable work profiles (i.e. version with associated environment), and launch profiles easily via a CLI or GUI.

The toolkit is designed for engineers who switch frequently between projects, customers, or TestStand releases and want an efficient way to manage their setups.

Further information can be found in the projects &lt;b&gt;repository&lt;/b&gt;:

https://github.com/HasbunWoodEngineering/Environment-Toolkit-for-TestStand

This project is licensed under the MIT License. See the &lt;b&gt;LICENSE&lt;/b&gt; file for details:

https://github.com/HasbunWoodEngineering/Environment-Toolkit-for-TestStand/blob/main/LICENSE

The licenses of all dependencies (runtime and development) are documented in &lt;b&gt;THIRD_PARTY_LICENSES&lt;/b&gt; and include the full license texts:

https://github.com/HasbunWoodEngineering/Environment-Toolkit-for-TestStand/blob/main/THIRD_PARTY_LICENSES

&lt;b&gt;Trademark Notice&lt;/b&gt;

TestStand™ and LabVIEW™ are registered trademarks of National Instruments Corporation.

Environment Toolkit for TestStand is an independent open-source project.  
It is not affiliated with, endorsed by, or sponsored by National Instruments Corporation.

Any use of the TestStand or LabVIEW names is for descriptive purposes only.   
All other trademarks are the property of their respective owners.</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="src" Type="Folder">
			<Item Name="cli" Type="Folder">
				<Item Name="env-toolkit.vi" Type="VI" URL="../src/cli/env-toolkit.vi"/>
			</Item>
			<Item Name="Constants" Type="Folder">
				<Item Name="CLI Arguments--constant.vi" Type="VI" URL="../src/Constants/CLI Arguments--constant.vi"/>
				<Item Name="CLI Help--constant.vi" Type="VI" URL="../src/Constants/CLI Help--constant.vi"/>
				<Item Name="Default Profiles File Path--constant.vi" Type="VI" URL="../src/Constants/Default Profiles File Path--constant.vi"/>
				<Item Name="HWE Url--constant.vi" Type="VI" URL="../src/Constants/HWE Url--constant.vi"/>
				<Item Name="Cache INI File--constant.vi" Type="VI" URL="../src/Constants/Cache INI File--constant.vi"/>
				<Item Name="Text Editor Path--constant.vi" Type="VI" URL="../src/Constants/Text Editor Path--constant.vi"/>
				<Item Name="Profiles File Key--constant.vi" Type="VI" URL="../src/Constants/Profiles File Key--constant.vi"/>
				<Item Name="Path to LICENSE--constant.vi" Type="VI" URL="../src/Constants/Path to LICENSE--constant.vi"/>
				<Item Name="Path to THIRD_PARTY_LICENSES--constant.vi" Type="VI" URL="../src/Constants/Path to THIRD_PARTY_LICENSES--constant.vi"/>
				<Item Name="Cache INI Section--constant.vi" Type="VI" URL="../src/Constants/Cache INI Section--constant.vi"/>
				<Item Name="Process Executor Object--constant.vi" Type="VI" URL="../src/Constants/Process Executor Object--constant.vi"/>
				<Item Name="TSDiscovery Object--constant.vi" Type="VI" URL="../src/Constants/TSDiscovery Object--constant.vi"/>
			</Item>
			<Item Name="Errors" Type="Folder">
				<Item Name="Executable does not exist--error.vi" Type="VI" URL="../src/Errors/Executable does not exist--error.vi"/>
				<Item Name="File is not executable--error.vi" Type="VI" URL="../src/Errors/File is not executable--error.vi"/>
				<Item Name="Invalid Architecture--error.vi" Type="VI" URL="../src/Errors/Invalid Architecture--error.vi"/>
				<Item Name="Invalid CLI parameter input--error.vi" Type="VI" URL="../src/Errors/Invalid CLI parameter input--error.vi"/>
				<Item Name="Invalid Version Format--error.vi" Type="VI" URL="../src/Errors/Invalid Version Format--error.vi"/>
				<Item Name="Process Exit Code not Zero--error.vi" Type="VI" URL="../src/Errors/Process Exit Code not Zero--error.vi"/>
				<Item Name="Profile already exists--error.vi" Type="VI" URL="../src/Errors/Profile already exists--error.vi"/>
				<Item Name="Profile not found--error.vi" Type="VI" URL="../src/Errors/Profile not found--error.vi"/>
				<Item Name="Specified environment does not exist--error.vi" Type="VI" URL="../src/Errors/Specified environment does not exist--error.vi"/>
				<Item Name="Specified file is not a TestStand environment--error.vi" Type="VI" URL="../src/Errors/Specified file is not a TestStand environment--error.vi"/>
				<Item Name="Specified version not found--error.vi" Type="VI" URL="../src/Errors/Specified version not found--error.vi"/>
				<Item Name="Timeout during execution--error.vi" Type="VI" URL="../src/Errors/Timeout during execution--error.vi"/>
				<Item Name="Unrecognized CLI Command--error.vi" Type="VI" URL="../src/Errors/Unrecognized CLI Command--error.vi"/>
				<Item Name="Invalid profile name--error.vi" Type="VI" URL="../src/Errors/Invalid profile name--error.vi"/>
				<Item Name="Version not installed (no architecture available)--error.vi" Type="VI" URL="../src/Errors/Version not installed (no architecture available)--error.vi"/>
			</Item>
			<Item Name="IProcess Executor" Type="Folder">
				<Item Name="IProcess Executor.lvclass" Type="LVClass" URL="../src/IProcess Executor/IProcess Executor.lvclass"/>
			</Item>
			<Item Name="ITSDiscovery" Type="Folder">
				<Item Name="ITSDiscovery.lvclass" Type="LVClass" URL="../src/ITSDiscovery/ITSDiscovery.lvclass"/>
			</Item>
			<Item Name="Modules" Type="Folder">
				<Item Name="TS Environment Manager.lvlib" Type="Library" URL="../src/Libraries/TS Environment Manager/TS Environment Manager.lvlib"/>
			</Item>
			<Item Name="Process Executor" Type="Folder">
				<Item Name="Process Executor.lvclass" Type="LVClass" URL="../src/Process Executor/Process Executor.lvclass"/>
			</Item>
			<Item Name="Process Executor Mock" Type="Folder">
				<Item Name="Process Executor Mock.lvclass" Type="LVClass" URL="../src/Process Executor Mock/Process Executor Mock.lvclass"/>
			</Item>
			<Item Name="Support" Type="Folder">
				<Item Name="Build SeqEdit Execution Plan.vi" Type="VI" URL="../src/Support/Build SeqEdit Execution Plan.vi"/>
				<Item Name="Build TS Activation Execution Plan.vi" Type="VI" URL="../src/Support/Build TS Activation Execution Plan.vi"/>
				<Item Name="Get TSInstall by Version (all architectures).vi" Type="VI" URL="../src/Support/Get TSInstall by Version (all architectures).vi"/>
				<Item Name="Get TSInstall by Version.vi" Type="VI" URL="../src/Support/Get TSInstall by Version.vi"/>
				<Item Name="Normalize String Length.vi" Type="VI" URL="../src/Support/Normalize String Length.vi"/>
				<Item Name="Parse and Validate CLI Arguments.vi" Type="VI" URL="../src/Support/Parse and Validate CLI Arguments.vi"/>
				<Item Name="Validate CLI Arguments.vi" Type="VI" URL="../src/Support/Validate CLI Arguments.vi"/>
			</Item>
			<Item Name="Testers" Type="Folder">
				<Item Name="Test TS Environment Manager API.vi" Type="VI" URL="../src/Libraries/TS Environment Manager/Test TS Environment Manager API.vi"/>
			</Item>
			<Item Name="TSDiscovery" Type="Folder">
				<Item Name="TSDiscovery.lvclass" Type="LVClass" URL="../src/TSDiscovery/TSDiscovery.lvclass"/>
			</Item>
			<Item Name="TSDiscovery Mock" Type="Folder">
				<Item Name="TSDiscovery Mock.lvclass" Type="LVClass" URL="../src/TSDiscovery Mock/TSDiscovery Mock.lvclass"/>
			</Item>
			<Item Name="Type Definitions" Type="Folder">
				<Item Name="Architecture--enum.ctl" Type="VI" URL="../src/Type Definitions/Architecture--enum.ctl"/>
				<Item Name="CLI Argument Setting--cluster.ctl" Type="VI" URL="../src/Type Definitions/CLI Argument Setting--cluster.ctl"/>
				<Item Name="CLI Data--cluster.ctl" Type="VI" URL="../src/Type Definitions/CLI Data--cluster.ctl"/>
				<Item Name="CLI State--enum.ctl" Type="VI" URL="../src/Type Definitions/CLI State--enum.ctl"/>
				<Item Name="Execution Plan--cluster.ctl" Type="VI" URL="../src/Type Definitions/Execution Plan--cluster.ctl"/>
				<Item Name="Profile--cluster.ctl" Type="VI" URL="../src/Type Definitions/Profile--cluster.ctl"/>
				<Item Name="Progress Display--enum.ctl" Type="VI" URL="../src/Type Definitions/Progress Display--enum.ctl"/>
				<Item Name="TSInstall--cluster.ctl" Type="VI" URL="../src/Type Definitions/TSInstall--cluster.ctl"/>
				<Item Name="UI Data--cluster.ctl" Type="VI" URL="../src/Type Definitions/UI Data--cluster.ctl"/>
				<Item Name="UI State--enum.ctl" Type="VI" URL="../src/Type Definitions/UI State--enum.ctl"/>
			</Item>
			<Item Name="ui" Type="Folder">
				<Item Name="env-toolkit-ui.vi" Type="VI" URL="../src/ui/env-toolkit-ui.vi"/>
			</Item>
		</Item>
		<Item Name="Unit Testing" Type="Folder">
			<Item Name="Test Build SeqEdit Execution Plan.vi" Type="VI" URL="../Unit Testing/Test Build SeqEdit Execution Plan.vi"/>
			<Item Name="Test Build TS Activation Execution Plan.vi" Type="VI" URL="../Unit Testing/Test Build TS Activation Execution Plan.vi"/>
			<Item Name="Test Escape String for Windows.vi" Type="VI" URL="../Unit Testing/Test Escape String for Windows.vi"/>
			<Item Name="Test Get TSInstall by Version.vi" Type="VI" URL="../Unit Testing/Test Get TSInstall by Version.vi"/>
			<Item Name="Test Process Executor Run.vi" Type="VI" URL="../Unit Testing/Test Process Executor Run.vi"/>
			<Item Name="Test Serialize Args for Windows.vi" Type="VI" URL="../Unit Testing/Test Serialize Args for Windows.vi"/>
			<Item Name="Test TS Environment Manager - Get Installations.vi" Type="VI" URL="../Unit Testing/Test TS Environment Manager - Get Installations.vi"/>
			<Item Name="Test TS Environment Manager - Profile Management.vi" Type="VI" URL="../Unit Testing/Test TS Environment Manager - Profile Management.vi"/>
			<Item Name="Test Validation of CLI arguments.vi" Type="VI" URL="../Unit Testing/Test Validation of CLI arguments.vi"/>
			<Item Name="Test TS Environment Manager - Cache File Creation.vi" Type="VI" URL="../Unit Testing/Test TS Environment Manager - Cache File Creation.vi"/>
			<Item Name="Test TS Environment Manager - Cache File Exists.vi" Type="VI" URL="../Unit Testing/Test TS Environment Manager - Cache File Exists.vi"/>
		</Item>
		<Item Name="Fonts" Type="Folder">
			<Item Name="JetBrainsMono-Bold.ttf" Type="Document" URL="../Fonts/JetBrainsMono-Bold.ttf"/>
			<Item Name="JetBrainsMono-Regular.ttf" Type="Document" URL="../Fonts/JetBrainsMono-Regular.ttf"/>
		</Item>
		<Item Name="scripts" Type="Folder">
			<Item Name="third party" Type="Folder">
				<Item Name="Install-Font.ps1" Type="Document" URL="../scripts/third party/Install-Font.ps1"/>
				<Item Name="Uninstall-Font.ps1" Type="Document" URL="../scripts/third party/Uninstall-Font.ps1"/>
			</Item>
			<Item Name="install-fonts.bat" Type="Document" URL="../scripts/install-fonts.bat"/>
			<Item Name="uninstall-fonts.bat" Type="Document" URL="../scripts/uninstall-fonts.bat"/>
		</Item>
		<Item Name="LICENSE" Type="Document" URL="../LICENSE"/>
		<Item Name="THIRD_PARTY_LICENSES" Type="Document" URL="../THIRD_PARTY_LICENSES"/>
		<Item Name="GUI_Icon.ico" Type="Document" URL="../GUI_Icon.ico"/>
		<Item Name="Package Dependencies" Type="IIO Ladder Diagram">
			<Property Name="NI.SortType" Type="Int">0</Property>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Environment Toolkit GUI" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{46008254-31BD-4C56-8D29-50BCC9E5B895}</Property>
				<Property Name="App_INI_GUID" Type="Str">{47B5E0D8-EE26-4606-8C05-69402ACDC5C8}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="App_waitDebugging" Type="Bool">true</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3824EDFD-5A24-4E50-BAE9-85949CD6D964}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Build specification for Environment Toolkit GUI.</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Environment Toolkit GUI</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/exe</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{E4C2790C-0F79-43C6-A02B-549FB604139B}</Property>
				<Property Name="Bld_version.build" Type="Int">2</Property>
				<Property Name="Bld_version.major" Type="Int">3</Property>
				<Property Name="Bld_version.patch" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">env-toolkit-gui.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/exe/env-toolkit-gui.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/exe</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/GUI_Icon.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{615D87B6-09AD-4318-8F63-15508D3EE8C0}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/src/ui/env-toolkit-ui.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/LICENSE</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/THIRD_PARTY_LICENSES</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_companyName" Type="Str">Hasbun Wood Engineering</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Environment Toolkit for TestStand is an open-source utility that simplifies working with multiple NI TestStand versions and environments on a single system.</Property>
				<Property Name="TgtF_internalName" Type="Str">Environment Toolkit GUI</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2026 Hasbun Wood Engineering</Property>
				<Property Name="TgtF_productName" Type="Str">Environment Toolkit GUI</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8C4C169B-BDA2-414E-80FC-BE346EDAB7B8}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">env-toolkit-gui.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Environment Toolkit GUI Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Environment Toolkit</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{867D5531-876E-4D43-8381-2131EE7C3863}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI System Configuration Runtime 25.5.0</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{0E192465-CC28-4C84-BE81-710B71C595A3}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[1].productID" Type="Str">{044F324B-9EDB-4239-8B92-EADD7CB4F2E7}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI LabVIEW Runtime 2025 Q3 Patch 2</Property>
				<Property Name="DistPart[1].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[1].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[1].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[1].productName" Type="Str">NI Deployment Framework 2025</Property>
				<Property Name="DistPart[1].SoftDep[1].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[1].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[2].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2025</Property>
				<Property Name="DistPart[1].SoftDep[2].upgradeCode" Type="Str">{259FEAE6-067C-3094-A9FB-7CA349CDDE46}</Property>
				<Property Name="DistPart[1].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[3].productName" Type="Str">NI LabVIEW Runtime 2025 Q3 Non-English Support.</Property>
				<Property Name="DistPart[1].SoftDep[3].upgradeCode" Type="Str">{195F5179-2379-3254-BE84-422D990E203C}</Property>
				<Property Name="DistPart[1].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[4].productName" Type="Str">NI Logos 25.3</Property>
				<Property Name="DistPart[1].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[1].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[5].productName" Type="Str">NI LabVIEW Web Server 2025</Property>
				<Property Name="DistPart[1].SoftDep[5].upgradeCode" Type="Str">{0960380B-EA86-4E0C-8B57-14CD8CCF2C15}</Property>
				<Property Name="DistPart[1].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[6].productName" Type="Str">NI mDNS Responder 25.5</Property>
				<Property Name="DistPart[1].SoftDep[6].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[1].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[7].productName" Type="Str">Math Kernel Libraries 2020</Property>
				<Property Name="DistPart[1].SoftDep[7].upgradeCode" Type="Str">{9872BBBA-FB96-42A4-80A2-9605AC5CBCF1}</Property>
				<Property Name="DistPart[1].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[8].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[1].SoftDep[8].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[1].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[9].productName" Type="Str">NI TDM Streaming 25.3</Property>
				<Property Name="DistPart[1].SoftDep[9].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[1].SoftDepCount" Type="Int">10</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{46ECB4FB-2D59-3464-8E77-8C90EA0313AB}</Property>
				<Property Name="DistPartCount" Type="Int">2</Property>
				<Property Name="INST_author" Type="Str">Hasbun Wood Engineering</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToProject</Property>
				<Property Name="INST_buildSpecName" Type="Str">Environment Toolkit GUI Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="INST_includeError" Type="Bool">false</Property>
				<Property Name="INST_installerName" Type="Str">env-toolkit-gui-setup.exe</Property>
				<Property Name="INST_productName" Type="Str">Environment Toolkit GUI</Property>
				<Property Name="INST_productVersion" Type="Str">3.0.1</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">25328002</Property>
				<Property Name="MSI_arpCompany" Type="Str">Hasbun Wood Engineering</Property>
				<Property Name="MSI_arpContact" Type="Str">info@hasbun-wood-engineering.de</Property>
				<Property Name="MSI_arpPhone" Type="Str">+49 176 588 567 52</Property>
				<Property Name="MSI_arpURL" Type="Str">https:\\hasbun-wood-engineering.de</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{DCF152B8-3B84-44C6-9097-883A9E3F18E3}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">3</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{EC2FC3CA-4C53-4DF3-8C52-A8C2B3D82268}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Environment Toolkit for TestStand is an open-source utility that simplifies working with multiple NI TestStand versions and environments on a single system.

TestStand is a registered trademark of NI. This project is not affiliated with, endorsed by, or sponsored by NI.</Property>
				<Property Name="MSI_windowTitle" Type="Str">Welcome to the Environment Toolkit for TestStand</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">env-toolkit-gui.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">env-toolkit-gui</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">Environment Toolkit</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{8C4C169B-BDA2-414E-80FC-BE346EDAB7B8}</Property>
				<Property Name="Source[0].File[1].attributes" Type="Int">1</Property>
				<Property Name="Source[0].File[1].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[0].File[1].name" Type="Str">LICENSE</Property>
				<Property Name="Source[0].File[1].tag" Type="Ref">/My Computer/LICENSE</Property>
				<Property Name="Source[0].File[2].attributes" Type="Int">1</Property>
				<Property Name="Source[0].File[2].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[0].File[2].name" Type="Str">THIRD_PARTY_LICENSES</Property>
				<Property Name="Source[0].File[2].tag" Type="Ref">/My Computer/THIRD_PARTY_LICENSES</Property>
				<Property Name="Source[0].FileCount" Type="Int">3</Property>
				<Property Name="Source[0].name" Type="Str">Environment Toolkit GUI</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Environment Toolkit GUI</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[1].name" Type="Str">JetBrainsMono-Bold.ttf</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Fonts/JetBrainsMono-Bold.ttf</Property>
				<Property Name="Source[1].type" Type="Str">File</Property>
				<Property Name="Source[2].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[2].name" Type="Str">JetBrainsMono-Regular.ttf</Property>
				<Property Name="Source[2].tag" Type="Ref">/My Computer/Fonts/JetBrainsMono-Regular.ttf</Property>
				<Property Name="Source[2].type" Type="Str">File</Property>
				<Property Name="Source[3].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[3].name" Type="Str">install-fonts.bat</Property>
				<Property Name="Source[3].runEXE" Type="Bool">true</Property>
				<Property Name="Source[3].tag" Type="Ref">/My Computer/scripts/install-fonts.bat</Property>
				<Property Name="Source[3].type" Type="Str">File</Property>
				<Property Name="Source[4].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[4].name" Type="Str">Install-Font.ps1</Property>
				<Property Name="Source[4].tag" Type="Ref">/My Computer/scripts/third party/Install-Font.ps1</Property>
				<Property Name="Source[4].type" Type="Str">File</Property>
				<Property Name="Source[5].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[5].name" Type="Str">uninstall-fonts.bat</Property>
				<Property Name="Source[5].runEXE_uninstall" Type="Bool">true</Property>
				<Property Name="Source[5].tag" Type="Ref">/My Computer/scripts/uninstall-fonts.bat</Property>
				<Property Name="Source[5].type" Type="Str">File</Property>
				<Property Name="Source[6].dest" Type="Str">{734CE523-1130-47B1-800C-52B913C688F8}</Property>
				<Property Name="Source[6].name" Type="Str">Uninstall-Font.ps1</Property>
				<Property Name="Source[6].tag" Type="Ref">/My Computer/scripts/third party/Uninstall-Font.ps1</Property>
				<Property Name="Source[6].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">7</Property>
			</Item>
		</Item>
	</Item>
</Project>
