@ECHO OFF

SET TARGET="C:\茶紅自製功能選單.lnk"
SET SOURCE="C:\"Program Files (x86)"\teablacklist\茶紅自製功能選單.cmd"
SET ICON="C:\"Program Files (x86)"\teablacklist\茶紅自製功能選單.ico"
SET DESC="茶紅自製功能選單"
SET HOTKEY="ALT+F"
REM ====== Window Style ======
SET WINDOW_NOR=1
SET WINDOW_MAX=3
SET WINDOW_MIN=7
SET WINDOW_STYLE=%WINDOW_MAX%
REM ==========================

SET SCRIPT="%TEMP%\%RANDOM%.vbs"

ECHO SET oWS = WSCript.CreateObject("WSCript.Shell") >> %SCRIPT%
ECHO sLinkFile = %TARGET% >> %SCRIPT%
ECHO Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
ECHO oLink.TargetPath = %SOURCE% >> %SCRIPT%
ECHO oLink.IconLocation = %ICON% >> %SCRIPT%
ECHO oLink.WindowStyle = %WINDOW_STYLE% >> %SCRIPT%
ECHO oLink.Description = %DESC% >> %SCRIPT%
ECHO oLink.HotKey = %HOTKEY% >> %SCRIPT%
ECHO oLink.Arguments = "" >> %SCRIPT%
ECHO oLink.Save >> %SCRIPT%

CSCRIPT /NoLogo %SCRIPT%
DEL %SCRIPT%