@echo off
@chcp 65001
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
echo 記得先解壓縮安裝包喲！(若有錯誤就是你沒有解壓縮)

xcopy %~dp0teablacklist C:\"Program Files (x86)"\teablacklist /h /y /i /e /v
xcopy C:\"Program Files (x86)"\teablacklist\Minecraft.exe C:\teablacklist\ /h /y /i /e

@reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v DisplayName /t REG_SZ /d "茶紅自製功能選單" /f
@reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v DisplayVersion /t REG_SZ /d "1.7" /f
@reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v InstallLocation /t REG_SZ /d "C:\Program Files (x86)\teablacklist\ " /f
@reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v Publisher /t REG_SZ /d "茶紅teablack" /f
@reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v UninstallString /t REG_SZ /d "C:\Program Files (x86)\teablacklist\Uninstall.bat " /f
@reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\teablack_cmd_list" /v DisplayIcon /t REG_SZ /d "C:\Program Files (x86)\teablacklist\茶紅自製功能選單.ico " /f

copy C:\"Program Files (x86)"\teablacklist\.data\其他工具包\sed.exe C:\windows
copy C:\"Program Files (x86)"\teablacklist\.data\startone\執行茶紅自製功能選單.cmd C:\Users\"All Users"\桌面\
echo 系統安裝完成
chcp 65001
echo.
echo.
type C:\"Program Files (x86)"\teablacklist\.data\appinfo.tealist
echo.
type C:\"Program Files (x86)"\teablacklist\.data\updateinfo.tealist
echo.
pause
start C:\"Program Files (x86)"\teablacklist\茶紅自製功能選單.cmd

exit
