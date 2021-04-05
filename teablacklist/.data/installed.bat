title 茶紅自製多功能選單補丁包__已安裝的工具包

@echo off

@chcp 950

echo.
echo.

type C:\"Program Files (x86)"\teablacklist\.data\installedcontent.tealist

echo.
echo.

set /p ask=選擇功能：

if "%ask%"=="0" start C:\"Program Files (x86)"\teablacklist\茶紅自製功能選單.bat&exit
if "%ask%"=="1" start C:\"Program Files (x86)"\teablacklist\Temp\Office2019\setup.exe
if "%ask%"=="2" start C:\"Program Files (x86)"\teablacklist\Temp\Office2007\setup.exe
if "%ask%"=="3" start C:\"Program Files (x86)"\teablacklist\.data\"Microsoft Activation Scripts.cmd"
if "%ask%"=="4" start C:\"Progarm Files (x86)"\teablacklist\.data\Run_Minecraft_Server.cmd