@echo Off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
set w=[97m
set p=[95m
set b=[96m
chcp 437>nul
chcp 65001 >nul
echo.
echo.
echo.                                             
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
chcp 437>nul
echo %w% - Disabling Power Managment On Devices%b%
POWERSHELL "$devices = Get-WmiObject Win32_PnPEntity; $powerMgmt = Get-WmiObject MSPower_DeviceEnable -Namespace root\wmi; foreach ($p in $powerMgmt){$IN = $p.InstanceName.ToUpper(); foreach ($h in $devices){$PNPDI = $h.PNPDeviceID; if ($IN -like \"*$PNPDI*\"){$p.enable = $False; $p.psbase.put()}}}"
)
chcp 65001 >nul

echo.
echo.
echo.                                              %B% "═══════════════════════════════════════════════════════"
echo.                                                            %w%  Press any key to exit...                
echo.                                              %b% "═══════════════════════════════════════════════════════"
pause > nul
cls
exit
