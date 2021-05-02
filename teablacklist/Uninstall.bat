@echo off
@chcp 65001

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v DisplayName
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v DisplayVersion
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v InstallLocation
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v Publisher
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v UninstallString
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v DisplayIcon

del /Q C:\"Program Files (x86)"\teablacklist

del /Q C:\teablacklist

del /Q %userporfile%\Desktop\茶紅自製功能選單.lnk

echo 解除安裝完成
pause