if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HidePowerOptions /t REG_DWORD /d "1" /f