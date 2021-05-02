@echo off
@chcp 65001
@title 茶紅自製多功能選單
set dir=C:\"Program Files (x86)"\teablacklist


echo.
echo.
echo ***使用數字鍵選取項目***
echo.
echo enter the debug mode (only for developers)
echo.
echo 0. 其他已安裝的工具包 
echo 1. 系統關機與重新啟動等 
echo 2. 系統功能調整及確認 
echo 3. 開啟常用系統應用 
echo 4. 清理系統快取檔案 
echo.
set /p ask=選擇功能：

if "%ask%"=="debug" start %dir%\.data\debug.bat
if "%ask%"=="0" start %dir%\.data\installed.bat
if "%ask%"=="1" echo 子選單01 &echo 1. 關機&echo 2. 重新啟動&set /p ask2=選擇子01功能：
if "%ask%"=="2" echo ------------------------------------------------------------------ &echo 1. 自動選取 Hyper-V (需重啟) &echo 2. 關閉 Hyper-V 服務 (需重啟) &echo 3. 開啟工具列的關機選項&echo 4. 關閉工具列的關機選項 &echo 5. 備份驅動程式&echo 6. 還原驅動程式 &set /p ask2=選擇子02功能：
if "%ask%"=="3" echo ------------------------------------------------------------------ &echo 子選單05： &echo 1. 開啟中文輸入法 &set /p ask5=選擇子05功能：
if "%ask%"=="4" start %dir%\.data\CleanTempFile.bat


if "%ask1%"=="1" run shutdown
if "%ask1%"=="2" run reboot


if "%ask2%"=="1" start %dir%\.data\Hyper-V\auto.bat
if "%ask2%"=="2" start %dir%\.data\Hyper-V\off.bat
if "%ask2%"=="3" start %dir%\.data\關機選項開.bat
if "%ask2%"=="4" start %dir%\.data\關機選項關.bat
if "%ask2%"=="5" start %dir%\.data\BackupDrivers.bat
if "%ask2%"=="6" start %dir%\.data\RestoreDrivers.bat


if "%ask5%"=="1" start C:\Windows\System32\ctfmon.exe