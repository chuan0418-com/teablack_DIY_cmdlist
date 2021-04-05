@echo off
@chcp 950

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

echo 請先將備份的驅動程式移動到 C:\Drivers ，再開始還原

pause 

dism /online /Add-Driver /Derivers:C:\Drivers