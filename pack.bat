@echo off

REM Установка кодовой страницы для корректного отображения кириллицы
chcp 65001 >nul

REM путь к платформе
set DESIGNER="C:\Program Files\1cv8\8.3.25.1374\bin\1cv8.exe"

REM пустая база
set DB=C:\Games\1C\EmptyDb

REM папка с кодом
set SRC=C:\Games\1C\Projects\UpdateDolgi\src.xml

REM куда сохранить EPF
set EPF=C:\Games\1C\Projects\UpdateDolgi\bin\DolgiAlign.epf

echo Формирование EPF...

%DESIGNER% DESIGNER /F "%DB%" /LoadExternalDataProcessorOrReportFromFiles "%SRC%" "%EPF%" /Out log.txt /DisableStartupDialogs

type log.txt

REM echo Done
REM pause
