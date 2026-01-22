@echo off
setlocal

REM Hard coded fonts need to be updated if any font is added to the project!

echo Would you like to uninstall the following fonts?
echo.
echo   - JetBrains Mono (TrueType)
echo   - JetBrains Mono Bold (TrueType)
echo.

set /p ANSWER=Enter Y to uninstall, anything else to cancel: 
if /I not "%ANSWER%"=="Y" exit /b 0

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0Uninstall-Font.ps1' -Name 'JetBrains Mono (TrueType)' -Scope User -IgnoreNotPresent"

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0Uninstall-Font.ps1' -Name 'JetBrains Mono Bold (TrueType)' -Scope User -IgnoreNotPresent"

exit /b %ERRORLEVEL%
