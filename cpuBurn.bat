@echo off
for /f "tokens=*" %%f in ('wmic cpu get NumberOfLogicalProcessors /value ^| find "NumberOfLogicalProcessors"') do set %%f

echo detected processors %NumberOfLogicalProcessors%

for /L %%a in (1,1,%NumberOfLogicalProcessors%) Do START /B /REALTIME cmd.exe /C FOR /L %%N IN () DO cls
