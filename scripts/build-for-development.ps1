$ErrorActionPreference = "Stop"

$LABVIEW_VERSION = 2025
$ARCH = 32

$PROJECT   = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "Environment Toolkit.lvproj"

$ANTIDOC_OUTPUT = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "Antidoc-Output"
$ANTIDOC_CONFIG = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "antidoc.config"
$ANTIDOC_TITLE = "Environment Toolkit for TestStand"

$BUILD_SPEC_EXE = "Environment Toolkit GUI"
$BUILD_SPEC_SETUP = "Environment Toolkit GUI Installer"

$EXE_VERSION = "1.0.0.1"
$INSTALLER_VERSION = "1.0.0.1"

$DIR_EXE = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "builds\exe"
$DIR_SETUP = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "builds\installer"

$SETUP_NAME = "Environment_Toolkit_for_TestStand_v${INSTALLER_VERSION}_DEVELOPMENT.zip"

# Clear output folders
Remove-Item -Path "${DIR_EXE}\*" -Recurse -Force
Remove-Item -Path "${DIR_SETUP}\*" -Recurse -Force

# Enable Mocking to test on system without TS installed
g-cli --lv-ver $LABVIEW_VERSION --arch $ARCH --kill set-cds -- --project $PROJECT --persistant MOCK_TSDisc=True
if ($LASTEXITCODE -ne 0) { throw "g-cli failed with exit code $LASTEXITCODE" }

# Build exe
g-cli --lv-ver $LABVIEW_VERSION --arch $ARCH --kill lvbuildspec -- --project $PROJECT --buildspec $BUILD_SPEC_EXE --version $EXE_VERSION
if ($LASTEXITCODE -ne 0) { throw "g-cli failed with exit code $LASTEXITCODE" }

# Build Setup
g-cli --lv-ver $LABVIEW_VERSION --arch $ARCH --kill lvbuildspec -- --project $PROJECT --buildspec $BUILD_SPEC_SETUP --version $INSTALLER_VERSION
if ($LASTEXITCODE -ne 0) { throw "g-cli failed with exit code $LASTEXITCODE" }

# Generate ZIP File with Setup
Compress-Archive -Path "${DIR_SETUP}\Volume\*" -DestinationPath "${DIR_SETUP}\${SETUP_NAME}"

