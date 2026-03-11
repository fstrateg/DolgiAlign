@echo off
chcp 65001 >nul

set "DESIGNER=C:\Program Files\1cv8\8.3.27.1508\bin\1cv8.exe"

set "DB=C:\VHD\Work\1C\AquaTrade"
set "DB_USER=Камила Токтобаева"
set "DB_PASS="

set "SRC=%~dp0src.xml"
set "EPF=%~dp0bin\DolgiAlign.epf"

set "AUTH="
if not "%DB_USER%"=="" set AUTH=%AUTH% /N "%DB_USER%"
if not "%DB_PASS%"=="" set AUTH=%AUTH% /P "%DB_PASS%"
