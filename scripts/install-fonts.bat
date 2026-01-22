@echo off
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0Install-Font.ps1' -Path '%~dp0' -Scope User -Method Manual"