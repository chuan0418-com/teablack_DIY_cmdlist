@chcp 950

@title �����ۻs�h�\����ɤB�]

@echo off


echo.
echo.

echo ***�ϥμƦr��������***

echo.

echo enter the debug mode (only for developers)

echo.

echo 0. ��L�w�w�˪��u��]

echo 1. �t�������P���s�Ұʵ�

echo 2. �t�Υ\��վ�νT�{

echo 3. �}��MineCraft�P�Ҳո�Ƨ�

echo 4. �}�ұ`�Ψt������

echo 5. �M�z�t�Χ֨��ɮ�

echo.

set /p ask=��ܥ\��G

if "%ask%"=="debug" start C:\"Program Files (x86)"\teablacklist\.data\debug.bat

if "%ask%"=="0" start C:\"Program Files (x86)"\teablacklist\.data\installed.bat

if "%ask%"=="1" echo �l���01 &echo 1. ����&echo 2. ���s�Ұ�&set /p ask2=��ܤl01�\��G

if "%ask%"=="2" echo ------------------------------------------------------------------ &echo 1. �۰ʿ�� Hyper-V (�ݭ���) &echo 2. ���� Hyper-V �A�� (�ݭ���) &echo 3. �}�Ҥu��C�������ﶵ&echo 4. �����u��C�������ﶵ &echo 5. �ƥ��X�ʵ{��&echo 6. �٭��X�ʵ{�� &set /p ask2=��ܤl02�\��G

if "%ask%"=="3" start C:\"Program Files (x86)"\teablacklist\Minecraft.exe&cd %appdata%\.minecraft\&start .

if "%ask%"=="4" echo ------------------------------------------------------------------ &echo �l���05�G &echo 1. �}�Ҥ����J�k &set /p ask5=��ܤl05�\��G

if "%ask%"=="5" start C:\"Program Files (x86)"\teablacklist\.data\CleanTempFile.bat


if "%ask1%"=="1" run shutdown
if "%ask1%"=="2" run reboot



if "%ask2%"=="1" run bcdedit /set hypervisorlaunchtype auto
if "%ask2%"=="2" run bcdedit /set hypervisorlaunchtype off
if "%ask2%"=="3" start C:\"Program Files (x86)"\teablacklist\.data\�����ﶵ�}.reg
if "%ask2%"=="4" start C:\"Program Files (x86)"\teablacklist\.data\�����ﶵ��.reg
if "%ask2%"=="5" start C:\"Program Files (x86)"\teablacklist\.data\BackupDrivers.bat
if "%ask2%"=="6" start C:\"Program Files (x86)"\teablacklist\.data\RestoreDrivers.bat


if "%ask5%"=="1" start C:\Windows\System32\ctfmon.exe