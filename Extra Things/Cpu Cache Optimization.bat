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


for /f "tokens=2 delims==" %%I in ('wmic cpu get L2CacheSize /value ^| find "L2CacheSize"') do set L2CacheSize=%%I
for /f "tokens=2 delims==" %%I in ('wmic cpu get L3CacheSize /value ^| find "L3CacheSize"') do set L3CacheSize=%%I

echo.
echo.
echo %w% - L2 Cache Size:%L2CacheSize%KB
echo %w% - L3 Cache Size:%L3CacheSize%KB %b%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "%L2CacheSize%" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ThirdLevelDataCache" /t REG_DWORD /d "%L3CacheSize%" /f 

chcp 65001 >nul

echo.
echo.
echo.                                              %B% "═══════════════════════════════════════════════════════"
echo.                                                            %w%  Press any key to exit...                
echo.                                              %b% "═══════════════════════════════════════════════════════"
pause > nul
cls
exit