$ErrorActionPreference = "Stop"

$LABVIEW_VERSION = 2025
$ARCH = 32

$PROJECT   = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "Environment Toolkit.lvproj"

$ANTIDOC_OUTPUT = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "Antidoc-Output"
$ANTIDOC_CONFIG = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "antidoc.config"
$ANTIDOC_TITLE = "Environment Toolkit for TestStand"

$BUILD_SPEC_EXE = "Environment Toolkit GUI"
$BUILD_SPEC_SETUP = "Environment Toolkit GUI Installer"

$EXE_VERSION = "3.0.1.2"
$INSTALLER_VERSION = $EXE_VERSION
$VIPB_VERSION = $EXE_VERSION

$DIR_EXE = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "builds\exe"
$DIR_SETUP = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "builds\installer"

$SETUP_NAME = "Environment_Toolkit_for_TestStand_v${INSTALLER_VERSION}.zip"

$VIPB = Join-Path (Resolve-Path (Join-Path $PSScriptRoot "..")) "Environment Toolkit for TestStand.vipb"

# Clear output folders
Remove-Item -Path "${DIR_EXE}\*" -Recurse -Force
Remove-Item -Path "${DIR_SETUP}\*" -Recurse -Force

# Disable Mocking
g-cli --lv-ver $LABVIEW_VERSION --arch $ARCH --kill set-cds -- --project $PROJECT --persistant MOCK_TSDisc=False
if ($LASTEXITCODE -ne 0) { throw "g-cli failed with exit code $LASTEXITCODE" }

# Clean output repository and generate documentation
Remove-Item -Path "${ANTIDOC_OUTPUT}\*" -Recurse -Force
g-cli --lv-ver $LABVIEW_VERSION --arch $ARCH --kill antidoc -- -addon lvproj -out $ANTIDOC_OUTPUT -configpath $ANTIDOC_CONFIG -render pdf -close -pp $PROJECT -t $ANTIDOC_TITLE
if ($LASTEXITCODE -ne 0) { throw "g-cli failed with exit code $LASTEXITCODE" }
# Clean output folder
Get-ChildItem $ANTIDOC_OUTPUT | Where-Object { $_.Extension -ne ".pdf" } | Remove-Item -Recurse -Force

# Build exe
g-cli --lv-ver $LABVIEW_VERSION --arch $ARCH --kill lvbuildspec -- --project $PROJECT --buildspec $BUILD_SPEC_EXE --version $EXE_VERSION
if ($LASTEXITCODE -ne 0) { throw "g-cli failed with exit code $LASTEXITCODE" }

# Build Setup
g-cli --lv-ver $LABVIEW_VERSION --arch $ARCH --kill lvbuildspec -- --project $PROJECT --buildspec $BUILD_SPEC_SETUP --version $INSTALLER_VERSION
if ($LASTEXITCODE -ne 0) { throw "g-cli failed with exit code $LASTEXITCODE" }

# Generate ZIP File with Setup
Compress-Archive -Path "${DIR_SETUP}\Volume\*" -DestinationPath "${DIR_SETUP}\${SETUP_NAME}"

# Build VIPB
g-cli --lv-ver $LABVIEW_VERSION --arch $ARCH --kill vipb -- -b $VIPB -v $VIPB_VERSION
if ($LASTEXITCODE -ne 0) { throw "g-cli failed with exit code $LASTEXITCODE" }