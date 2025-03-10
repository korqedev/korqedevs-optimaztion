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

echo %w% - Disable Netbios Over TCP/IP%b%
for /f %%k in ('reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces') do (
reg add %%k /v NetbiosOptions /t reg_dword /d 2 /f 
) 
echo.
echo.
echo.                                              %B% "═══════════════════════════════════════════════════════"
echo.                                                            %w%  Press any key to exit...                
echo.                                              %b% "═══════════════════════════════════════════════════════"
pause > nul
cls
exit
