title Debug mode for teablack_cmd_list

@echo off

@chcp 950

echo.
echo.

chcp 65001

type C:\"Program Files (x86)"\teablacklist\.data\appinfo.tealist
chcp 950
echo 0. Back to main menu
echo 1. Uninstall
echo.
echo.

set /p ask=chose the number�G

if "%ask%"=="0" start C:\"Program Files (x86)"\teablacklist\�����ۻs�\����.cmd&exit
if "%ask%"=="1" start C:\"Program Files (x86)"\teablacklist\Uninstall.bat&exit