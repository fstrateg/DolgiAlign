@echo off
call "%~dp01c-env.bat"

set "OUT=%~dp0src"

echo Cleaning old source...
if exist "%OUT%" rmdir /s /q "%OUT%"

echo Unpacking EPF...

"%DESIGNER%" DESIGNER /F "%DB%" %AUTH% /DumpExternalDataProcessorOrReportToFiles "%OUT%" "%EPF%" /Out log.txt /DisableStartupDialogs
if errorlevel 1 exit /b %errorlevel%

type log.txt
