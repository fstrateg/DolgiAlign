@echo off
call "%~dp01c-env.bat"

echo Building EPF...

"%DESIGNER%" DESIGNER /F "%DB%" %AUTH% /LoadExternalDataProcessorOrReportFromFiles "%SRC%" "%EPF%" /Out log.txt /DisableStartupDialogs
if errorlevel 1 exit /b %errorlevel%

type log.txt

