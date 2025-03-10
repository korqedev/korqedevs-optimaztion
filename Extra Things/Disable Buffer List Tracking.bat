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

echo %w% - Disable Bufferlist Tracking%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "TrackNblOwner" /t REG_DWORD /d "0" /f
echo.
echo.
echo.                                              %B% "═══════════════════════════════════════════════════════"
echo.                                                            %w%  Press any key to exit...                
echo.                                              %b% "═══════════════════════════════════════════════════════"
pause > nul
cls
exit
