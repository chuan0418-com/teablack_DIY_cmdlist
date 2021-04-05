@echo off
@chcp 65001

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v DisplayName /t REG_SZ /d "茶紅自製功能選單" /f
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v DisplayVersion /t REG_SZ /d "1.6" /f
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v InstallLocation /t REG_SZ /d "C:\Program Files (x86)\teablacklist\ " /f
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v Publisher /t REG_SZ /d "茶紅teablack" /f
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v UninstallString /t REG_SZ /d "C:\Program Files (x86)\teablacklist\Uninstall.bat " /f
@reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v DisplayIcon /t REG_SZ /d "C:\Program Files (x86)\teablacklist\茶紅自製功能選單.ico " /f

del /Q C:\"Program Files (x86)"\teablacklist

del /Q C:\teablacklist

echo 請自行刪除桌面執行檔案
echo 解除安裝完成
pause