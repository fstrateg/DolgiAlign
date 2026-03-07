@echo off

set DESIGNER="C:\Program Files\1cv8\8.3.25.1374\bin\1cv8.exe"
set DB=C:\Games\1C\EmptyDb
set EPF=C:\Games\1C\Projects\UpdateDolgi\bin\DolgiAlign.epf
set OUT=C:\Games\1C\Projects\UpdateDolgi\src

echo Cleaning old source...
if exist "%OUT%" rmdir /s /q "%OUT%"

echo Unpacking EPF...

%DESIGNER% DESIGNER /F "%DB%" /DumpExternalDataProcessorOrReportToFiles "%OUT%" "%EPF%" /Out log.txt /DisableStartupDialogs

echo Done
pause