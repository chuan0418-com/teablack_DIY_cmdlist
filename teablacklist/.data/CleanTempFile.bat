@echo off

chcp 65001
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
echo 正在清除系統垃圾檔案中，請稍候......
del /f /s /q C:\茶紅自製多功能選單補丁包\Temp\Office2019

del /f /s /q %systemdrive%\*.tmp

del /f /s /q %systemdrive%\*._mp

del /f /s /q %systemdrive%\*.log

del /f /s /q %systemdrive%\*.gid

del /f /s /q %systemdrive%\*.chk

del /f /s /q %systemdrive%\*.old

del /f /s /q %systemdrive%\recycled\*.*

del /f /s /q %windir%\*.bak

del /f /s /q %windir%\prefetch\*.*

del /f /q %userprofile%\cookies\*.*

del /f /q %userprofile%\recent\*.*

del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"

del /f /s /q "%userprofile%\Local Settings\Temp\*.*"

del /f /s /q "%userprofile%\recent\*.*"

DEL /S /F /Q "%systemroot%\Temp\*.*"

DEL /S /F /Q "%AllUsersProfile%\「開始」功能表\程式集\Windows Messenger.lnk"

RD /S /Q %windir%\temp & md %windir%\temp

RD /S /Q "%userprofile%\Local Settings\Temp"

MD "%userprofile%\Local Settings\Temp"

RD /S /Q "%systemdrive%\Program Files\Temp"

MD "%systemdrive%\Program Files\Temp"

RD /S /Q "%systemdrive%\d"

net user aspnet /delete

cleanmgr /sagerun:99

echo 清除系統垃圾檔案完成！