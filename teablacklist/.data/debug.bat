title Debug mode for teablack_cmd_list
@echo off

echo.
echo.
type C:\"Program Files (x86)"\teablacklist\.data\appinfo.tealist
chcp 65001
echo 0. Back to main menu
echo 1. Uninstall
echo.
echo.

set /p ask=chose the number：

if "%ask%"=="0" start C:\"Program Files (x86)"\teablacklist\茶紅自製功能選單.cmd&exit
if "%ask%"=="1" start C:\"Program Files (x86)"\teablacklist\Uninstall.bat&exit