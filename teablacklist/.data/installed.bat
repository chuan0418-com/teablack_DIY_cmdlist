title �����ۻs�h�\����ɤB�]__�w�w�˪��u��]

@echo off

@chcp 950

echo.
echo.

type C:\"Program Files (x86)"\teablacklist\.data\installedcontent.tealist

echo.
echo.

set /p ask=��ܥ\��G

if "%ask%"=="0" start C:\"Program Files (x86)"\teablacklist\�����ۻs�\����.bat&exit
if "%ask%"=="1" start C:\"Program Files (x86)"\teablacklist\Temp\Office2019\setup.exe
if "%ask%"=="2" start C:\"Program Files (x86)"\teablacklist\Temp\Office2007\setup.exe
if "%ask%"=="3" start C:\"Program Files (x86)"\teablacklist\.data\"Microsoft Activation Scripts.cmd"
if "%ask%"=="4" start C:\"Progarm Files (x86)"\teablacklist\.data\Run_Minecraft_Server.cmd