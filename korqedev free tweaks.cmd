 @echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
@echo off
::korqedev free tweaking utility v9.0 | Made and distributed by korqedev TWEAKS, S.R.O. ® 2025

:: Color Codes
set w=[97m
set g=[90m
set p=[95m
set b=[96m
set o=[1m

:: Enabling ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

::Enabling Delayed Expansion
setlocal EnabledelayedExpansion > nul
cls 

for /f %%i in ('wmic path Win32_UserAccount where name^="%username%" get sid ^| findstr "S-"') do set "USER_SID=%%i"

::Enabling Restore points 
chcp 437 >nul 2>&1
powershell -NoProfile Enable-ComputerRestore -Drive 'C:\' >nul 2>&1
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
chcp 65001 >nul 2>&1
cls 
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                            ╔════════════════════════════════════════════════════╗
echo.                                                                            ║                                                    ║
echo.                                                                            ║     %w% Checking for Administrative Privelages...   %b%  ║
echo.                                                                            ║                                                    ║
echo.                                                                            ╚════════════════════════════════════════════════════╝
timeout /t 3 /nobreak > NUL
rmdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
mkdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
if %errorlevel% neq 1 goto welcome  
) ELSE ( 
cls 
timeout /t 1 /nobreak > NUL
chcp 437 >nul 2>&1
powershell -NoProfile -NonInteractive -Command start -verb runas "'%~s0'" >nul 2>&1
chcp 65001 >nul 2>&1
:rmenu
cls
echo. 
echo. 
echo. 
echo. 
echo.                                                    %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                           %W%   korqedev is not running as Admin!
echo.                                         
echo.                                                              %W% Please close the utility and run it as administrator so the optimizations can apply properly!
echo.                                         
echo.                                                                                            %W%  If you want to Exit press X  
echo.                                                    %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                 
echo.                                                         %W% If that doesnt work, you can press U to disable UAC, after that restart your pc and utility should work
echo.                  
echo.                                                    %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%

set /p input=:
if /i %input% == X exit
if /i %input% == U start https://discordapp.com/channels/1177410668606009444/1178430446590238860/1325530493332226198
)
) ELSE (
echo Invalid Input & goto rmen
%b%
:welcome
CLS
echo.
echo.
echo. 
echo.
echo.                                                                       %p% ██╗       ██╗███████╗██╗      █████╗  █████╗ ███╗   ███╗███████╗ 
echo.                                                                       %p% ██║  ██╗  ██║██╔════╝██║     ██╔══██╗██╔══██╗████╗ ████║██╔════╝ 
echo.                                                                       %p% ╚██╗████╗██╔╝█████╗  ██║     ██║  ╚═╝██║  ██║██╔████╔██║█████╗   
echo.                                                                       %p%  ████╔═████║ ██╔══╝  ██║     ██║  ██╗██║  ██║██║╚██╔╝██║██╔══╝   
echo.                                                                       %p%  ╚██╔╝ ╚██╔╝ ███████╗███████╗╚█████╔╝╚█████╔╝██║ ╚═╝ ██║███████╗ 
echo.                                                                       %p%   ╚═╝   ╚═╝  ╚══════╝╚══════╝ ╚════╝  ╚════╝ ╚═╝     ╚═╝╚══════╝  
echo.                             %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                      We are not responsible for any problems this may cause to your pc, if you encounter any, don't be afraid to reach out in our discord server 
echo.
echo.                                                                  It is prohibited to resell/repackage any of our free tools, it will lead to consequences
echo.                             %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                 Press a NUMBER on your keyboard followed by ENTER to select an option, Please Read All warnings, don't just blindly press buttons without reading.
echo.
echo.                                          You can find the tutorial, more information about the utility and much more in the korqedev Tweaks Discord Server discord.gg/korqedev
echo.                                                                         %p%%p%%p%%g%  korqedev TWEAKS, S.R.O. ® * Updated 17th of February 2025                   
echo.                             %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%b%
echo.                               
echo.
echo.
echo.                                                                        %b%"═══════════════════════════════════════════════════════"
echo.                                                                                     %w%    Press any key to continue...
echo.                                                                        %b%"═══════════════════════════════════════════════════════"
pause > nul
CLS

 
:: Restore Point
:restorepoint
cls
echo.
echo.
echo.
echo.
echo.                                                  
echo.                                                    %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗         
echo.                                                    %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝        
echo.                                                    %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║            
echo.                                                    %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║           
echo.                                                    %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║           
echo.                                                    %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝           
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                %w% Do you want to Create a Restore Point?                                 
echo.                                                                                                                                                                 
echo.                                                                                                                                                                 
echo.                                                              %p%[%w%1%p%]%w% Make A restore Point                                  %p%[%w%2%p%]%w% Skip                                     
echo.                                                                                                                                                                 
echo.                                                                                                                                                                 
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                     %W% Allows you to revert your PC to the same settings as it was when making the restore point         
echo.                                                        %W% You can use a restore point to revert the tweaks made by the utility, if you wish so                
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
 
set /p input=:
if /i %input% == 1 goto createRP
if /i %input% == 2 goto resources
if /i %input% == R goto restore
::secretskiptomenu
if /i %input% == m goto menu
) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu

:RedirectMenu
goto restorepoint

:createRP
cls 
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║   
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║   
echo.                                                                  %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║   
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝   
echo.
echo. %w% Creating a restore point... ( %b%                                                       
chcp 437 >nul
powershell "Checkpoint-Computer -Description 'korqedev Tweaks Restore Point'
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Restore point completed successfully, press "OK" to continue', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 
cls
goto :resources

:resources
::making korqedev folder
md C:\korqedev
cls 
::Downloading power plan, autoruns, nvidia profile inspector, NVPI config, & Windows update blocker
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗ █████╗ ██╗   ██╗██████╗  █████╗ ███████╗ ██████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔════╝██╔════╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗ ██║  ██║██║   ██║██████╔╝██║  ╚═╝█████╗  ╚█████╗ 
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗██║  ██║██║   ██║██╔══██╗██║  ██╗██╔══╝   ╚═══██╗
echo.                                                                  %p%██║  ██║███████╗██████╔╝╚█████╔╝╚██████╔╝██║  ██║╚█████╔╝███████╗██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚══════╝╚═════╝ 
echo.
echo. %w% Downloading Resources Used by the tool... %g%(You can find them in the C:\korqedev folder, they are all trusted apps used by thousands of people) %b%                                                       
echo.
chcp 437 >nul 2>&1
curl -g -k -L -# -o "%temp%\korqedev.zip" "https://github.com/korqedev4L/korqedevresources/raw/49a210cc246950fbe006397db88d11ef1447e4c1/8.0.zip" 




Powershell -NoProfile Expand-Archive '%temp%\korqedev.zip' -DestinationPath 'C:\korqedev' >nul 2>&1 
cls

powershell "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Downloaded resources successfully, Press "OK" To continue to the menu! ', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1

goto menu

:soon
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto menu

:restore
cls
rstrui.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto menu

 
:menu
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                %w% Hey, You are using the FREE Version of korqedev Tweaks, Unlock 10x more tweaks and your PC's full potential at mediagrind.com                                        
echo.
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                                                                              
echo.                                                  %p%[%w%1%p%]%w% General System Optimizations         %p%[%w%2%p%]%w% Power Optimizations                    %p%[%w%3%p%]%w% Mouse and Keyboard Optimizations 
echo. 
echo.                                                  %p%[%w%4%p%]%w% GPU Optimizations                    %p%[%w%5%p%]%w% CPU Optimizations                      %p%[%w%6%p%]%w% PC clean                  
echo.                                                                                                                                                                                 
echo.                                                  %p%[%w%7%p%]%w% System Debloat                       %p%[%w%8%p%]%w% Storage Optimizations                  %p%[%w%9%p%]%w% Memory Optimizations
echo.                                                                                                                                                                                 
echo.                                                  %p%%p%%p%%p%                                         %p%[%w%10%p%]%w% korqedev Network Tweaking Utility           
echo.                                                                                                                                                                                 
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                                                                                                                 
echo.                                                  %p%[%w%F%p%]%w% Fixes                                %p%[%w%W%p%]%w% Completely Optimize Your PC            %p%[%w%P%p%]%w% Use Restore Point
echo.                                                                                                                                                                                 
echo.                                                  %p%[%w%R%p%]%w% Reverts                              %p%[%w%X%p%]%w% Exit The Utility                       %p%[%w%E%p%]%w% korqedev Tweaks Discord
echo.
echo.                                                                                  %p%%p%%p%%g%  korqedev TWEAKS, S.R.O. ® * Updated 17th of February 2025                   
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%



set /p input=:
if /i %input% == 1 goto 1
if /i %input% == 2 goto 2war
if /i %input% == 3 goto 3
if /i %input% == 4 goto 4
if /i %input% == 5 goto 5war
if /i %input% == 6 goto 6
if /i %input% == 7 goto 7war
if /i %input% == 8 goto 8
if /i %input% == 9 goto 9
if /i %input% == 10 goto 10 

if /i %input% == F goto E
if /i %input% == P goto Restore
if /i %input% == R goto Reverts
if /i %input% == X goto Exit
if /i %input% == W start https://korqedevtweaks.com 
if /i %input% == E start https://discord.gg/korqedev

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 1 
goto RedirectMenu

:RedirectMenu
cls
goto menu

:Refresh
echo %w% - Loading ...%b%
cls 
md C:\korqedev >nul 2>&1
echo %w% - Refreshing korqedev resource folder %b%
timeout /t 1 /nobreak > NUL
del /s /q C:\korqedev  >nul 2>&1

goto :resources

:Reverts
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                             %p%       ██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗
echo.                                                             %p%       ██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝
echo.                                                             %p%       ██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   
echo.                                                             %p%       ██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   
echo.                                                             %p%       ██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   
echo.                                                             %p%       ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%                                                 
echo.                                                     If you want to revert absolutely everything, using a restore point is better
echo.
echo.                                                                            %p%[%w%A%p%]%w% Revert All                              
echo.
echo.                
echo.                                                                       %p%[%w%1%p%]%w% Revert General Category                                
echo.                                                                                                                          
echo.                                                                       %p%[%w%2%p%]%w% Revert Mouse and keyboard Category                                
echo.                                                                                                                      
echo.                                                                       %p%[%w%4%p%]%w% Revert Ram/Memory Category                                                
echo.                                                                                                                        
echo.                                                                       %p%[%w%5%p%]%w% Revert GPU Category                                         
echo.                                                                                                                       
echo.                                                                       %p%[%w%6%p%]%w% Revert CPU Category     
echo.
echo.                                                                       %p%[%w%7%p%]%w% Revert Power Category
echo.
echo.                                                                       %p%[%w%8%p%]%w% Revert Debloat Category
echo.
echo.                                                                       %p%[%w%9%p%]%w% Revert Storage Category
echo.
echo.                                                                       %p%[%w%10%p%]%w% Revert Network Utility 
echo.
echo.                                                                       %p%[%w%11%p%]%w% Revert Uninstall
echo.

echo.                                                                            %p%[%w%M%p%]%w% Back to menu                                         
echo.                                                                              
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                                                %W% Allows you to revert all tweaks from certain categories
echo.                                               %W% Its still recommended to use a restore point if you want to get rid of the tweaks completely
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 goto revertgeneral
if /i %input% == 2 goto revertkeyboard
if /i %input% == 3 goto revertwindows
if /i %input% == 4 goto revertram
if /i %input% == 5 goto revertgpu
if /i %input% == 6 goto revertcpu
if /i %input% == 7 goto revertpower
if /i %input% == 8 goto revertdebloat
if /i %input% == 9 goto revertstorage
if /i %input% == 10 goto revertnet
if /i %input% == 11 goto revertnet
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :e


:exit
cls
echo.
echo.
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Make sure to restart your pc after using, so the tweaks properly apply, thanks for using the korqedev utility. Press "ok" to exit', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
timeout /t 1 /nobreak > nul
chcp 65001 >nul 2>&1
pause > nul
cls
exit



:d12
cls
echo.
echo.
echo.
echo.                                                                  %p%██╗   ██╗███╗  ██╗██╗███╗  ██╗ ██████╗████████╗ █████╗ ██╗     ██╗     
echo.                                                                  %p%██║   ██║████╗ ██║██║████╗ ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
echo.                                                                  %p%██║   ██║██╔██╗██║██║██╔██╗██║╚█████╗    ██║   ███████║██║     ██║     
echo.                                                                  %p%██║   ██║██║╚████║██║██║╚████║ ╚═══██╗   ██║   ██╔══██║██║     ██║     
echo.                                                                  %p%╚██████╔╝██║ ╚███║██║██║ ╚███║██████╔╝   ██║   ██║  ██║███████╗███████╗
echo.                                                                  %p% ╚═════╝ ╚═╝  ╚══╝╚═╝╚═╝  ╚══╝╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
echo.                                                           %b%"════════════════════════════════════════════════════════════════════════════════"%w%
echo.      
echo.                                                                             %p%[%w%1%p%]%w% Uninstall Windows Preinstalled Apps    
echo.  
echo.                                                                             %p%[%w%2%p%]%w% Uninstall Useless Apps Via settings
echo.
echo.                                                                             %p%[%w%3%p%]%w% Uninstall Microsoft edge
echo.
echo.                                                                             %p%[%w%4%p%]%w% Uninstall Cortana / Copilot
echo.
echo.
echo.                                                                                        %p%[%w%R%p%]%w% Revert                          
echo.                                                                                           
echo.                                                                                        %p%[%w%M%p%]%w% Back to menu                               
echo.                                                                                          
echo.                                                           %b%"════════════════════════════════════════════════════════════════════════════════"
echo.                                                                        %W% Allows you to uninstall useless preinstalled windows apps 
echo.                                                           %b%"════════════════════════════════════════════════════════════════════════════════"
echo.               
set /p input=:
if /i %input% == 1 goto U1
if /i %input% == 2 goto U2
if /i %input% == 3 goto U3
if /i %input% == 4 goto U4
if /i %input% == R goto revertapps
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto d12

:u4
echo %w% - Uninstalling Cortana / Copilot%b%

chcp 437 >nul 
timeout /t 1 /nobreak > NUL
Powershell -Command "Get-appxpackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
Powershell -Command "Get-AppxPackage Microsoft.Windows.Ai.Copilot.Provider | Remove-AppxPackage" 
timeout /t 1 /nobreak > NUL
chcp 65001 >nul 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu


:u3
cls
echo.
echo.
echo.
echo.                                                                     %p% ███████╗██████╗  ██████╗ ███████╗
echo.                                                                     %p% ██╔════╝██╔══██╗██╔════╝ ██╔════╝
echo.                                                                     %p% █████╗  ██║  ██║██║  ██╗ █████╗  
echo.                                                                     %p% ██╔══╝  ██║  ██║██║  ╚██╗██╔══╝  
echo.                                                                     %p% ███████╗██████╔╝╚██████╔╝███████╗
echo.                                                                     %p% ╚══════╝╚═════╝  ╚═════╝ ╚══════╝ 
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                
echo.                                                    %p%[%w%1%p%]%w% Uninstall microsoft edge        %p%[%w%2%p%]%w% Install microsoft edge
echo.                                                                                 
echo.   
echo.                                                                        %p%[%w%M%p%]%w% Skip and go Back to menu   
echo.
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                     %W%Completely uninstalls microsoft edge, there is a revert for this
echo.                                                    %W% But unfortunatly the revert doesnt work 100% of the time
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo. 
echo. 

set /p input=:
if /i %input% == 1 goto edgingoff
if /i %input% == 2 goto edgingon
if /i %input% == M CLS & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect 

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenue
:RedirectMenu
cls
goto :edging

:edgingoff
echo %w% - Disabling Microsoft edging  %b%
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1
echo Deleting Edge Directories.
rd /s /q "C:\Program Files (x86)\Microsoft\Edge" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeCore" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\Temp" >nul 2>&1
echo Deleting Microsoft Edge Shortcuts.
del "C:\Users\Public\Desktop\Microsoft Edge.lnk" >nul 2>&1
del "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" >nul 2>&1
del "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Microsoft Edge.lnk" >nul 2>&1
cls


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto d12

:edgingon
echo %w% - Reinstalling Microsoft edge %g%(may not work 100% of the time, if it doesnt, use a restore point) %b%
chcp 437 >nul 
powershell:Start-Process -FilePath winget -ArgumentList "install --force  --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow
chcp 65001 >nul 
cls
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto d12

:revertapps
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
echo %w% - Redownload default windows apps %g%(Errors may show, thats because the app that the command is trying to install is already installed, so dont worry)%b%
chcp 437 > nul
Powershell -Command "Get-AppxPackage -allusers | foreach {Add-AppxPackage -register “$($_.InstallLocation)\appxmanifest.xml” -DisabledevelopmentMode}"

powershell:Start-Process -FilePath winget -ArgumentList "install --force  --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow
chcp 65001 > nul
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
zecho.
pause > nul
cls
goto menu

:U2
start ms-settings:appsfeatures
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto d12

:U1
chcp 437 >nul
CLS
echo.
echo.
echo [                             0%                            ]
echo.
echo %w%- Uninstalling BingWeather %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage}
CLS

echo.
echo.
echo [==                           3.5%                          ]
echo.
echo %w%- Uninstalling GetHelp  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage}
CLS

echo.
echo.
echo [====                         7.0%                          ]
echo.
echo %w%- Uninstalling Getstarted  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=====                        10.5%                         ]
echo.
echo %w%- Uninstalling Messaging  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage}
CLS

echo.
echo.
echo [======                       14.5%                         ]
echo.
echo %w%- Uninstalling Messaging  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage}
CLS

echo.
echo.
echo [========                     18.0%                         ]
echo.
echo %w%- Uninstalling MicrosoftSolitaireCollection %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage}
CLS 

echo.
echo.
echo [==========                   21.5%                         ]
echo.
echo %w%- Uninstalling MicrosoftStickyNotes %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage}
CLS

echo.
echo.
echo [============                 24.5%                         ]
echo.
echo %w%- Uninstalling MixedReality.Portal %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage}
CLS

echo.
echo.
echo [==============               27.0%                         ]
echo.
echo %w%- Uninstalling OneConnect %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===============              28.5%                         ]
echo.
echo %w%- Uninstalling People %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.People* | Remove-AppxPackage}
CLS

echo.
echo.
echo [==================           30.5%                         ]
echo.
echo %w%- Uninstalling Print3D %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===================           32.0%                        ]
echo.
echo %w%- Uninstalling SkypeApp %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage}
CLS

echo.
echo.
echo [====================         34.0%                         ]
echo.
echo %w%- Uninstalling WindowsAlarms %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=====================        35.2%                         ]
echo.
echo %w%- Uninstalling WindowsCamera %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage}
CLS

echo.
echo.
echo [======================       37.5%                         ]
echo.
echo %w%- Uninstalling windowscommunicationsapps %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=======================      38.8%                         ]
echo.
echo %w%- Uninstalling WindowsMaps %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage}
CLS

echo.
echo.
echo [========================     40.0%                         ]
echo.
echo %w%- Uninstalling WindowsFeedbackHub %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=========================    42.2%                         ]
echo.
echo %w%- Uninstalling WindowsSoundRecorder %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=========================    44.5%                         ]
echo.
echo %w%- Uninstalling YourPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===========================  47.0%                         ]
echo.
echo %w%- Uninstalling ZuneMusic %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===========================  49.0%                         ]
echo.
echo %w%- Uninstalling HEIFImageExtension %g% (Removing Preinstalled Apps) %b%

PowerShell -command "& {Get-AppxPackage *Microsoft.HEIFImageExtension* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================51.0%                         ]
echo.
echo %w%- Uninstalling WebMediaExtensions %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================53.5%==                       ]
echo.
echo %w%- Uninstalling WebpImageExtension %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WebpImageExtension* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================56.7%====                     ]
echo.
echo %w%- Uninstalling 3dBuilder %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.3dBuilder* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================59.5%======                   ]
echo.
echo %w%- Uninstalling bing %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *bing* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================62.0%========                 ]
echo.
echo %w%- Uninstalling bingfinance %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *bingfinance* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================65.5%==========               ]
echo.
echo %w%- Uninstalling bingsports %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *bingsports* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================69.0%============             ]
echo.
echo %w%- Uninstalling CommsPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================75.0 %=============           ]
echo.
echo %w%- Uninstalling Drawboard PDF %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *Drawboard PDF* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================79.5%%===============         ]
echo.
echo %w%- Uninstalling Sway %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *Sway* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================85.0%%===================     ]
echo.
echo %w%- Uninstalling WindowsAlarms %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================90.5%%=====================   ]
echo.
echo %w%- Uninstalling WindowsPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================93.5%%=====================   ]
echo.
echo %w%- Uninstalling WindowsPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================100.0%%=======================]
echo %w%- Finished! %b%
chcp 65001 >nul
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto d12

:net
:10
:nmenu
cls
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
echo.                                             %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w% 
echo.
echo.                                                           %p%[%w%B%p%]%w% Bufferbloat Test                                       %p%[%w%T%p%]%w% Tutorial
echo.
echo.                                             %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w% 
echo.    
echo.                                                                               %p%%w%%p%%w%                %p%[%w%A%p%]%w% Apply all %g%(1-12) 
echo.         
echo.                                                           %p%[%w%1%p%]%w% Set DNS, Local, Hosts, and NetBT priorities            %p%[%w%2%p%]%w% Set Network Throttling Index
echo.
echo.                                                           %p%[%w%3%p%]%w% Set MaxUserPort, TcpTimedWaitDelay, and DefaultTTL     %p%[%w%4%p%]%w% Tweak TCP Settings and disable limiting
echo.
echo.                                                           %p%[%w%5%p%]%w% Tweak MTU Settings                                     %p%[%w%6%p%]%w% Configure offload and network settings 
echo.
echo.                                                           %p%[%w%7%p%]%w% Disable IPv6                                           %p%[%w%8%p%]%w% Disable Internet Probing
echo.                                                                                                                                                                                   
echo.                                                           %p%[%w%9%p%]%w% Disable Internet addons                                %p%[%w%10%p%]%w% Disable Nagiles Algorithm
echo. 
echo.                                                           %p%[%w%11%p%]%w% Enable Task Offload                                   %p%[%w%12%p%]%w% Optimize MLD , ICMP Chimney, DCA, and More
echo.
echo.                                                           %p%[%w%13%p%]%w% Set a QOS Policy                                      %p%[%w%14%p%]%w% Optimize NIC Settings
echo.
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w% 
echo. 
echo.                                                           %p%[%w%R%p%]%w% Revert All                                             %p%[%w%M%p%]%w% Back to menu                                                       
echo.
echo.                                                               %w%  Made and distributed by korqedev TWEAKS, S.R.O. ® 2025 * Version 2.0 * Updated 9th of January 2025 
echo.
echo.                                               %b%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w% 
echo.                                                                 
echo.

set /p input=:
if /i %input% == A goto nALL
if /i %input% == 1 goto n1
if /i %input% == 2 goto n2
if /i %input% == 3 goto n3
if /i %input% == 4 goto n4
if /i %input% == 5 goto n5
if /i %input% == 6 goto n6
if /i %input% == 7 goto n7
if /i %input% == 8 goto n8
if /i %input% == 9 goto n9
if /i %input% == 10 goto n10
if /i %input% == 11 goto n11
if /i %input% == 12 goto n12
if /i %input% == 13 goto qos
if /i %input% == 14 goto n14

if /i %input% == T start https://www.youtube.com/watch?v=oWeBJlxSe2Q&ab_channel=korqedev
if /i %input% == R goto Revertnet
if /i %input% == B START https://www.waveform.com/tools/bufferbloat
if /i %input% == M goto Menu

) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
cls
goto nmenu

:nALL
cls
echo. 
echo. 
echo. 
echo.                                                                %p%███╗  ██╗███████╗████████╗ ██╗       ██╗ █████╗ ██████╗ ██╗  ██╗
echo.                                                                %p%████╗ ██║██╔════╝╚══██╔══╝ ██║  ██╗  ██║██╔══██╗██╔══██╗██║ ██╔╝
echo.                                                                %p%██╔██╗██║█████╗     ██║    ╚██╗████╗██╔╝██║  ██║██████╔╝█████═╝ 
echo.                                                                %p%██║╚████║██╔══╝     ██║     ████╔═████║ ██║  ██║██╔══██╗██╔═██╗ 
echo.                                                                %p%██║ ╚███║███████╗   ██║     ╚██╔╝ ╚██╔╝ ╚█████╔╝██║  ██║██║ ╚██╗
echo.                                                                %p%╚═╝  ╚══╝╚══════╝   ╚═╝      ╚═╝   ╚═╝   ╚════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
echo. 
echo. 
echo. 
echo %w% Enabling Task Offloads%b%
netsh int ip set global taskoffload=enabled >nul 2>&1
echo.
echo %w% - Setting Network Throttling Index%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 0xffffffff /f
echo.
echo %w% - Setting MaxUserPort, TcpTimedWaitDelay, and DefaultTTL...%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 64 /f
echo.
echo %w% - Configuring TCP settings and MTU with netsh %g%(it will show an error on 2 of them if you have wifi or ethernet disabled)%b%
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
echo.
chcp 437 >nul 2>&1
echo %w% - Configuring offload and network settings %b%
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing disabled
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling disabled
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney disabled
PowerShell.exe Disable-NetAdapterLso -Name *
PowerShell.exe Disable-NetAdapterChecksumOffload -Name *
chcp 65001 >nul 2>&1
echo.
echo %w% - Disabling ipv6%b%
Reg.exe add "HKLM\SYSTEM\ControlSet001\services\TCPIP6\Parameters" /v "DisabledComponents" /t REG_DWORD /d 255 /f
echo.
echo %w%- Disabling Active Probing%b%
Reg.exe add "HKLM\System\ControlSet001\services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 0 /f
echo.
echo %w%- Disabling Internet addons
rem Set registry values for Ext Settings
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /t REG_SZ /d "*" /f

rem Set registry values for Ext Stats
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF90-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF91-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF94-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{333C7BC4-460F-11D0-BC04-0080C7055A83}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{373984C9-B845-449B-91E7-45AC83036ADE}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{6BF52A52-394A-11D3-B153-00C04F79FAA6}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2049-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2051-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A05-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A06-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A07-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A08-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A0A-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{D2517915-48CE-4286-970F-921E881B8C5C}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{EE09B103-97E0-11CF-978F-00A02463E06F}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F32-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F33-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F34-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F35-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F36-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F39-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
echo.
echo %w% - Disabling Nagiles algorithm %b%
sc config Winmgmt start= demand >nul 2>&1
sc start Winmgmt >nul 2>&1
echo %w% - Enabling TCPNoDelay %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /t REG_DWORD /d "1" /f
echo %w% - Enabling TCP Ack Frequency %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /t REG_DWORD /d "1" /f
echo %w% - Disabling TCP Del AckTicks  %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /t REG_DWORD /d "0" /f
echo.
echo %w% Optimizing MLD and ICMP%b%
netsh int ip set global dhcpmediasense=disabled >nul 2>&1
netsh int ip set global mediasenseeventlog=disabled >nul 2>&1
netsh int ip set global mldlevel=none >nul 2>&1
netsh int ip set global icmpredirects=disabled >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
netsh int tcp set global dca=enabled >nul 2>&1
netsh int tcp set global netdma=disabled >nul 2>&1
netsh int tcp set global rsc=disabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=2 >nul 2>&1
netsh int tcp set global timestamps=disabled >nul 2>&1
netsh int tcp set global ecncapability=disabled >nul 2>&1
netsh int tcp set heuristics disabled >nul 2>&1
netsh int tcp set heuristics wsh=disabled >nul 2>&1
netsh int tcp set security mpp=disabled >nul 2>&1
netsh int tcp set security profiles=disabled >nul 2>&1
echo.
echo %w% - Disabling TCP heuristics / Disabling Network Limiting %b%
netsh int tcp set heuristics Disabled


echo.
echo.
echo.
echo.                                                                           %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                           %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                           %b%╚═══════════════════════════════════════════════════════════════╝
echo.


pause > nul
cls	
goto NMenu

:revertnet
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.

:: Addons
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF90-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF91-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF94-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{333C7BC4-460F-11D0-BC04-0080C7055A83}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{373984C9-B845-449B-91E7-45AC83036ADE}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{6BF52A52-394A-11D3-B153-00C04F79FAA6}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2049-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2051-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A05-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A06-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A07-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A08-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A0A-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{D2517915-48CE-4286-970F-921E881B8C5C}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{EE09B103-97E0-11CF-978F-00A02463E06F}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F32-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F33-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F34-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F35-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F36-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F39-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /f >nul 2>&1

::DnsPriority
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /f >nul 2>&1

::Network Throttling Index
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /f >nul 2>&1

:: MaxUserPort, TcpTimedWaitDelay, and DefaultTTL
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /f >nul 2>&1

::TCP Hueretics
netsh int tcp set heuristics Enabled >nul 2>&1

:: TCP settings and MTU with netsh
netsh int tcp set supplemental internet congestionprovider=default >nul 2>&1
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1492 store=persistent >nul 2>&1
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1280 store=persistent >nul 2>&1
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent >nul 2>&1
netsh interface ipv6 set subinterface "Ethernet" mtu=1280 store=persistent >nul 2>&1

:: Active Probing
Reg.exe add "HKLM\System\ControlSet001\services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 1 /f >nul 2>&1

chcp 65001 >nul 2>&1
:: Disable Task Offloads
netsh int ip set global taskoffload=enabled >nul 2>&1

::  offload and network settings 
chcp 437 >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing enabled >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling enabled >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney enabled >nul 2>&1
PowerShell.exe Enable-NetAdapterLso -Name * >nul 2>&1
PowerShell.exe Enable-NetAdapterChecksumOffload -Name * >nul 2>&1
chcp 65001 >nul 2>&1

:: Re-enable Nagle's Algorithm, reset Interface Metric
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (
    Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v InterfaceMetric /f
    Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /f
    Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /f
    Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /f
)>nul 2>&1

:: MLD
netsh int ip set global dhcpmediasense=enabled >nul 2>&1
netsh int ip set global mediasenseeventlog=enabled >nul 2>&1
netsh int ip set global mldlevel=default >nul 2>&1
netsh int ip set global icmpredirects=enabled >nul 2>&1
netsh int tcp set global chimney=disabled >nul 2>&1
netsh int tcp set global dca=disabled >nul 2>&1
netsh int tcp set global netdma=enabled >nul 2>&1
netsh int tcp set global rsc=enabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=5 >nul 2>&1
netsh int tcp set global timestamps=enabled >nul 2>&1
netsh int tcp set global ecncapability=enabled >nul 2>&1
netsh int tcp set heuristics enabled >nul 2>&1
netsh int tcp set heuristics wsh=enabled >nul 2>&1
netsh int tcp set security mpp=enabled >nul 2>&1
netsh int tcp set security profiles=enabled >nul 2>&1

for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
    Reg.exe delete "%%n" /v "AdvancedEEE" /f
    Reg.exe delete "%%n" /v "*EEE" /f
    Reg.exe delete "%%n" /v "EEE" /f
    Reg.exe delete "%%n" /v "EnablePME" /f
    Reg.exe delete "%%n" /v "EEELinkAdvertisement" /f

    Reg.exe delete "%%n" /v "AutoPowerSaveModeEnabled" /f
    Reg.exe delete "%%n" /v "DisableDelayedPowerUp" /f
    Reg.exe delete "%%n" /v "AutoDisableGigabit" /f
    Reg.exe delete "%%n" /v "EnableGreenEthernet" /f
    Reg.exe delete "%%n" /v "EnableSavePowerNow" /f
    Reg.exe delete "%%n" /v "EnablePowerManagement" /f
    Reg.exe delete "%%n" /v "NicAutoPowerSaver" /f
    Reg.exe delete "%%n" /v "PowerDownPll" /f
    Reg.exe delete "%%n" /v "PowerSavingMode" /f
    Reg.exe delete "%%n" /v "ReduceSpeedOnPowerDown" /f
    Reg.exe delete "%%n" /v "S5NicKeepOverrideMacAddrV2" /f

    Reg.exe delete "%%n" /v "EnableDynamicPowerGating" /f
    Reg.exe delete "%%n" /v "EnableConnectedPowerGating" /f

    Reg.exe delete "%%n" /v "GigaLite" /f
    Reg.exe delete "%%n" /v "ULPMode" /f

    Reg.exe delete "%%n" /v "EnableWakeOnLan" /f
    Reg.exe delete "%%n" /v "WakeOnDisconnect" /f
    Reg.exe delete "%%n" /v "*WakeOnMagicPacket" /f
    Reg.exe delete "%%n" /v "S5WakeOnLan" /f
    Reg.exe delete "%%n" /v "*WakeOnPattern" /f
    Reg.exe delete "%%n" /v "WakeOnLink" /f
    Reg.exe delete "%%n" /v "WolShutdownLinkSpeed" /f

    Reg.exe delete "%%n" /v "JumboPacket" /f

    Reg.exe delete "%%n" /v "TransmitBuffers" /f
    Reg.exe delete "%%n" /v "ReceiveBuffers" /f

    Reg.exe delete "%%n" /v "IPChecksumOffloadIPv4" /f
    Reg.exe delete "%%n" /v "LsoV1IPv4" /f
    Reg.exe delete "%%n" /v "LsoV2IPv4" /f
    Reg.exe delete "%%n" /v "LsoV2IPv6" /f
    Reg.exe delete "%%n" /v "PMARPOffload" /f
    Reg.exe delete "%%n" /v "PMNSOffload" /f
    Reg.exe delete "%%n" /v "TCPChecksumOffloadIPv4" /f
    Reg.exe delete "%%n" /v "TCPChecksumOffloadIPv6" /f
    Reg.exe delete "%%n" /v "UDPChecksumOffloadIPv6" /f
    Reg.exe delete "%%n" /v "UDPChecksumOffloadIPv4" /f

    Reg.exe delete "%%n" /v "RSS" /f
	Reg.exe delete "%%n" /v "*FlowControl" /f 
	Reg.exe delete "%%n" /v "FlowControlCap" /f
	Reg.exe delete "%%n" /v "RxAbsIntDelay" /f 
	Reg.exe delete "%%n" /v "TxIntDelay" /f 
	Reg.exe delete "%%n" /v "TxAbsIntDelay" /f 
	Reg.exe delete "%%n" /v "FatChannelIntolerant" /f 
)

netsh int tcp set global autotuninglevel=normal


echo.
echo.
echo.
echo.                                                                      %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                      %b%║%w% * Reverted all network tweaks, press any key to continue...   %b%║
echo.                                                                      %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto nmenu

:n11
echo %w% Enabling Task Offloads%b%
netsh int ip set global taskoffload=enabled >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto NMenu



:n6
echo %w% -Configuring offload and network settings %b%
chcp 437 >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing disabled
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling disabled
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney disabled
PowerShell.exe Disable-NetAdapterLso -Name *
PowerShell.exe Disable-NetAdapterChecksumOffload -Name *
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto NMenu

:n12
echo %w% Optimizing MLD and ICMP%b%
netsh int ip set global dhcpmediasense=disabled >nul 2>&1
netsh int ip set global mediasenseeventlog=disabled >nul 2>&1
netsh int ip set global mldlevel=none >nul 2>&1
netsh int ip set global icmpredirects=disabled >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
netsh int tcp set global dca=enabled >nul 2>&1
netsh int tcp set global netdma=disabled >nul 2>&1
netsh int tcp set global rsc=disabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=2 >nul 2>&1
netsh int tcp set global timestamps=disabled >nul 2>&1
netsh int tcp set global ecncapability=disabled >nul 2>&1
netsh int tcp set heuristics disabled >nul 2>&1
netsh int tcp set heuristics wsh=disabled >nul 2>&1
netsh int tcp set security mpp=disabled >nul 2>&1
netsh int tcp set security profiles=disabled >nul 2>&1

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto NMenu

:n1
echo %w% -  Setting DNS, Local, Hosts, and NetBT priorities...%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d 6 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d 4 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d 5 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d 7 /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto NMenu

:n2
echo %w% - Setting Network Throttling Index%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 0xffffffff /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto NMenu

:n3
echo %w% - Setting MaxUserPort, TcpTimedWaitDelay, and DefaultTTL...%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 64 /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
echo."
pause > nul
cls
goto NMenu

:n4
chcp 437 >nul 2>&1
echo %w% - Configuring TCP settings with PowerShell%b%
PowerShell.exe Set-NetTcpSetting -SettingName internet -EcnCapability enabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -Timestamps enabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -MaxSynRetransmissions 2
PowerShell.exe Set-NetTcpSetting -SettingName internet -NonSackRttResiliency disabled
PowerShell.exe Set-NetTcpSetting -SettingName internet -InitialRto 2000
PowerShell.exe Set-NetTcpSetting -SettingName internet -MinRto 300

echo %w% - Disabling TCP heuristics / Disabling Network Limiting %b%
netsh int tcp set heuristics Disabled
PowerShell.exe Set-NetTCPSetting -SettingName internet -ScalingHeuristics disabled

chcp 65001 >nul 2>&1
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
echo.
pause > nul
cls
goto NMenu


:n7
chcp 437 >nul 2>&1
echo %w% - Disabling ipv6%b%
Reg.exe add "HKLM\SYSTEM\ControlSet001\services\TCPIP6\Parameters" /v "DisabledComponents" /t REG_DWORD /d 255 /f
chcp 65001 >nul 2>&1
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto NMenu


:n5
chcp 437 >nul 2>&1
echo %w% - Configuring TCP settings and MTU with netsh %b%
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
chcp 65001 >nul 2>&1
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto NMenu

:n10

echo %w% - Disabling Nagiles algorithm %b%
sc config Winmgmt start= demand >nul 2>&1
sc start Winmgmt >nul 2>&1

echo %w% - Enabling TCPNoDelay %b% 
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /t REG_DWORD /d "1" /f
echo %w% - Enabling TCP Ack Frequency %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /t REG_DWORD /d "1" /f
echo %w% - Disabling TCP Del AckTicks  %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /t REG_DWORD /d "0" /f

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto NMenu

:n14
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('!WARNING! You can only use this if you are on ethernet, if you are on wifi, press "M" on the next page, 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1


:nicethernet
cls
echo.
echo.
echo.
echo.                                                                                 %p%███╗  ██╗██╗ █████╗ 
echo.                                                                                 %p%████╗ ██║██║██╔══██╗
echo.                                                                                 %p%██╔██╗██║██║██║  ╚═╝
echo.                                                                                 %p%██║╚████║██║██║  ██╗
echo.                                                                                 %p%██║ ╚███║██║╚█████╔╝
echo.                                                                                 %p%╚═╝  ╚══╝╚═╝ ╚════╝ 
echo.                                              %b%"═══════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                  ONLY DO THIS ON ETHERNET
echo.
echo.                                                   %p%[%w%1%p%]%w% Optimize NIC Settings       %p%[%w%2%p%]%w% Revert NIC settings
echo. 
echo.
echo.                                                                              %p%[%w%M%p%]%w% Back to menu
echo. 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                  Optimizes network interface card settings to decrease ping and help your network
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto nic
if /i %input% == 2 goto revertnic
if /i %input% == M goto nmenu
) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto nicethernet

:revertnic
echo %w% - Reverting NIC Settings... %b%

for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
    Reg.exe delete "%%n" /v "AdvancedEEE" /f
    Reg.exe delete "%%n" /v "*EEE" /f
    Reg.exe delete "%%n" /v "EEE" /f
    Reg.exe delete "%%n" /v "EnablePME" /f
    Reg.exe delete "%%n" /v "EEELinkAdvertisement" /f

    Reg.exe delete "%%n" /v "AutoPowerSaveModeEnabled" /f
    Reg.exe delete "%%n" /v "DisableDelayedPowerUp" /f
    Reg.exe delete "%%n" /v "AutoDisableGigabit" /f
    Reg.exe delete "%%n" /v "EnableGreenEthernet" /f
    Reg.exe delete "%%n" /v "EnableSavePowerNow" /f
    Reg.exe delete "%%n" /v "EnablePowerManagement" /f
    Reg.exe delete "%%n" /v "NicAutoPowerSaver" /f
    Reg.exe delete "%%n" /v "PowerDownPll" /f
    Reg.exe delete "%%n" /v "PowerSavingMode" /f
    Reg.exe delete "%%n" /v "ReduceSpeedOnPowerDown" /f
    Reg.exe delete "%%n" /v "S5NicKeepOverrideMacAddrV2" /f

    Reg.exe delete "%%n" /v "EnableDynamicPowerGating" /f
    Reg.exe delete "%%n" /v "EnableConnectedPowerGating" /f

    Reg.exe delete "%%n" /v "GigaLite" /f
    Reg.exe delete "%%n" /v "ULPMode" /f

    Reg.exe delete "%%n" /v "EnableWakeOnLan" /f
    Reg.exe delete "%%n" /v "WakeOnDisconnect" /f
    Reg.exe delete "%%n" /v "*WakeOnMagicPacket" /f
    Reg.exe delete "%%n" /v "S5WakeOnLan" /f
    Reg.exe delete "%%n" /v "*WakeOnPattern" /f
    Reg.exe delete "%%n" /v "WakeOnLink" /f
    Reg.exe delete "%%n" /v "WolShutdownLinkSpeed" /f

    Reg.exe delete "%%n" /v "JumboPacket" /f

    Reg.exe delete "%%n" /v "TransmitBuffers" /f
    Reg.exe delete "%%n" /v "ReceiveBuffers" /f

    Reg.exe delete "%%n" /v "IPChecksumOffloadIPv4" /f
    Reg.exe delete "%%n" /v "LsoV1IPv4" /f
    Reg.exe delete "%%n" /v "LsoV2IPv4" /f
    Reg.exe delete "%%n" /v "LsoV2IPv6" /f
    Reg.exe delete "%%n" /v "PMARPOffload" /f
    Reg.exe delete "%%n" /v "PMNSOffload" /f
    Reg.exe delete "%%n" /v "TCPChecksumOffloadIPv4" /f
    Reg.exe delete "%%n" /v "TCPChecksumOffloadIPv6" /f
    Reg.exe delete "%%n" /v "UDPChecksumOffloadIPv6" /f
    Reg.exe delete "%%n" /v "UDPChecksumOffloadIPv4" /f

    Reg.exe delete "%%n" /v "RSS" /f
	Reg.exe delete "%%n" /v "*FlowControl" /f 
	Reg.exe delete "%%n" /v "FlowControlCap" /f
	Reg.exe delete "%%n" /v "RxAbsIntDelay" /f 
	Reg.exe delete "%%n" /v "TxIntDelay" /f 
	Reg.exe delete "%%n" /v "TxAbsIntDelay" /f 
	Reg.exe delete "%%n" /v "FatChannelIntolerant" /f 
)
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto NMenu

:nic

echo %w%- Disabling EEE (Energy Efficient Ethernet) %b%
for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
    Reg.exe add "%%n" /v "AdvancedEEE" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "*EEE" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "EEE" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "EnablePME" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f 
	echo %w%- Disabling Power Saving Modes, Power Managment and Much more  %b%
	Reg.exe add "%%n" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "DisabledelayedPowerUp" /t REG_SZ /d "2" /f 
	Reg.exe add "%%n" /v "AutoDisablingGigabit" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "EnablePowerManagement" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "NicAutoPowerSaver" /t REG_SZ /d "2" /f
	Reg.exe add "%%n" /v "PowerDownPll" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "PowerSavingMode" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "0" /f 
	echo %w%- Disabling Power Gating %b%
	Reg.exe add "%%n" /v "EnabledynamicPowerGating" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "EnableConnectedPowerGating" /t REG_SZ /d "0" /f 
	echo %w%- Disabling Giga Lite %b%
	Reg.exe add "%%n" /v "GigaLite" /t REG_SZ /d "0" /f 
	echo %w%- Disabling Ultra Low Power Mode %b%
	Reg.exe add "%%n" /v "ULPMode" /t REG_SZ /d "0" /f 
	echo %w%- Disabling WakeOns %b%
	Reg.exe add "%%n" /v "EnableWakeOnLan" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "WakeOnDisconnect" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "S5WakeOnLan" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "*WakeOnPattern" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "WakeOnLink" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f 
	echo %w%- Disabling Jumbo Frame/Packet %b%
	Reg.exe add "%%n" /v "JumboPacket" /t REG_SZ /d "1514" /f 
	echo %w%- Configuring Buffer Sizes %b%
	Reg.exe add "%%n" /v "TransmitBuffers" /t REG_SZ /d "2048" /f 
	Reg.exe add "%%n" /v "ReceiveBuffers" /t REG_SZ /d "1024" /f 
	echo %w%- Configuring and Disabling Offloads %b%
	Reg.exe add "%%n" /v "IPChecksumOffloadIPv4" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "LsoV1IPv4" /t REG_SZ /d "0" /f  
	Reg.exe add "%%n" /v "LsoV2IPv4" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "LsoV2IPv6" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "PMARPOffload" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "PMNSOffload" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "TCPChecksumOffloadIPv6" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "UDPChecksumOffloadIPv6" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "UDPChecksumOffloadIPv4" /t REG_SZ /d "0" /f 
	echo %w%- Enabling RSS in NIC %b%
	Reg.exe add "%%n" /v "RSS" /t REG_SZ /d "1" /f 
	Reg.exe add "%%n" /v "*NumRssQueues" /t REG_SZ /d "2" /f 
	Reg.exe add "%%n" /v "RSSProfile" /t REG_SZ /d "3" /f 
	echo %w%- Disabling Flow Control %b%
	Reg.exe add "%%n" /v "*FlowControl" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "FlowControlCap" /t REG_SZ /d "0" /f 
	echo %w%- Removing Interrupt Delays %b%
	Reg.exe add "%%n" /v "RxAbsIntDelay" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "TxIntDelay" /t REG_SZ /d "0" /f 
	Reg.exe add "%%n" /v "TxAbsIntDelay" /t REG_SZ /d "0" /f 
	echo %w%- Removing Adapter Notification Sending %b%
	Reg.exe add "%%n" /v "FatChannelIntolerant" /t REG_SZ /d "0" /f 
	)

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto NMenu

:n8
chcp 437 >nul 2>&1
echo %w%- Disabling Active Probing%b%
Reg.exe add "HKLM\System\ControlSet001\services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 0 /f
chcp 65001 >nul 2>&1

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto NMenu

:n9
chcp 437 >nul 2>&1
echo %w%- Disabling Internet addons
rem Set registry values for Ext Settings
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /t REG_SZ /d "*" /f

Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /t REG_DWORD /d 1 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /t REG_SZ /d "*" /f

rem Set registry values for Ext Stats
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF90-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF91-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF94-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{333C7BC4-460F-11D0-BC04-0080C7055A83}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{373984C9-B845-449B-91E7-45AC83036ADE}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{6BF52A52-394A-11D3-B153-00C04F79FAA6}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2049-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2051-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A05-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A06-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A07-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A08-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A0A-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{D2517915-48CE-4286-970F-921E881B8C5C}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{EE09B103-97E0-11CF-978F-00A02463E06F}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F32-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F33-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F34-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F35-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F36-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F39-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /t REG_DWORD /d 4 /f
chcp 65001 >nul 2>&1

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto NMenu

:qos
cls
echo.
echo.
echo.
echo.                                                                      %p% ██████╗  █████╗  ██████╗  ██████╗  █████╗ ██╗     ██╗ █████╗ ██╗   ██╗╗
echo.                                                                      %p%██╔═══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║     ██║██╔══██╗╚██╗ ██╔╝
echo.                                                                      %p%██║██╗██║██║  ██║╚█████╗   ██████╔╝██║  ██║██║     ██║██║  ╚═╝ ╚████╔╝ 
echo.                                                                      %p%╚██████╔╝██║  ██║ ╚═══██╗  ██╔═══╝ ██║  ██║██║     ██║██║  ██╗  ╚██╔╝  
echo.                                                                      %p% ╚═██╔═╝ ╚█████╔╝██████╔╝  ██║     ╚█████╔╝███████╗██║╚█████╔╝   ██║   
echo.                                                                      %p%   ╚═╝    ╚════╝ ╚═════╝   ╚═╝      ╚════╝ ╚══════╝╚═╝ ╚════╝    ╚═╝   
echo.                                                %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                         If the number 4 fix doesnt work, you will have to unfortunatly skip this step 
echo.
echo.                                                                                                                                                               
echo.                                                            %p%[%w%1%p%]%w% Start PSCHED          %p%[%w%2%p%]%w% Enable MS-Pacer            %p%[%w%3%p%]%w% Open GPEDIT   
echo.  
echo.
echo.                                                              %p%%w%%p%%w%        %p%[%w%4%p%]%w% Download GPEDIT %g%(only Run this if you cant open GPEDIT)  
echo. 
echo.
echo.                                                              %p%%w%%p%%w%                           %p%[%w%M%p%]%w% Back to menu   
echo.
echo.                                                %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                              %W%QoS policy defines throttling limits determines the rate of outbound network traffic
echo.                                                   %W% It basically will make it so your router will prioritize that task over others, decreasing your ping by a lot
echo.                                                %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
 
set /p input=:
if /i %input% == 1 goto q1
if /i %input% == 2 goto q2
if /i %input% == 3 goto q3
if /i %input% == 4 goto q4
if /i %input% == M goto nmenu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto qos

:q2
chcp 437 >nul 2>&1
echo %w%- Enabling MSPacer %b%
powershell -NoProfile -Command "Enable-NetAdapterBinding -Name "*" -ComponentID ms_pacer"
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :qos

:q1
echo %w%- Enabling PSCHED %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Psched" /v "Start" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :qos

:q3
echo %w%- Start GPEDIT %b%
start gpedit.msc
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :qos

:q4
chcp 437 >nul 2>&1

start https://discord.com/channels/1177410668606009444/1267815844189306951/1328747836229156946
echo %w% This fix takes you to a discord message in my discord server (discord.gg/korqedev)%B%

chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :qos








:8
:storage
cls
echo.
echo.
echo.                                                   %p% ██████╗████████╗ █████╗ ██████╗  █████╗  ██████╗ ███████╗   
echo.                                                   %p%██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔════╝ 
echo.                                                   %p%╚█████╗    ██║   ██║  ██║██████╔╝███████║██║  ██╗ █████╗          
echo.                                                   %p% ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══██║██║  ╚██╗██╔══╝    
echo.                                                   %p%██████╔╝   ██║   ╚█████╔╝██║  ██║██║  ██║╚██████╔╝███████╗     
echo.                                                   %p%╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝      
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                           
echo.                                                           %p%[%w%1%p%]%w% Trim/Defragment Drives     
echo. 
echo.                                                           %p%[%w%2%p%]%w% Enable User Write Cache      
echo. 
echo.                                                           %p%[%w%3%p%]%w% Optimize NFTS    
echo.                                                                                
echo.                                                           %p%[%w%4%p%]%w% Disable SSD Power Savings %g%(SSD only)
echo.
echo.                                                           %p%[%w%5%p%]%w% Optimize FUSTIL Settings %g%(SSD only)
echo.  
echo.
echo.                                                                                           
echo.                                                                       %p%[%w%M%p%]%w% Back to menu         
echo.                      
echo.                                                                       %p%[%w%R%p%]%w% Revert         
echo.  
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════"
echo.                                         %W% Trim and Defragment Your Driver and apply a few extra storage optimizations 
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════════"
echo. 
set /p input=:
if /i %input% == 1 goto s1
if /i %input% == 2 goto s2
if /i %input% == 3 goto s3
if /i %input% == 4 goto s4
if /i %input% == 5 goto s5
if /i %input% == R goto revertstorage
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto 8

:revertstorage
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
echo. 
echo %w% - Enabling SSD Power Savings %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitLatencyMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdlePowerMw" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitEnergyMicroJoules" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitLatencyMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdlePowerMw" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleTimeLengthMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitEnergyMicroJoules" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitLatencyMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdlePowerMw" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleTimeLengthMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitEnergyMicroJoules" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitLatencyMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdlePowerMw" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleTimeLengthMs" /t REG_DWORD /f 

echo %w% - NFTS Tweaks%b%
fsutil behavior set memoryusage 1 >nul 2>&1
fsutil behavior set mftzone 1 >nul 2>&1
fsutil behavior set Disablinglastaccess 1 >nul 2>&1
fsutil behavior set Disabledeletenotify 1 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1

echo %w% - User Write Cache %b%
For /f "Delims=" %%k in ('Reg.exe Query HKLM\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
Reg.exe delete "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /f 
Reg.exe add "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /t REG_DWORD /d 1 /f
)

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:s4
echo %w% - Disabling SSD Power Savings %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto 8

:s3
echo %w% - NFTS Tweaks %b%
fsutil behavior set memoryusage 2 >nul 2>&1
fsutil behavior set mftzone 4 >nul 2>&1
fsutil behavior set Disablinglastaccess 1 >nul 2>&1
fsutil behavior set Disabledeletenotify 1 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1

::putting this here so it shows applied successfully messages, because ppl think it doesnt apply
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto 8

:s5
echo %w% - Seting FSUTIL Settings%b%
fsutil behavior set disableLastAccess 0 >nul 2>&1
fsutil behavior set disable8dot3 1  >nul 2>&1

::putting this here so it shows applied successfully messages, because ppl think it doesnt apply
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto menu

:s1
echo %w% - Trimming/Defragmenting Boot Drive %G%(If it takes too long, feel free to close the utility and skip this, the tweaks save if you close so you can start where you left off) %b%

POWERSHELL "Optimize-Volume -DriveLetter C -ReTrim"
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.


pause > nul
cls
goto 8

:s2
cls
echo %w% - Enabling User Write Cache %b%
For /f "Delims=" %%k in ('Reg.exe Query HKLM\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
Reg.exe add "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /t REG_DWORD /d 1 /f
Reg.exe add "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /t REG_DWORD /d 1 /f
)

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto 8




:7war
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Note: If you want to revert anything, you can do it in our revert category on the main page of the utility', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1

:7
:Debloat
cls
echo.
echo.
echo.                                                       %p%   ██████╗ ███████╗██████╗ ██╗      █████╗  █████╗ ████████╗     
echo.                                                       %p%   ██╔══██╗██╔════╝██╔══██╗██║     ██╔══██╗██╔══██╗╚══██╔══╝      
echo.                                                       %p%   ██║  ██║█████╗  ██████╦╝██║     ██║  ██║███████║   ██║       
echo.                                                       %p%   ██║  ██║██╔══╝  ██╔══██╗██║     ██║  ██║██╔══██║   ██║        
echo.                                                       %p%   ██████╔╝███████╗██████╦╝███████╗╚█████╔╝██║  ██║   ██║     
echo.                                                       %p%   ╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚════╝ ╚═╝  ╚═╝   ╚═╝         
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                                                 %p%[%w%A%p%]%w% Apply all
echo.                                                                                                                        
echo.                                                  %p%[%w%1%p%]%w% Disable GameDVR and XBOX            %p%[%w%2%p%]%w% Disable Telemetry                        
echo.
echo.                                                  %p%[%w%3%p%]%w% Toggle Bluetooth                    %p%[%w%4%p%]%w% Disable Printing and Maps 
echo.   
echo.                                                  %p%[%w%5%p%]%w% Toggle Mitigations                  %p%[%w%6%p%]%w% Disable Diagnostics and Error Reporting                           
echo.                                                                                                                               
echo.                                                  %p%[%w%7%p%]%w% Toggle Microsoft Store              %p%[%w%8%p%]%w% Disable Hyper-V  
echo.
echo.                                                  %p%[%w%9%p%]%w% Disable Startup Apps                %p%[%w%10%p%]%w% Windows Update Blocker
echo.
echo.                                                  %p%[%w%11%p%]%w% Disable Smart Screen               %p%[%w%12%p%]%w% Uninstall Useless Apps 
echo.
echo.                                                                                                                                                    
echo.                                                                                %p%[%w%M%p%]%w% Back to menu   
echo. 
echo.                                                                                %p%[%w%R%p%]%w% Revert                                           
echo.
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                                             %w% Uninstalls and Disables useless features
echo.                                               %w% Removes system bloatware which runs in the background taking up system resources 
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.

set /p input=:
if /i %input% == A goto alldebloat
if /i %input% == 1 goto d1
if /i %input% == 2 goto d2
if /i %input% == 3 goto d3
if /i %input% == 4 goto d4
if /i %input% == 5 goto d5
if /i %input% == 6 goto d6
if /i %input% == 7 goto d7
if /i %input% == 8 goto d8
if /i %input% == 9 goto d9
if /i %input% == 10 goto d10
if /i %input% == 11 goto d11
if /i %input% == 12 goto d12
if /i %input% == M cls & goto menu
if /i %input% == R goto revertdebloat
) ELSE (
echo Invalid Input & goto MisspellReirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu

:RedirectMenu

goto :Debloat

:d11
echo %w%- Disabling windows smart screen %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat

:d9
cls
echo.
echo.
echo.
echo.                                            %p% █████╗ ██╗   ██╗████████╗ █████╗ ██████╗ ██╗   ██╗███╗  ██╗ ██████╗
echo.                                            %p%██╔══██╗██║   ██║╚══██╔══╝██╔══██╗██╔══██╗██║   ██║████╗ ██║██╔════╝
echo.                                            %p%███████║██║   ██║   ██║   ██║  ██║██████╔╝██║   ██║██╔██╗██║╚█████╗ 
echo.                                            %p%██╔══██║██║   ██║   ██║   ██║  ██║██╔══██╗██║   ██║██║╚████║ ╚═══██╗
echo.                                            %p%██║  ██║╚██████╔╝   ██║   ╚█████╔╝██║  ██║╚██████╔╝██║ ╚███║██████╔╝
echo.                                            %p%╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚══╝╚═════╝ 
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('After you press ok it will open an app, Go to the LOGON section, Disabling all services except: antivirus, cmd.exe, and the n/a services', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1

start C:\korqedev\Autoruns.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat

:d6
echo %w% - Disable Diagnostics %b%
sc config DPS start= auto
sc config DiagTrack start= demand 
sc config dmwappushservice start= demand 
sc config diagnosticshub.standardcollector.service start= demand 
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisablediagnosticTracing" /t REG_DWORD /d "0" /f >nul 2>&1 
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "1" /f
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Enable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Enable
echo %w% - Disabling Windows Error Reporting%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat


:d10
cls
echo.
echo.
echo.
echo.
echo.                                            %p%██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗  ██████╗ ██╗      █████╗  █████╗ ██╗  ██╗███████╗██████╗ 
echo.                                            %p%██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝  ██╔══██╗██║     ██╔══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗
echo.                                            %p%██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗    ██████╦╝██║     ██║  ██║██║  ╚═╝█████═╝ █████╗  ██████╔╝
echo.                                            %p%██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝    ██╔══██╗██║     ██║  ██║██║  ██╗██╔═██╗ ██╔══╝  ██╔══██╗
echo.                                            %p%╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗  ██████╦╝███████╗╚█████╔╝╚█████╔╝██║ ╚██╗███████╗██║  ██║
echo.                                            %p% ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝  ╚═════╝ ╚══════╝ ╚════╝  ╚════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Note: Disabling Windows Updates will break Microsoft store, if you want to use it again simply press "Enable" in windows update blocker ', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
start C:\korqedev\Windows_Update_Blocker.exe
echo. 
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat


:d3
:bluetooth
cls
echo.
echo.
echo.
echo.                                                       %p%██████╗ ██╗     ██╗   ██╗███████╗████████╗ █████╗  █████╗ ████████╗██╗  ██╗
echo.                                                       %p%██╔══██╗██║     ██║   ██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝██║  ██║
echo.                                                       %p%██████╦╝██║     ██║   ██║█████╗     ██║   ██║  ██║██║  ██║   ██║   ███████║
echo.                                                       %p%██╔══██╗██║     ██║   ██║██╔══╝     ██║   ██║  ██║██║  ██║   ██║   ██╔══██║
echo.                                                       %p%██████╦╝███████╗╚██████╔╝███████╗   ██║   ╚█████╔╝╚█████╔╝   ██║   ██║  ██║
echo.                                                       %p%╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝   ╚═╝    ╚════╝  ╚════╝    ╚═╝   ╚═╝  ╚═╝
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                        %p%[%w%1%p%]%w% Disable Bluetooth                  %p%[%w%2%p%]%w% Enable Bluetooth %g%(default)
echo.
echo.
echo.                                                        %p%%p%%p%%p%                       %p%[%w%M%p%]%w% Back to Menu  
echo. 
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                           Disable bluetooth if you dont use it, but if you use it keep it enabled                                               
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto BluetoothOFF
if /i %input% == 2 goto BluetoothON
if /i %input% == M goto debloat
) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto bluetooth

:BluetoothON
echo %w% - Enabling Bluetooth %b%
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto debloat

:BluetoothOFF
echo %w% - Disabling Bluetooth %b%
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto debloat




:d5
cls
echo.
echo.
echo.
echo.                                                       %p%███╗   ███╗██╗████████╗██╗ ██████╗  █████╗ ████████╗██╗ █████╗ ███╗  ██╗ ██████╗
echo.                                                       %p%████╗ ████║██║╚══██╔══╝██║██╔════╝ ██╔══██╗╚══██╔══╝██║██╔══██╗████╗ ██║██╔════╝
echo.                                                       %p%██╔████╔██║██║   ██║   ██║██║  ██╗ ███████║   ██║   ██║██║  ██║██╔██╗██║╚█████╗ 
echo.                                                       %p%██║╚██╔╝██║██║   ██║   ██║██║  ╚██╗██╔══██║   ██║   ██║██║  ██║██║╚████║ ╚═══██╗
echo.                                                       %p%██║ ╚═╝ ██║██║   ██║   ██║╚██████╔╝██║  ██║   ██║   ██║╚█████╔╝██║ ╚███║██████╔╝
echo.                                                       %p%╚═╝     ╚═╝╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚════╝ ╚═╝  ╚══╝╚═════╝ 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                        %p%[%w%1%p%]%w% Disable Mitigations                   %p%[%w%2%p%]%w% Enable Mitigations %g%(revert)
echo.
echo. 
echo.                                                       %p%%p%%p%%p%                           %p%[%w%M%p%]%w% Back To menu 
echo. 
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                  Mitigations are protections against memory-based attacks, but they come at a performance cost
echo.                                                    This disables a bunch of basic ones which cause performance loss but arent that important
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto mitioff
if /i %input% == 2 goto mition
if /i %input% == M goto Debloat

) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto miti

:mitioff
::disable basic mitigations
echo %w% - Disabling VirtualizationBasedSecurity%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f 
echo %w% - Disabling HVCIMATRequired%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f 
echo %w% - Disabling ExceptionChainValidation%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Disabling Sehop%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f 
echo %w% - Disabling CFG%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f 
echo %w% - Disabling Protection Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f 
echo %w% - Disabling Spectre And Meltdown%b%

if "%ProcessorManufacturer%" EQU "AuthenticAMD" (
    Reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "2" /f 
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "2" /f
) else (
    Reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f 
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
)

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f 
echo %w% - Disabling Address Space Layout Randomization%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f 
 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat


:mition
echo %w% - Enabling Isolation Memory Integrity%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling HVCIMAT%b%	
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "1" /f 
echo %w% - Enabling ExceptionChainValidation%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Sehop%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling CFG%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Protection Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Spectre And Meltdown%b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /f
echo %w% - Enabling Address Space Layout Randomization%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f  
 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat



:d8
echo %w% - Disable Hyper-V %b%
sc config HvHost start=disabled 
sc config vmickvpexchange start=disabled 
sc config vmicguestinterface start=disabled 
sc config vmicshutdown start=disabled 
sc config vmicheartbeat start=disabled 
sc config vmicvmsession start=disabled 
sc config vmicrdv start=disabled 
sc config vmictimesync start=disabled 
bcdedit /set hypervisorlaunchtype off
	
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto debloat

:d2
echo %w% - Disabling Autologgers%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnabled" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "0" /f 


echo %w% - Disabling Telemetry Through Task Scheduler %b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Disable 
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" 
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /Disable 
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy" 
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /Disable 
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" 
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /Disable 
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" 
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable 
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" 
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable 
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" 
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /Disable 
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks" 
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /Disable 
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" 
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable 
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" 
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /Disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /Disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /Disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" 
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable 
schtasks /end /tn "\Microsoftd\Office\OfficeTelemetryAgentFallBack" 
schtasks /change /TN "\Microsoftd\Office\OfficeTelemetryAgentFallBack" /Disable 
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" 
schtasks /change /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /Disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable 
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" 
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable 
schtasks /end /tn "\Microsoft\Windows\Device Information\Device" 
schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /Disable 

echo %w% - Disabling Telemetry Through Regsitry %b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MicrosoftEdgeDataOptIn" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "DoSvc" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "DisableOptinExperience" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\IE" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v value /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f

cls
echo %w% - Disabling Office Telemetry  %b%
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "SendTelemetry" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "qmEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Firstrun" /v "Disablemovie" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableFileObfuscation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "1" /f

echo %w% - Disabling Customer Experience Improvement Program%b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" > nul 2>&1


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto debloat



:alldebloat
cls
echo.
echo.
echo.
echo.
echo.                                                                        %p%██████╗ ███████╗██████╗ ██╗      █████╗  █████╗ ████████╗
echo.                                                                        %p%██╔══██╗██╔════╝██╔══██╗██║     ██╔══██╗██╔══██╗╚══██╔══╝
echo.                                                                        %p%██║  ██║█████╗  ██████╦╝██║     ██║  ██║███████║   ██║   
echo.                                                                        %p%██║  ██║██╔══╝  ██╔══██╗██║     ██║  ██║██╔══██║   ██║   
echo.                                                                        %p%██████╔╝███████╗██████╦╝███████╗╚█████╔╝██║  ██║   ██║   
echo.                                                                        %p%╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚════╝ ╚═╝  ╚═╝   ╚═╝   
echo.

echo %w%- Disabling windows smart screen %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Telemetry Through Task Scheduler %b%
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Disable 
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" 
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /Disable 
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy" 
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /Disable 
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" 
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /Disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /Disable 
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" 
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable 
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" 
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable 
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" 
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /Disable 
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks" 
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /Disable 
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" 
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable 
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" 
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /Disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /Disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /Disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" 
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable 
schtasks /end /tn "\Microsoftd\Office\OfficeTelemetryAgentFallBack" 
schtasks /change /TN "\Microsoftd\Office\OfficeTelemetryAgentFallBack" /Disable 
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" 
schtasks /change /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /Disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable 
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" 
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable 
schtasks /end /tn "\Microsoft\Windows\Device Information\Device" 
schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /Disable 

echo %w% - Disabling Telemetry Through Regsitry %b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MicrosoftEdgeDataOptIn" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "DoSvc" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "DisableOptinExperience" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\IE" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v value /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f

echo %w% - Disabling Autologgers%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnabled" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Customer Experience Improvement Program%b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" > nul 2>&1


echo %w% - Disabling Printing and maps Services  %b%
sc config MapsBroker start= disabled
sc config PrintNotify start= disabled
sc config Spooler start= disabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable 

echo %w% - Disabling Office Telemetry  %b%
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "SendTelemetry" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "qmEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Firstrun" /v "Disablemovie" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableFileObfuscation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "1" /f


echo %w% - Disabling GameDVR%b%
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f


echo %w% - Disabling Xbox Services%b%
sc config xbgm start= Disabled >nul 2>&1
sc config XblAuthManager start= Disabled
sc config XblGameSave start= Disabled
sc config XboxGipSvc start= Disabled
sc config XboxNetApiSvc start= Disabled

echo %w% - Disabling Hyper-V%b%
sc config HvHost start=disabled 
sc config vmickvpexchange start=disabled 
sc config vmicguestinterface start=disabled 
sc config vmicshutdown start=disabled 
sc config vmicheartbeat start=disabled 
sc config vmicvmsession start=disabled 
sc config vmicrdv start=disabled 
sc config vmictimesync start=disabled  
bcdedit /set hypervisorlaunchtype off

timeout /t 3 /nobreak > NUL

:alldebloat1
cls
echo.
echo.
echo.
echo.                                                       %p%███╗   ███╗██╗████████╗██╗ ██████╗  █████╗ ████████╗██╗ █████╗ ███╗  ██╗ ██████╗
echo.                                                       %p%████╗ ████║██║╚══██╔══╝██║██╔════╝ ██╔══██╗╚══██╔══╝██║██╔══██╗████╗ ██║██╔════╝
echo.                                                       %p%██╔████╔██║██║   ██║   ██║██║  ██╗ ███████║   ██║   ██║██║  ██║██╔██╗██║╚█████╗ 
echo.                                                       %p%██║╚██╔╝██║██║   ██║   ██║██║  ╚██╗██╔══██║   ██║   ██║██║  ██║██║╚████║ ╚═══██╗
echo.                                                       %p%██║ ╚═╝ ██║██║   ██║   ██║╚██████╔╝██║  ██║   ██║   ██║╚█████╔╝██║ ╚███║██████╔╝
echo.                                                       %p%╚═╝     ╚═╝╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚════╝ ╚═╝  ╚══╝╚═════╝ 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                       %p%[%w%1%p%]%w% Disable Mitigations                    %p%[%w%2%p%]%w% Enable Mitigations %g%(revert)
echo.
echo. 
echo.                                                       %p%%p%%p%%p%                           %p%[%w%M%p%]%w% Skip
echo. 
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                  Mitigations are protections against memory-based attacks, but they come at a performance cost
echo.                                                    This disables a bunch of basic ones which cause performance loss but arent that important
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto mitioff
if /i %input% == 2 goto mition
if /i %input% == M goto alldebloat2

) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto alldebloat1

:mitioff
::disable basic mitigations
echo %w% - Disabling VirtualizationBasedSecurity%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f 
echo %w% - Disabling HVCIMATRequired%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f 
echo %w% - Disabling ExceptionChainValidation%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Disabling Sehop%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f 
echo %w% - Disabling CFG%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f 
echo %w% - Disabling Protection Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f 
echo %w% - Disabling Spectre And Meltdown%b%

if "%ProcessorManufacturer%" EQU "AuthenticAMD" (
    Reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "2" /f 
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "2" /f
) else (
    Reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f 
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
)

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f 
echo %w% - Disabling Address Space Layout Randomization%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f 

echo %w%- Disabling windows smart screen %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f 
 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto alldebloat2


:mition
echo %w% - Enabling Isolation Memory Integrity%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling HVCIMAT%b%	
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "1" /f 
echo %w% - Enabling ExceptionChainValidation%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Sehop%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling CFG%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Protection Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Spectre And Meltdown%b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /f
echo %w% - Enabling Address Space Layout Randomization%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f  
echo %w%- Enabling windows smart screen %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "On" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "1" /f 
 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto alldebloat2


:alldebloat2
cls
echo.
echo.
echo.
echo.                                            %p% █████╗ ██╗   ██╗████████╗ █████╗ ██████╗ ██╗   ██╗███╗  ██╗ ██████╗
echo.                                            %p%██╔══██╗██║   ██║╚══██╔══╝██╔══██╗██╔══██╗██║   ██║████╗ ██║██╔════╝
echo.                                            %p%███████║██║   ██║   ██║   ██║  ██║██████╔╝██║   ██║██╔██╗██║╚█████╗ 
echo.                                            %p%██╔══██║██║   ██║   ██║   ██║  ██║██╔══██╗██║   ██║██║╚████║ ╚═══██╗
echo.                                            %p%██║  ██║╚██████╔╝   ██║   ╚█████╔╝██║  ██║╚██████╔╝██║ ╚███║██████╔╝
echo.                                            %p%╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚══╝╚═════╝ %W%
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('After you press ok it will open an app, Go to the LOGON section, Disabling all services except: antivirus, cmd.exe, and the n/a services', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1

start C:\korqedev\Autoruns.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls

:alldebloat3
cls
echo.
echo.
echo.
echo.
echo.                                            %p%██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗  ██████╗ ██╗      █████╗  █████╗ ██╗  ██╗███████╗██████╗ 
echo.                                            %p%██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝  ██╔══██╗██║     ██╔══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗
echo.                                            %p%██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗    ██████╦╝██║     ██║  ██║██║  ╚═╝█████═╝ █████╗  ██████╔╝
echo.                                            %p%██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝    ██╔══██╗██║     ██║  ██║██║  ██╗██╔═██╗ ██╔══╝  ██╔══██╗
echo.                                            %p%╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗  ██████╦╝███████╗╚█████╔╝╚█████╔╝██║ ╚██╗███████╗██║  ██║
echo.                                            %p% ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝  ╚═════╝ ╚══════╝ ╚════╝  ╚════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ %W%
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Note: Disabling Windows Updates will break Microsoft store, if you want to use it again simply press "Enable" in windows update blocker ', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1


start C:\korqedev\Windows_Update_Blocker.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls

:alldebloat4
cls
echo.
echo.
echo.
echo.                                                       %p%██████╗ ██╗     ██╗   ██╗███████╗████████╗ █████╗  █████╗ ████████╗██╗  ██╗
echo.                                                       %p%██╔══██╗██║     ██║   ██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝██║  ██║
echo.                                                       %p%██████╦╝██║     ██║   ██║█████╗     ██║   ██║  ██║██║  ██║   ██║   ███████║
echo.                                                       %p%██╔══██╗██║     ██║   ██║██╔══╝     ██║   ██║  ██║██║  ██║   ██║   ██╔══██║
echo.                                                       %p%██████╦╝███████╗╚██████╔╝███████╗   ██║   ╚█████╔╝╚█████╔╝   ██║   ██║  ██║
echo.                                                       %p%╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝   ╚═╝    ╚════╝  ╚════╝    ╚═╝   ╚═╝  ╚═╝
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                        %p%[%w%1%p%]%w% Disable Bluetooth                  %p%[%w%2%p%]%w% Enable Bluetooth %g%(default)
echo.
echo.
echo.                                                        %p%%p%%p%%p%                           %p%[%w%M%p%]%w% Skip 
echo. 
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                           Disable bluetooth if you dont use it, but if you use it keep it enabled                                               
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto BluetoothOFF
if /i %input% == 2 goto BluetoothON
if /i %input% == M goto alldebloat5
) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto alldebloat4

:BluetoothON
echo %w% - Enabling Bluetooth %b%
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto alldebloat5

:BluetoothOFF
echo %w% - Disabling Bluetooth %b%
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto alldebloat5


:alldebloat5
cls
echo.
echo.
echo.                                                       %p%███╗   ███╗ ██████╗   ██████╗████████╗ █████╗ ██████╗ ███████╗
echo.                                                       %p%████╗ ████║██╔════╝  ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝
echo.                                                       %p%██╔████╔██║╚█████╗   ╚█████╗    ██║   ██║  ██║██████╔╝█████╗   
echo.                                                       %p%██║╚██╔╝██║ ╚═══██╗   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝ 
echo.                                                       %p%██║ ╚═╝ ██║██████╔╝  ██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗
echo.                                                       %p%╚═╝     ╚═╝╚═════╝   ╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝
echo.                                              %b%"═══════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                   %p%[%w%1%p%]%w% Disable Microsoft Store            %p%[%w%2%p%]%w% Enable Microsoft Store
echo.
echo.
echo.                                                   %p%%p%%p%%p%                        %p%[%w%M%p%]%w% Back To menu 
echo. 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                      Disables the microsoft store feature 
echo.                                                 You need to have updates enabled for it to work, the revert will enable them
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto microsoftstoreoff2
if /i %input% == 2 goto microsoftstoreon2
if /i %input% == M goto debloat

) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto alldebloat5

:microsoftstoreon2
echo %w% - Enabling Microsoft store%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 1 /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 1 /f 
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 

goto :d10
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto d12


:microsoftstoreoff2
echo %w% - Disabling Microsoft store%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 0 /f 
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 0 /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 0 /f 
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 0 /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto d12


:d7
cls
echo.
echo.
echo.                                                       %p%███╗   ███╗ ██████╗   ██████╗████████╗ █████╗ ██████╗ ███████╗
echo.                                                       %p%████╗ ████║██╔════╝  ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝
echo.                                                       %p%██╔████╔██║╚█████╗   ╚█████╗    ██║   ██║  ██║██████╔╝█████╗   
echo.                                                       %p%██║╚██╔╝██║ ╚═══██╗   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝ 
echo.                                                       %p%██║ ╚═╝ ██║██████╔╝  ██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗
echo.                                                       %p%╚═╝     ╚═╝╚═════╝   ╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝
echo.                                              %b%"═══════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                  %p%[%w%1%p%]%w% Disable Microsoft Store            %p%[%w%2%p%]%w% Enable Microsoft Store %g%(Revert)
echo.
echo.
echo.                                                  %p%%p%%p%%p%                        %p%[%w%M%p%]%w% Back To menu 
echo. 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                      Disables the microsoft store feature 
echo.                                                 You need to have updates enabled for it to work, the revert will enable them
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto microsoftstoreoff2
if /i %input% == 2 goto microsoftstoreon2
if /i %input% == M goto debloat

) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto d7

:microsoftstoreon2
echo %w% - Enabling Microsoft store%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 1 /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 1 /f 
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 


cls
echo.
echo.
echo.
echo.
echo.                                            %p%██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗  ██████╗ ██╗      █████╗  █████╗ ██╗  ██╗███████╗██████╗ 
echo.                                            %p%██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝  ██╔══██╗██║     ██╔══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗
echo.                                            %p%██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗    ██████╦╝██║     ██║  ██║██║  ╚═╝█████═╝ █████╗  ██████╔╝
echo.                                            %p%██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝    ██╔══██╗██║     ██║  ██║██║  ██╗██╔═██╗ ██╔══╝  ██╔══██╗
echo.                                            %p%╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗  ██████╦╝███████╗╚█████╔╝╚█████╔╝██║ ╚██╗███████╗██║  ██║
echo.                                            %p% ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝  ╚═════╝ ╚══════╝ ╚════╝  ╚════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Note: Disabling Windows Updates will break Microsoft store, if you want to use it again simply press "Enable" in windows update blocker ', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
start C:\korqedev\Windows_Update_Blocker.exe
echo. 
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat


:microsoftstoreoff2
echo %w% - Disabling Microsoft store%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 0 /f 
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 0 /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 0 /f 
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 0 /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat




:revertdebloat
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.  


echo %w% - Enabling Gamdvr%b%
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "1" /f

echo %w% - Enabling Xbox Services%b%
sc config xbgm start= demand >nul 2>&1
sc config XblAuthManager start= auto
sc config XblGameSave start= manual
sc config XboxGipSvc start= demand
sc config XboxNetApiSvc start= demand

echo %w% - Enabling Isolation Memory Integrity%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling HVCIMAT%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "1" /f 
echo %w% - Enabling ExceptionChainValidation%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Sehop%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling CFG%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Protection Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Spectre And Meltdown%b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /f
echo %w% - Enabling Address Space Layout Randomization%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f  

echo %w% - Enabling Hyper-V%b%
sc config HvHost start=auto
sc config vmickvpexchange start=auto 
sc config vmicguestinterface start=auto
sc config vmicshutdown start=auto
sc config vmicheartbeat start=auto 
sc config vmicvmsession start=auto
sc config vmicrdv start=auto
sc config vmictimesync start=auto
sc config vmicvss start=auto
bcdedit /set hypervisorlaunchtype auto

echo %w% - Enabling Telemetry%b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask"
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /enable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /enable
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy"
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /enable
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT"
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent"
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /enable
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /enable
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /enable
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics"
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /enable
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks"
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /enable
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /enable
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific"
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack" /enable
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat"
schtasks /change /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" /enable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /enable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime"
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /enable
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
schtasks /change /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /enable
schtasks /end /tn "\Microsoft\Windows\Device Information\Device"
schtasks /change /tn "\Microsoft\Windows\Device Information\Device" /enable

echo %w% - Enabling Autologgers%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnabled" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Printing and maps Services  %b%
sc config MapsBroker start= enabled
sc config PrintNotify start= enabled
sc config Spooler start= enabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /enable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /enable 

echo %w% - Enabling Office Telemetry%b%
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "SendTelemetry" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "qmEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Firstrun" /v "Disablemovie" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableFileObfuscation" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "0" /f

echo %w% - Enabling Biometrics%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "2" /f

echo %w% - Enabling Microsoft store%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 1 /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 1 /f 
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu



:d4
echo %w% - Disabling Printing and maps Services  %b%
sc config MapsBroker start= disabled
sc config PrintNotify start= disabled
sc config Spooler start= disabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat




:d1
echo %w% - Disabling GameDVR%b%
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f

echo %w% - Disabling Xbox%b%
sc config xbgm start= Disabled >nul 2>&1
sc config XblAuthManager start= Disabled >nul 2>&1
sc config XblGameSave start= Disabled >nul 2>&1
sc config XboxGipSvc start= Disabled >nul 2>&1
sc config XboxNetApiSvc start= Disabled >nul 2>&1
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto debloat




:e
:fixes
cls
echo.
echo.
echo.
echo.                                                       %p%       ███████╗██╗██╗  ██╗███████╗ ██████╗
echo.                                                       %p%       ██╔════╝██║╚██╗██╔╝██╔════╝██╔════╝
echo.                                                       %p%       █████╗  ██║ ╚███╔╝ █████╗  ╚█████╗ 
echo.                                                       %p%       ██╔══╝  ██║ ██╔██╗ ██╔══╝   ╚═══██╗
echo.                                                       %p%       ██║     ██║██╔╝╚██╗███████╗██████╔╝
echo.                                                       %p%       ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═════╝ 
echo.                                        %b%"═════════════════════════════════════════════════════════════════════════════════════"%w%              
echo.                                                                                                                                                                  
echo.                                                                %p%[%w%1%p%]%w% Bring back default power plans                                 
echo.                                                                                                                          
echo.                                                                %p%[%w%2%p%]%w% Reinstall default windows apps                                 
echo.                                                                                                                      
echo.                                                                %p%[%w%3%p%]%w% Enable XBOX Services                                           
echo.                                                                                                                      
echo.                                                                %p%[%w%4%p%]%w% Enable GameDVR                                                 
echo.                                                                                                                         
echo.                                                                %p%[%w%5%p%]%w% Enable Notifications                                           
echo.                                                                                                                       
echo.                                                                %p%[%w%6%p%]%w% Enable Bluetooth      
echo.
echo.                                                                %p%[%w%7%p%]%w% Enable Printing and Maps Services
echo.  
echo.                                                                %p%[%w%8%p%]%w% Reinstall Edge
echo.     
echo.                                                                %p%[%w%9%p%]%w% Enable Windows Updates
echo.
echo.                                                                %p%[%w%10%p%]%w% Enable Windows Smart Screen
echo.
echo.                                                                %p%[%w%11%p%]%w% Enable Diagnostics
echo.
echo.                                                                %p%[%w%12%p%]%w% Enable Biometrics
echo.
echo.
echo.                                                                                                                       
echo.                                                                  %p%[%w%M%p%]%w% Back to menu                                         
echo.                                                                              
echo.                                        %b%"═════════════════════════════════════════════════════════════════════════════════════"
echo.                                                  %W% Allows you to revert a bunch of settings, without having to use a restore point
echo.                                        %b%"═════════════════════════════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 goto r1
if /i %input% == 2 goto r2
if /i %input% == 3 goto r3
if /i %input% == 4 goto r4
if /i %input% == 5 goto r5
if /i %input% == 6 goto r6
if /i %input% == 7 goto r7
if /i %input% == 8 goto r8
if /i %input% == 9 goto w9
if /i %input% == 10 goto r10
if /i %input% == 11 goto r11
if /i %input% == 12 goto r12
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :e

:r12
echo %w% - Enabling Biometrics%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto :e

:r5
echo %w% - Enabling Notifications%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto :e

:r11
echo %w% - Enabling Diagnostics %b%
sc config DPS start= auto
sc config DiagTrack start= demand 
sc config dmwappushservice start= demand 
sc config diagnosticshub.standardcollector.service start= demand 
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Enable
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Enable
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Enable
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Enable
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisablediagnosticTracing" /t REG_DWORD /d "0" /f >nul 2>&1 
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto :e

:r10
echo %w% - Enabling Windows Smart Screen  %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "On" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto :e


:r9
chcp 437 > nul
echo %w%- Revert Edge through official installer %B%
start https://discord.com/channels/1177410668606009444/1178430446590238860/1288889764304654440

chcp 65001 > nul

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto :e

:r7
echo %w% - Enabling Printing and maps Services  %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "2" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto :e



:r6
echo %w% - Enabling Bluetooth%b%
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto :e



:r4
echo %w% - Enabling Gamedvr Services%b%
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:r3
echo %w% - Enabling Xbox Services%b%
sc config xbgm start= demand
sc config XblAuthManager start= demand
sc config XblGameSave start= demand
sc config XboxGipSvc start= demand
sc config XboxNetApiSvc start= demand
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:r2
echo %w% - Redownload default windows apps%b%
chcp 437 > nul
Powershell -Command "Get-AppxPackage -allusers | foreach {Add-AppxPackage -register “$($_.InstallLocation)\appxmanifest.xml” -DisabledevelopmentMode}"
chcp 65001 > nul

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:r1
echo %w% - Resetting power plans%b%
powercfg –restoredefaultschemes
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu









:5war
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Do NOT do these if your pc has bad overheating issues', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
timeout /t 1 /nobreak > nul
chcp 65001 >nul 2>&1

:5
:cpu
cls
echo.
echo.
echo.                                                                  %p%  █████╗ ██████╗ ██╗   ██╗          
echo.                                                                  %p% ██╔══██╗██╔══██╗██║   ██║       
echo.                                                                  %p% ██║  ╚═╝██████╔╝██║   ██║         
echo.                                                                  %p% ██║  ██╗██╔═══╝ ██║   ██║        
echo.                                                                  %p% ╚█████╔╝██║     ╚██████╔╝      
echo.                                                                  %p%  ╚════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                                                                                                                                                       
echo.                                                      %p%[%w%1%p%]%w% Apply Optimizations for AMD CPUs          
echo.
echo.                                                      %p%[%w%2%p%]%w% Apply Optimizations for Intel CPUs                                             
echo.                                                                                           
echo.                                                                                             
echo.                                                                %p%[%w%T%p%]%w% Open Task Manager                           
echo.                                                                                           
echo.                                                                %p%[%w%M%p%]%w% Back to menu     
echo.
echo.                                                                %p%[%w%R%p%]%w% Revert                       
echo.                                                                             
echo.                                        %b%"════════════════════════════════════════════════════════════════════" %w%
echo.                                                          %w% Select Which type of cpu you have:   
echo.          
echo.                                           %w% Disable power saving features, Disablings core parking and more!
echo.                                        %b%"════════════════════════════════════════════════════════════════════"
echo.

set /p input=:
if /i %input% == 1 goto cpu1
if /i %input% == 2 goto cpu2
if /i %input% == R goto revertcpu
if /i %input% == T start taskmgr & goto 8
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu

:RedirectMenu
cls
goto 	


:revertcpu
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.  

echo %w%- Reverting Intel-Specific CPU Tweaks %b%
bcdedit /deletevalue allowedinmemorysettings
bcdedit /deletevalue isolatedcontext

echo %w%- Reverting Distribute Timers %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /f

echo %w%- Reverting TSX %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /f

echo %w%- Reverting Even Processor %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /f

echo %w%- Reverting CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Logical Processors %b%
bcdedit /deletevalue {current} numproc

echo %w%- Reverting C-States %b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Higher P-States on Lower C-States %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Core Parking %b%
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 10
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Throttle States %b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "5" /f

echo %w%- Fair Share CPU Scheduling %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v EnableCpuQuota /f

echo %w% Revert Processor Performance Time Check Interval %b%
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 15
Powercfg -setactive scheme_current
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu


:cpu1
cls
echo.  
echo.  
echo.
echo.                                                                  %p% █████╗ ███╗   ███╗██████╗    █████╗ ██████╗ ██╗   ██╗
echo.                                                                  %p%██╔══██╗████╗ ████║██╔══██╗  ██╔══██╗██╔══██╗██║   ██║
echo.                                                                  %p%███████║██╔████╔██║██║  ██║  ██║  ╚═╝██████╔╝██║   ██║
echo.                                                                  %p%██╔══██║██║╚██╔╝██║██║  ██║  ██║  ██╗██╔═══╝ ██║   ██║
echo.                                                                  %p%██║  ██║██║ ╚═╝ ██║██████╔╝  ╚█████╔╝██║     ╚██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝    ╚════╝ ╚═╝      ╚═════╝ 
echo.
timeout 1 /nobreak > NUL
echo %w%- Disabling Core Parking  %b%
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT

echo %w%- Enabling TSX%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "1" /f

echo %w%- Disabling Event Processor%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f

echo %w%- CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setactive SCHEME_CURRENT

echo %w%- Tweak CPU Capabilities %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v Capabilities /t REG_DWORD /d 0x7E066 /f

echo %w%- Enabling All Logical Processors %b%
set THREADS=%NUMBER_OF_PROCESSORS% & bcdedit /set {current} numproc %NUMBER_OF_PROCESSORS% 

echo %w% - Disabling C-States%b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg /setactive SCHEME_CURRENT

echo %w%- Use Higher P-States on Lower C-States And Viseversa %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
powercfg /setactive SCHEME_CURRENT

echo %w% - Disabling Throttle States%b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f

echo %w%- Disable Fair Share CPU Scheduling %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v EnableCpuQuota /t REG_DWORD /d "0" /f

echo %w%- Tweak CPU Capabilities %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v Capabilities /t REG_DWORD /d 0x7E066 /f

echo %w% Optimize Processor Performance Time Check Interval %b%
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 5000
Powercfg -setactive scheme_current
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:cpu2
CLS
echo.
echo.
echo.
echo.                                                                  %p%██╗███╗  ██╗████████╗███████╗██╗        █████╗ ██████╗ ██╗   ██╗
echo.                                                                  %p%██║████╗ ██║╚══██╔══╝██╔════╝██║       ██╔══██╗██╔══██╗██║   ██║
echo.                                                                  %p%██║██╔██╗██║   ██║   █████╗  ██║       ██║  ╚═╝██████╔╝██║   ██║
echo.                                                                  %p%██║██║╚████║   ██║   ██╔══╝  ██║       ██║  ██╗██╔═══╝ ██║   ██║
echo.                                                                  %p%██║██║ ╚███║   ██║   ███████╗███████╗  ╚█████╔╝██║     ╚██████╔╝
echo.                                                                  %p%╚═╝╚═╝  ╚══╝   ╚═╝   ╚══════╝╚══════╝   ╚════╝ ╚═╝      ╚═════╝ 
echo.
timeout 1 /nobreak > NUL

echo %w%- Disabling Core Parking  %b%
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT

echo %w%- Intel Specific Cpu tweaks %b%
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext No

echo %w%- Disabling TSX%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "0" /f

echo %w%- Disabling Event Processor%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f

echo %w%- CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setactive SCHEME_CURRENT

echo %w%- Enabling All Logical Processors %b%
set THREADS=%NUMBER_OF_PROCESSORS% & bcdedit /set {current} numproc %NUMBER_OF_PROCESSORS% 

echo %w% - Disabling C-States%b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg /setactive SCHEME_CURRENT
timeout /t 1 /nobreak > NUL

echo %w%- Use Higher P-States on Lower C-States And Viseversa %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
powercfg /setactive SCHEME_CURRENT

echo %w% - Disabling Throttle States%b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f

echo %w%- Disable Fair Share CPU Scheduling %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v EnableCpuQuota /t REG_DWORD /d "0" /f

echo %w%- Tweak CPU Capabilities %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v Capabilities /t REG_DWORD /d 0x7E066 /f

echo %w% Optimize Processor Performance Time Check Interval %b%
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 5000
Powercfg -setactive scheme_current
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu


:revertgpu
cls
echo.
echo.
echo.                                                      %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                      %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                      %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                      %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                      %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                      %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═══════════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                                     %p%[%w%1%p%]%w% Revert NVIDIA GPU Optimizations                             
echo.                                                                                            
echo.                                                     %p%[%w%2%p%]%w% Revert AMD GPU Optimizations                                
echo.                                                                                          
echo.                                                     %p%[%w%3%p%]%w% Revert Intel GPU Optimizations                           
echo.                                                                     
echo.                                                                                                                                                                                                          
echo.                                                             %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.                                                     %w% Select which type of Gpu you have:  
echo. 
echo.                                               %W%  Reverts gpu tweaks made by the korqedev free utility
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 goto rg1
if /i %input% == 2 goto rg2
if /i %input% == 3 goto rg3
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto revertgpu

:rg3
cls
echo.
echo.
echo.                                                       %p%   ██╗███╗  ██╗████████╗███████╗██╗        ██████╗ ██████╗ ██╗   ██╗
echo.                                                       %p%   ██║████╗ ██║╚══██╔══╝██╔════╝██║       ██╔════╝ ██╔══██╗██║   ██║
echo.                                                       %p%   ██║██╔██╗██║   ██║   █████╗  ██║       ██║  ██╗ ██████╔╝██║   ██║
echo.                                                       %p%   ██║██║╚████║   ██║   ██╔══╝  ██║       ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                       %p%   ██║██║ ╚███║   ██║   ███████╗███████╗  ╚██████╔╝██║     ╚██████╔╝  
echo.                                                       %p%   ╚═╝╚═╝  ╚══╝   ╚═╝   ╚══════╝╚══════╝   ╚═════╝ ╚═╝      ╚═════╝ 
echo.
echo.

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Deleting GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removing Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Disabling MSI Mode on GPU if supported %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "0" /f
)

echo %w% - Reverting Intel Gpu Tweaks%b%
for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (

	Reg.exe add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "AdaptiveVsyncEnabled" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "1" /f
)
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :menu

:rg2
:g2
cls
echo.
echo.
echo.
echo.                                                              %p% █████╗ ███╗   ███╗██████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%██╔══██╗████╗ ████║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%███████║██╔████╔██║██║  ██║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██╔══██║██║╚██╔╝██║██║  ██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║  ██║██║ ╚═╝ ██║██████╔╝  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝    ╚═════╝ ╚═╝      ╚═════╝ 
timeout 1 /nobreak > NUL

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Deleting GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removing Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Disabling MSI Mode on GPU if supported %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "0" /f
)

echo %w% - Enabling Display Refresh Rate Override%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "1" /f 

echo %w% - Enabling SnapShot%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Anti Aliasing%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "1" /f 

echo %w% - Enabling Subscriptions%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Anisotropic Filtering%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "1" /f 

echo %w% - Enabling Radeon Overlay%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "true" /f  


echo %w% - Enabling Skins%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "true" /f  

echo %w% - Enabling Automatic Color Depth Reduction%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Frame Rate Target%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling DMA%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledMACopy" /t REG_DWORD /d "1" /f 

echo %w% - Enabling BlockWrite%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "1" /f 
 
echo %w% - Enabling Preemption%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f

echo %w% - Enabling AMD Logging%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Reverting Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "0" /f

echo %w%- Enabling Hardware Acceleration %b% 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :menu

:rg1
cls
echo.
echo.
echo.
echo.                                                              %p%███╗  ██╗██╗   ██╗██╗██████╗ ██╗ █████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%████╗ ██║██║   ██║██║██╔══██╗██║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%██╔██╗██║╚██╗ ██╔╝██║██║  ██║██║███████║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██║╚████║ ╚████╔╝ ██║██║  ██║██║██╔══██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║ ╚███║  ╚██╔╝  ██║██████╔╝██║██║  ██║  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚══╝   ╚═╝   ╚═╝╚═════╝ ╚═╝╚═╝  ╚═╝   ╚═════╝ ╚═╝      ╚═════╝ 

echo %w% - Reverting Contigous Memory Allocation %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "0" /f

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Deleting GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removing Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Disabling MSI Mode on GPU if supported %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "0" /f
)

echo %w%- Enabling HDCP%b%
			 for /f %%m in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
	for /f "tokens=3" %%a in ('Reg.exe query "HKLM\SYSTEM\ControlSet001\Enum\%%m" /v "Driver"') do (
		for /f %%m in ('echo %w%- %%a ^| findstr "{"') do (
		     Reg.exe add "HKLM\System\ControlSet001\Control\Class\%%m" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "0" /f
                   )
                )
             )


 

echo %w% - Enabling Preemption%b%

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "1" /f


echo %w% - Reverting NVIDIA Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "0" /f 
echo %w% - Reverting Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "0" /f

goto echo %w%- Enabling Hardware Acceleration %b% 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :menu



:4
:gpu
cls
echo.
echo.
echo.                                                      %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                      %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                      %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                      %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                      %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                      %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═══════════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                                     %p%[%w%1%p%]%w% Apply NVIDIA GPU Optimizations                             
echo.                                                                                            
echo.                                                     %p%[%w%2%p%]%w% Apply AMD GPU Optimizations                                
echo.                                                                                          
echo.                                                     %p%[%w%3%p%]%w% Apply Intel GPU Optimizations                           
echo.                                                                     
echo.                      
echo.                                                             %p%[%w%T%p%]%w% Open Task Manager   
echo.
echo.                                                             %p%[%w%R%p%]%w% Revert                          
echo.                                                                                                                                                                                     
echo.                                                             %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.                                                     %w% Select which type of Gpu you have:  
echo. 
echo.                                               %W%  Optimizes your GPU by tweaking 3d settings
echo.                                               %W% Disabling power saving features and much more
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 goto g1
if /i %input% == 2 goto g2
if /i %input% == 3 goto g3
if /i %input% == r goto revertgpu
if /i %input% == T start taskmgr & goto 7
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto 4


:g3
cls
echo.
echo.
echo.                                                       %p%   ██╗███╗  ██╗████████╗███████╗██╗        ██████╗ ██████╗ ██╗   ██╗
echo.                                                       %p%   ██║████╗ ██║╚══██╔══╝██╔════╝██║       ██╔════╝ ██╔══██╗██║   ██║
echo.                                                       %p%   ██║██╔██╗██║   ██║   █████╗  ██║       ██║  ██╗ ██████╔╝██║   ██║
echo.                                                       %p%   ██║██║╚████║   ██║   ██╔══╝  ██║       ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                       %p%   ██║██║ ╚███║   ██║   ███████╗███████╗  ╚██████╔╝██║     ╚██████╔╝  
echo.                                                       %p%   ╚═╝╚═╝  ╚══╝   ╚═╝   ╚══════╝╚══════╝   ╚═════╝ ╚═╝      ╚═════╝ 
echo.
echo.

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Deleting GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removing Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Enabling MSI Mode on GPU if supported %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
)

echo %w% - Intel Gpu Tweaks%b%
for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (

	Reg.exe add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "AdaptiveVsyncEnabled" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "ACPowerPolicyVersion" /t REG_DWORD /d "16898" /f
    Reg.exe add "%%t" /v "DCPowerPolicyVersion" /t REG_DWORD /d "16642" /f
)


Reg.exe add "HKLM\Software\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "512" /f

goto hardwareacceleration




:1 
cls
echo.
echo.
echo.                                                     %p%    ██████╗ ███████╗███╗  ██╗███████╗██████╗  █████╗ ██╗          
echo.                                                     %p%   ██╔════╝ ██╔════╝████╗ ██║██╔════╝██╔══██╗██╔══██╗██║          
echo.                                                     %p%   ██║  ██╗ █████╗  ██╔██╗██║█████╗  ██████╔╝███████║██║         
echo.                                                     %p%   ██║  ╚██╗██╔══╝  ██║╚████║██╔══╝  ██╔══██╗██╔══██║██║           
echo.                                                     %p%   ╚██████╔╝███████╗██║ ╚███║███████╗██║  ██║██║  ██║███████╗     
echo.                                                     %p%    ╚═════╝ ╚══════╝╚═╝  ╚══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝    
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                
echo.                                                    %p%[%w%1%p%]%w% Apply General Regsitry and windows Optimizations 
echo. 
echo.                                                                                         
echo.                                                                      %p%[%w%M%p%]%w% Back to menu   
echo.
echo.                                                                      %p%[%w%R%p%]%w% Revert                        
echo.
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                          %W%Applies general optimizations in registry, windows settings, bcd-edit and more!
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo. 
echo. 

set /p input=:
if /i %input% == 1 goto general
if /i %input% == R goto revertgeneral
if /i %input% == M CLS & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect 

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenue
:RedirectMenu
cls
goto :1

:general
CLS
echo.
echo.
echo.
echo.                                           %p% ██████╗ ███████╗███╗  ██╗███████╗██████╗  █████╗ ██╗         ██╗ ██╗       ██╗██╗███╗  ██╗██████╗  █████╗  ██╗       ██╗ ██████╗
echo.                                           %p%██╔════╝ ██╔════╝████╗ ██║██╔════╝██╔══██╗██╔══██╗██║        ██╔╝ ██║  ██╗  ██║██║████╗ ██║██╔══██╗██╔══██╗ ██║  ██╗  ██║██╔════╝
echo.                                           %p%██║  ██╗ █████╗  ██╔██╗██║█████╗  ██████╔╝███████║██║       ██╔╝  ╚██╗████╗██╔╝██║██╔██╗██║██║  ██║██║  ██║ ╚██╗████╗██╔╝╚█████╗ 
echo.                                           %p%██║  ╚██╗██╔══╝  ██║╚████║██╔══╝  ██╔══██╗██╔══██║██║      ██╔╝    ████╔═████║ ██║██║╚████║██║  ██║██║  ██║  ████╔═████║  ╚═══██╗
echo.                                           %p%╚██████╔╝███████╗██║ ╚███║███████╗██║  ██║██║  ██║███████╗██╔╝     ╚██╔╝ ╚██╔╝ ██║██║ ╚███║██████╔╝╚█████╔╝  ╚██╔╝ ╚██╔╝ ██████╔╝
echo.                                           %p% ╚═════╝ ╚══════╝╚═╝  ╚══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝  ╚════╝    ╚═╝   ╚═╝  ╚═════╝ 
echo. 
echo.
echo.


echo %w% - Disabling Dynamic Tick%b%
bcdedit /set Disabledynamictick yes >nul 2>&1
echo %w% - Disabling High Precision Event Timer %g%(HPET)%b%
bcdedit /deletevalue useplatformclock  >nul 2>&1
echo %w% - Disabling Synthetic Timers%b%
bcdedit /set useplatformtick yes  >nul 2>&1



echo %w% - MMCSS Priority For Low Latency%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f

Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f


echo %w% - Setting Win32Priority%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f 

echo %w% - Decreasing process kill time and menu show delay%b%
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f

echo %w% - Setting IO Time Stamp%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "3" /f 

echo %w% - Setting CSRSS IO and CPU Priority%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f 

echo %w%- Enabling Memory Mapping %b%
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No


echo %w% - Setting Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Biometrics%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f

echo %w% - Setting System Responsiveness%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f 

echo %w% - Optimizing Windows Search%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 3 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 3 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\Software\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DoNotUseWebResults" /t REG_DWORD /d "1" /f

echo %w% - Track Only Important Failure Events %b%
Auditpol /set /subcategory:"Process Termination" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"RPC Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Filtering Platform Connection" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"DPAPI Activity" /failure:Disable /failure:Disable >nul 2>&1 
Auditpol /set /subcategory:"IPsec Driver" /success:	 /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Other System Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security State Change" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security System Extension" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"System Integrity" /failure:Disable /failure:Enable >nul 2>&1 
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f

echo %w% - Disabling Windows Insider Experiments%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Activity feed%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f

echo %w% - Disabling Automatic Maintenance%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Notifications%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f

echo %w%- Disabling Shared Experiences %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f

echo %w% - Disabling Setting Synchronization%b%
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t Reg_DWORD /d "5" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t Reg_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t Reg_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t Reg_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t Reg_DWORD /d ""0"" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t Reg_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t Reg_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t Reg_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t Reg_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t Reg_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t Reg_DWORD /d "2" /f 
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t Reg_DWORD /d "2" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t Reg_DWORD /d "2" /f

echo %w%- Stop Reinstalling Preinstalled apps %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f

echo %w%- Disabling Background Apps %b%
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f 

echo %w%- Disabling Transparency %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f

echo %w% - Tweaking Compatibility Settings%b%
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableEngine" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "1" /f

echo %w% - Disabling Tracking and some diagnostics%b%
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisablediagnosticTracing" /t REG_DWORD /d "1" /f >nul 2>&1 
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "0" /f
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Disable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable


echo %w% - Disable IoLatencyCap%b%
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
	REG ADD "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >NUL 2>&1

	FOR /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
		SET STR=!STR:\Parameters=!
		ECHO Setting IoLatencyCap to 0 in !STR!
	)
)

echo %w% - Disable DmaRemapping%b%
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy" /v "value" /t REG_DWORD /d "2" /f
for /f %%i in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /s /f DmaRemappingCompatible ^| find /i "Services\" ') do (
	echo %%i...
	Reg.exe add "%%i" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
)


timeout /t 3 /nobreak > NUL

cls 
echo.
echo. 
echo. 
echo.                                                                          %p% █████╗ ███╗  ██╗██╗███╗   ███╗ █████╗ ████████╗██╗ █████╗ ███╗  ██╗ ██████╗
echo.                                                                          %p%██╔══██╗████╗ ██║██║████╗ ████║██╔══██╗╚══██╔══╝██║██╔══██╗████╗ ██║██╔════╝
echo.                                                                          %p%███████║██╔██╗██║██║██╔████╔██║███████║   ██║   ██║██║  ██║██╔██╗██║╚█████╗ 
echo.                                                                          %p%██╔══██║██║╚████║██║██║╚██╔╝██║██╔══██║   ██║   ██║██║  ██║██║╚████║ ╚═══██╗
echo.                                                                          %p%██║  ██║██║ ╚███║██║██║ ╚═╝ ██║██║  ██║   ██║   ██║╚█████╔╝██║ ╚███║██████╔╝
echo.                                                                          %p%╚═╝  ╚═╝╚═╝  ╚══╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚════╝ ╚═╝  ╚══╝╚═════╝ 
%windir%\system32\SystemPropertiesPerformance.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

:fse
cls
echo.
echo.
echo.                                                                                            %p% ███████╗ ██████╗███████╗
echo.                                                                                            %p% ██╔════╝██╔════╝██╔════╝
echo.                                                                                            %p% █████╗  ╚█████╗ █████╗  
echo.                                                                                            %p% ██╔══╝   ╚═══██╗██╔══╝  
echo.                                                                                            %p% ██║     ██████╔╝███████╗
echo.                                                                                            %p% ╚═╝     ╚═════╝ ╚══════╝     
echo.                                                              %b%"════════════════════════════════════════════════════════════════════════════════"%w%
echo.      
echo.                                                                  %p%[%w%1%p%]%w% Set FSE For Windows 11              %p%[%w%2%p%]%w% Set FSE For Windows 10  
echo.
echo.                                                                                                                   
echo.                                                                                           
echo.                                                                     %p%%p%%p%%p%                         %p%[%w%M%p%]%w% Back to menu 
echo.                                                                                          
echo.                                                              %b%"════════════════════════════════════════════════════════════════════════════════"
echo.                                                                    %W% Please select your Windows Version to apply the appropriate FSO setting
echo.                                                              %b%"════════════════════════════════════════════════════════════════════════════════"
echo. 
set /p input=:
if /i %input% == 1 goto windows11
if /i %input% == 2 goto windows10
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :fse

:windows10
echo %w% - Setting FSE Behavior Mode %b%
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f

echo %w% - Delete Overlay %b%
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :gamemode

:windows11

echo %w% - Setting FSE Behavior Mode %b%
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f

echo %w% - Disabling VRR Optimizations %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "DirectXUserGlobalSettings" /t REG_SZ /d "VRROptimizeEnable=0;SwapEffectUpgradeEnable=1;" /f

echo %w% - Delete Overlay %b%
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
echo.

pause > nul
cls
goto :gamemode


:gamemode
cls
echo.
echo.
echo.
echo.                                                                       %p% ██████╗  █████╗ ███╗   ███╗███████╗  ███╗   ███╗ █████╗ ██████╗ ███████╗
echo.                                                                       %p%██╔════╝ ██╔══██╗████╗ ████║██╔════╝  ████╗ ████║██╔══██╗██╔══██╗██╔════╝
echo.                                                                       %p%██║  ██╗ ███████║██╔████╔██║█████╗    ██╔████╔██║██║  ██║██║  ██║█████╗  
echo.                                                                       %p%██║  ╚██╗██╔══██║██║╚██╔╝██║██╔══╝    ██║╚██╔╝██║██║  ██║██║  ██║██╔══╝  
echo.                                                                       %p%╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗  ██║ ╚═╝ ██║╚█████╔╝██████╔╝███████╗
echo.                                                                       %p% ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝  ╚═╝     ╚═╝ ╚════╝ ╚═════╝ ╚══════╝
echo.                                                                %b%"════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                                     %p%[%w%1%p%]%w% Enable Game Mode %g%(WIN 11)                %p%[%w%2%p%]%w% Disable Game Mode %g%(WIN 10)
echo.
echo.                           
echo.                                                                     %p%%p%%p%%p%                       %p%[%w%M%p%]%w% Back to menu    
echo.                                                                             
echo.                                                               %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                           We recommend Enabling game mode on windows 11, but Disabling it on windows 10                                                
echo.                                                               %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto gmodeOn
if /i %input% == 2 goto gmodeOff
if /i %input% == X cls & goto 3

) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto gamemode

:gmodeON
echo %w% - Enabling Game Mode %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:gmodeOFF
echo %w% - Disabling Game Mode %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu



:Revertgeneral
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.
 
::bcd
echo %w% - Disabling Dynamic Tick%b%
bcdedit /set Disabledynamictick yes >nul 2>&1
echo %w% - Disabling High Precision Event Timer (HPET)%b%
bcdedit /deletevalue useplatformclock  >nul 2>&1
echo %w% - Disabling Synthetic Timers%b%
bcdedit /set useplatformtick yes  >nul 2>&1 


echo %w% - MMCSS Priority For Low Latency%b%
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /f

Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /f

echo %w% - Setting Win32Priority%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "10" /f 

echo %w% - Decreasing process kill time and menu show delay%b%
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f

echo %w% - Setting IO Time Stamp%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "1" /f 

echo %w% - Settings Csrss to default%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "2" /f 

echo %w% - Setting Latency Tolerance%b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /f 

echo %w% - Setting System Responsiveness%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "14" /f 

echo %w% - Enabling Biometrics%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f

echo %w% - Enabling Game mode%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f

echo %w% - Optimizing Windows Search%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\Software\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DoNotUseWebResults" /t REG_DWORD /d "0" /f

echo %w% - Track Only Important Failure Events %b%
Auditpol /set /subcategory:"Process Termination" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"RPC Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Filtering Platform Connection" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"DPAPI Activity" /failure:Disable /failure:Disable >nul 2>&1 
Auditpol /set /subcategory:"IPsec Driver" /success:	 /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Other System Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security State Change" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security System Extension" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"System Integrity" /failure:Disable /failure:Enable >nul 2>&1 
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "1" /f

echo %w% - Enabling Windows Insider Experiments%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Activity feed%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "1" /f

echo %w% - Enabling Automatic Maintenance%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Notifications%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "0" /f

echo %w%- Enabling Shared Experiences %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "1" /f

echo %w% - Disabling Setting Synchronization%b%
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t Reg_DWORD /d "5" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t Reg_DWORD /d ""0"" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t Reg_DWORD /d "0" /f 
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t Reg_DWORD /d "0" /f

echo %w%- Dont Stop Reinstalling Preinstalled apps %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "1 /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "1" /f

echo %w%- Enabling Background Apps %b%
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "2" /f 

echo %w%- Enabling Transparency %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "1" /f
  
echo %w% - Enabling GameMode%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Reverting Combaility Settings%b%
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AllowTelemetry" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableEngine" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "0" /f

echo %w% - Enabling IoLatencyCap%b%
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
	REG ADD "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >NUL 2>&1

	FOR /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
		SET STR=!STR:\Parameters=!
		ECHO Setting IoLatencyCap to 0 in !STR!
	)
)

echo %w% - Enabling DmaRemapping%b%
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy" /v "value" /t REG_DWORD /d "2" /f
for /f %%i in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /s /f DmaRemappingCompatible ^| find /i "Services\" ') do (
	echo %%i...
	Reg.exe add "%%i" /v "DmaRemappingCompatible" /t REG_DWORD /d "1" /f
)


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu




:2war
chcp 437 >nul 2>&1
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Do NOT do these if your pc has overheating issues', 'korqedev Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
timeout /t 1 /nobreak > nul
chcp 65001 >nul 2>&1
:2

:power
cls
echo.
echo.
echo.                                                          %p%██████╗  █████╗  ██╗       ██╗███████╗██████╗      
echo.                                                          %p%██╔══██╗██╔══██╗ ██║  ██╗  ██║██╔════╝██╔══██╗ 
echo.                                                          %p%██████╔╝██║  ██║ ╚██╗████╗██╔╝█████╗  ██████╔╝        
echo.                                                          %p%██╔═══╝ ██║  ██║  ████╔═████║ ██╔══╝  ██╔══██   
echo.                                                          %p%██║     ╚█████╔╝  ╚██╔╝ ╚██╔╝ ███████╗██║  ██║      
echo.                                                          %p%╚═╝      ╚════╝    ╚═╝   ╚═╝  ╚══════╝╚═╝  ╚═╝      
echo.                                        %b%"════════════════════════════════════════════════════════════════════════════"%w%                                           
echo.                                                                     
echo.                                                                      %p%[%w%A%p%]%w% Apply All 
echo.                                             
echo.                                                            %p%[%w%1%p%]%w% Apply korqedev Free Power Plan V6               
echo.                                                                                           
echo.                                                            %p%[%w%2%p%]%w% Disable Power saving features  
echo.   
echo.                                                            %p%[%w%3%p%]%w% Disable Power Telemetry     
echo.
echo.                                                            %p%[%w%4%p%]%w% Delete useless power plans 
echo.
echo.                                                            %p%[%w%5%p%]%w% Disable Hibernation, Fast startup and more    
echo.  
echo.                                                            %p%[%w%6%p%]%w% Disable Gpu power saving features
echo. 
echo.      
echo.                                                                       %p%[%w%M%p%]%w% Back to menu   
echo. 
echo.                                                                       %p%[%w%R%p%]%w% Revert 
echo.                                                                                      
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════"
echo.                                                     %w% Might increase cpu temperatures on poorly cooled pcs
echo.                                                  %W% Disablings a bunch of useless power saving features and more
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════"
echo.
echo.

set /p input=:
if /i %input% == A goto allpower
if /i %input% == 1 goto p1
if /i %input% == 2 goto p2
if /i %input% == 3 goto p3
if /i %input% == 4 goto p4
if /i %input% == 5 goto p5
if /i %input% == 6 goto p6
if /i %input% == R goto Revertpower
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto power


:allpower
cls
echo. 
echo. 
echo. 
echo.                                                                 %p%██████╗  █████╗  ██╗       ██╗███████╗██████╗      
echo.                                                                 %p%██╔══██╗██╔══██╗ ██║  ██╗  ██║██╔════╝██╔══██╗ 
echo.                                                                 %p%██████╔╝██║  ██║ ╚██╗████╗██╔╝█████╗  ██████╔╝        
echo.                                                                 %p%██╔═══╝ ██║  ██║  ████╔═████║ ██╔══╝  ██╔══██   
echo.                                                                 %p%██║     ╚█████╔╝  ╚██╔╝ ╚██╔╝ ███████╗██║  ██║      
echo.                                                                 %p%╚═╝      ╚════╝    ╚═╝   ╚═╝  ╚══════╝╚═╝  ╚═╝ 
echo. 
echo. 

echo %w% Import korqedev Free Power Plan V6%b%
powercfg -import "C:\korqedev\korqedev Free Power Plan V6.pow"
powercfg.cpl

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul

echo %w% - Disabling StorPort Idle%b%
for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do Reg.exe add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f

echo %w%- Disabling Link State Power Managment %b%
echo %w%- Disabling HDD Parking %b%
echo %w%- Disabling HIPM %b%
echo %w%- Disabling DIPM %b%
for %%i in (EnableHIPM EnableDIPM EnableHDDParking) do for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%i" ^| findstr "HKEY"') do Reg.exe add "%%a" /v "%%i" /t REG_DWORD /d "0" /f

echo %w% - Disabling CoalescingTimerInterval%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Power Throttling%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Fast Startup %g%(fast startup is bad for your pc, even if it speeds up booting by a few seconds, thats why the utility disables it) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Hibernation%b%
powercfg /h off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Sleep Study %g%(you should only shutdown your pc, dont put it to sleep, its bad for your pc) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Energy Logging + Power Telemetry%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f 

timeout /t 3 /nobreak > NUL
:plans
cls
echo. 
echo. 
echo. 
echo.                                                        %p%██████╗ ███████╗██╗       ██████╗ ██╗      █████╗ ███╗  ██╗ ██████╗
echo.                                                        %p%██╔══██╗██╔════╝██║       ██╔══██╗██║     ██╔══██╗████╗ ██║██╔════╝
echo.                                                        %p%██║  ██║█████╗  ██║       ██████╔╝██║     ███████║██╔██╗██║╚█████╗ 
echo.                                                        %p%██║  ██║██╔══╝  ██║       ██╔═══╝ ██║     ██╔══██║██║╚████║ ╚═══██╗
echo.                                                        %p%██████╔╝███████╗███████╗  ██║     ███████╗██║  ██║██║ ╚███║██████╔╝
echo.                                                        %p%╚═════╝ ╚══════╝╚══════╝  ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝ 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                    %p%[%w%1%p%]%w% Default Power Plans                           %p%[%w%2%p%]%w% Skip 
echo.
echo.                                                                                     
echo.                                                    %p%%p%%p%%p%                      %p%[%w%R%p%]%w% Default Power Plans 
echo.
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                   Deletes default power plans %g%(Balanced, Power saver and High performance)                                              
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto deletepowerplans
if /i %input% == 2 goto p6
if /i %input% == R goto revertpowerplans
) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto plans

:deletepowerplans
echo %w% - Deleting useless power plans%b%
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto p6

:revertpowerplans
echo %w% - Resetting power plans%b%
powercfg –restoredefaultschemes
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto p6


:p4
cls
echo. 
echo. 
echo. 
echo.                                                        %p%██████╗ ███████╗██╗       ██████╗ ██╗      █████╗ ███╗  ██╗ ██████╗
echo.                                                        %p%██╔══██╗██╔════╝██║       ██╔══██╗██║     ██╔══██╗████╗ ██║██╔════╝
echo.                                                        %p%██║  ██║█████╗  ██║       ██████╔╝██║     ███████║██╔██╗██║╚█████╗ 
echo.                                                        %p%██║  ██║██╔══╝  ██║       ██╔═══╝ ██║     ██╔══██║██║╚████║ ╚═══██╗
echo.                                                        %p%██████╔╝███████╗███████╗  ██║     ███████╗██║  ██║██║ ╚███║██████╔╝
echo.                                                        %p%╚═════╝ ╚══════╝╚══════╝  ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝ 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                    %p%[%w%1%p%]%w% Default Power Plans                           %p%[%w%2%p%]%w% Skip 
echo.
echo.                                                                                     
echo.                                                    %p%%p%%p%%p%                      %p%[%w%R%p%]%w% Default Power Plans 
echo.
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                   Deletes default power plans %g%(Balanced, Power saver and High performance)                                              
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto deletepowerplans
if /i %input% == 2 goto menu
if /i %input% == R goto revertpowerplans
) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto p4

:deletepowerplans
echo %w% - Deleting useless power plans%b%
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto power

:revertpowerplans
echo %w% - Resetting power plans%b%
powercfg –restoredefaultschemes
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto power


:revertpower
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
echo %w% - Enabling Energy Logging + Power Telemetry%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "1" /f 

echo %w%- Enabling Link State Power Managment %b%
echo %w%- Enabling HIPM %b%
echo %w%- Enabling DIPM %b%
echo %w%- Enabling HDD Parking %b%
for %%i in (EnableHIPM EnableDIPM EnableHDDParking) do for /f %a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%i" ^| findstr "HKEY"') do Reg.exe add "%a" /v "%%i" /t REG_DWORD /d "1" /f
	
echo %w% - Enabling GPU Energy Driver%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Enabling CoalescingTimerInterval%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "1" /f  

echo %w% - Enabling Power Throttling%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "0" /f 

echo %w% - Restoring power plans%b%
powercfg –restoredefaultschemes

echo %w% - Enabling Fast Startup %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Hibernation%b%
powercfg /h on
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Sleep Study 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "0" /f 

echo %w% - Enabling StorPort Idle%b%
for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do Reg.exe add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "1" /f

:rp6
cls
echo.
echo.
echo.                                                     %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                     %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                     %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                     %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                     %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                     %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                           %p%[%w%1%p%]%w% Enable NVIDIA GPU Power saving features                             
echo.                                                                                            
echo.                                           %p%[%w%2%p%]%w% Enable AMD GPU Power saving features                                
echo.                                                                                          
echo.                                           %p%[%w%3%p%]%w% Enable Intel GPU Power saving features                           
echo.                                                                     
echo.                      
echo.                                                       %p%[%w%T%p%]%w% Open Task Manager                           
echo.                                                                                                                                                                                     
echo.                                                       %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                                                     
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.                                                 %w% Select which type of Gpu you have:  
echo.                                                   %W%Enables GPU Power Saving features
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 goto rpg1
if /i %input% == 2 goto rpg2
if /i %input% == 3 goto rpg3
if /i %input% == T start taskmgr & goto p6
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu

:RedirectMenu
cls
goto rp6

:rpg1
:rpg3
echo %w%- Enabling GpuEnergy Driver %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:pg2
echo %w% - Enabling GPU Memory Clock Sleep State%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Thermal Throttling%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling GPU Power Down%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "0" /f 

echo %w%- Enabling GpuEnergy Driver %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f

echo %w% - Enabling Power Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledrmdmaPowerGating" /t REG_DWORD /d "0" /f 

echo %w% - Enabling VCESW Clock Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Enabling UVD Clock Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Active State Power Management %g%(ASPM)%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Ultra Low Power States %g%(ULPS) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "1" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu



:p6
cls
echo.
echo.
echo.                                                     %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                     %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                     %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                     %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                     %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                     %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                           %p%[%w%1%p%]%w% Disable NVIDIA GPU Power saving features                             
echo.                                                                                            
echo.                                           %p%[%w%2%p%]%w% Disable AMD GPU Power saving features                                
echo.                                                                                          
echo.                                           %p%[%w%3%p%]%w% Disable Intel GPU Power saving features                           
echo.                                                                     
echo.                      
echo.                                                       %p%[%w%R%p%]%w% Revert
echo. 
echo.                                                       %p%[%w%T%p%]%w% Open Task Manager                           
echo.                                                                                                                                                                                     
echo.                                                       %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                                                     
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.                                                 %w% Select which type of Gpu you have:  
echo.                                                   %W%Disables GPU Power Saving features
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 goto pg1
if /i %input% == 2 goto pg2
if /i %input% == 3 goto pg3
if /i %input% == R goto rp6
if /i %input% == T start taskmgr & goto p6
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu

:RedirectMenu
cls
goto p6

:pg1
:pg3
echo %w%- Disabling GpuEnergy Driver %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f

echo %g%- note: most nvidia specific gpu power saving features are disabled via nvidia profile inspector which is in the gpu category

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:pg2
echo %w% - Disabling GPU Memory Clock Sleep State%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Thermal Throttling%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling GPU Power Down%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "1" /f 

echo %w%- Disabling GpuEnergy Driver %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f

echo %w% - Disabling Power Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledrmdmaPowerGating" /t REG_DWORD /d "1" /f 

echo %w% - Disabling VCESW Clock Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "0" /f 

echo %w% - Disabling UVD Clock Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Active State Power Management %g%(ASPM)%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Ultra Low Power States %g%(ULPS) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "0" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu



:p1
cls
echo %w% Import korqedev Free Power Plan V6%b%
powercfg -import "C:\korqedev\korqedev Free Power Plan V6.pow"
powercfg.cpl
timeout /t 1 /nobreak > NUL
echo.
echo.	
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto power

:p5
echo %w% - Disabling Fast Startup %g%(fast startup is bad for your pc, even if it speeds up booting by a few seconds) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Hibernation%b%
powercfg /h off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Sleep Study %g%(you should only shutdown your pc, dont put it to sleep, its bad for your pc) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto power


:skiplans
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:p3
echo %w% - Disabling Energy Logging + Power Telemetry%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto power

:P2
cls

echo %w% - Disabling StorPort Idle%b%
for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do Reg.exe add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f

echo %w%- Disabling Link State Power Managment %b%
echo %w%- Disabling HDD Parking %b%
echo %w%- Disabling HIPM %b%
echo %w%- Disabling DIPM %b%
for %%i in (EnableHIPM EnableDIPM EnableHDDParking) do for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%i" ^| findstr "HKEY"') do Reg.exe add "%%a" /v "%%i" /t REG_DWORD /d "0" /f


echo %w% - Disabling GPU Energy Driver%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Disabling CoalescingTimerInterval%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Power Throttling%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f 

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto power


:9
:RAM
cls
echo.
echo.
echo.                                                    %p%███╗   ███╗███████╗███╗   ███╗ █████╗ ██████╗ ██╗   ██╗     
echo.                                                    %p%████╗ ████║██╔════╝████╗ ████║██╔══██╗██╔══██╗╚██╗ ██╔╝
echo.                                                    %p%██╔████╔██║█████╗  ██╔████╔██║██║  ██║██████╔╝ ╚████╔╝         
echo.                                                    %p%██║╚██╔╝██║██╔══╝  ██║╚██╔╝██║██║  ██║██╔══██╗  ╚██╔╝    
echo.                                                    %p%██║ ╚═╝ ██║███████╗██║ ╚═╝ ██║╚█████╔╝██║  ██║   ██║        
echo.                                                    %p%╚═╝     ╚═╝╚══════╝╚═╝     ╚═╝ ╚════╝ ╚═╝  ╚═╝   ╚═╝         
echo.                                        %b%"═════════════════════════════════════════════════════════════════════════════"%w%                                           
echo.                                                                   Select how much ram you have:              
echo.                                                                                          
echo.                                           %p%[%w%1%p%]%w% 4GB                       %p%[%w%2%p%]%w% 8GB                    %p%[%w%3%p%]%w% 12GB                      
echo.                                                                                               
echo.                                           %p%[%w%4%p%]%w% 16GB                      %p%[%w%5%p%]%w% 24GB                   %p%[%w%6%p%]%w% 32GB
echo.  
echo.                                           %p%[%w%7%p%]%w% 48GB                      %p%[%w%8%p%]%w% 64GB                   %p%[%w%9%p%]%w% 128GB 
echo. 
echo.                                                                                       
echo.                                           %p%%p%%p%%p%                              %p%[%w%T%p%]%w% Open Task Manager  
echo.
echo.                                           %p%%p%%p%%p%                              %p%[%w%M%p%]%w% Back to menu        
echo.
echo.                                           %p%%p%%p%%p%                              %p%[%w%R%p%]%w% Revert                              
echo.                                                                                   
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════"%w% 
echo.                                           %w% Optimizes a bunch of RAM related registry values for optimal performance 
echo.                                              %W% Disablings a bunch of useless features which hinder your performance
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════"%w% 
echo.
echo.

set /p input=:
if /i %input% == 1 goto 4GB
if /i %input% == 2 goto 8GB
if /i %input% == 3 goto 12GB
if /i %input% == 4 goto 16GB
if /i %input% == 5 goto 24GB
if /i %input% == 6 goto 32GB
if /i %input% == 7 goto 48GB
if /i %input% == 8 goto 64GB
if /i %input% == 9 goto 128GB
if /i %input% == M cls & goto menu
if /i %input% == T start taskmgr 
if /i %input% == R goto revertram
) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu

:RedirectMenu
cls
goto :9

:revertram
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Disabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f

echo %w% - Enabling Page Combining%b%
chcp 437 >nul 2>&1
PowerShell -Command "Enable-MMAgent -PageCombining" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Enabling Paging Executive%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Prefetch and superfetch%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu


:4GB
chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "4194304" /f 

echo %w% - Disabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f

goto rest

:8GB
chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "8388608" /f 

echo %w% - Disabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f

goto rest

:12GB
chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "12582912" /f 

echo %w% - Disabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f

goto rest

:16GB

chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "16777216" /f 

echo %w% - Enabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f

goto rest

:24GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "25165824" /f 

echo %w% - Enabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f

goto rest

:32GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "33554432" /f 

echo %w% - Enabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f

goto rest

:48GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "50331648" /f 

echo %w% - Enabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f

goto rest

:64GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "67108864" /f 

echo %w% - Enabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f

goto rest

:128GB
chcp 437 >nul 2>&1
echo %w% - Disabling Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Setting Best SvcHostSplitThresholdInKB for your ram size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "134217728" /f 

echo %w% - Enabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f

goto rest

:rest

echo %w% - Disabling Page Combining%b%
chcp 437 >nul 2>&1
PowerShell -Command "Disable-MMAgent -PageCombining" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Disabling Paging Executive%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Prefetch and superfetch%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu




:g1
cls
echo.
echo.
echo.
echo.                                                              %p%███╗  ██╗██╗   ██╗██╗██████╗ ██╗ █████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%████╗ ██║██║   ██║██║██╔══██╗██║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%██╔██╗██║╚██╗ ██╔╝██║██║  ██║██║███████║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██║╚████║ ╚████╔╝ ██║██║  ██║██║██╔══██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║ ╚███║  ╚██╔╝  ██║██████╔╝██║██║  ██║  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚══╝   ╚═╝   ╚═╝╚═════╝ ╚═╝╚═╝  ╚═╝   ╚═════╝ ╚═╝      ╚═════╝ 

echo %w% - Applying korqedevTWEAKS Nvidia Profile Inspector Profile %g%(optimizes nvidia control panel 3D settings and much more) %b%
start "" /wait "C:\korqedev\nvidiaProfileInspector.exe" "C:\korqedev\Free NVPI korqedev Profile V7.nip" 

echo %w% - Forcing Contigous Memory Allocation %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Deleting GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removing Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Enabling MSI Mode on GPU if supported %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
)

echo %w%- Disabling HDCP%b%
			 for /f %%m in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
	for /f "tokens=3" %%a in ('Reg.exe query "HKLM\SYSTEM\ControlSet001\Enum\%%m" /v "Driver"') do (
		for /f %%m in ('echo %w%- %%a ^| findstr "{"') do (
		     Reg.exe add "HKLM\System\ControlSet001\Control\Class\%%m" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
                   )
                )
             )


 

echo %w%- Disabling Preemption%b%			 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f 


echo %w% - Setting NVIDIA Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f 
echo %w%- Latency Tolernace %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f

echo %w% - Disabling NVIDIA Telemetry%b%
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f 
schtasks /change /Disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /Disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
echo %w% - Deleting Nvidia Telemetry %b%	
rmdir /s /q "C:\Windows\System32\drivers\NVIDIA Corporation"
cd /d "C:\Windows\System32\DriverStore\FileRepository\"
dir NvTelemetry64.dll /a /b /s
del NvTelemetry64.dll /a /s
reg add "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f >nul 2>&1		 
timeout /t 3 /nobreak > NUL


goto hardwareacceleration


:g2
cls
echo.
echo.
echo.
echo.                                                              %p% █████╗ ███╗   ███╗██████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%██╔══██╗████╗ ████║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%███████║██╔████╔██║██║  ██║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██╔══██║██║╚██╔╝██║██║  ██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║  ██║██║ ╚═╝ ██║██████╔╝  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝    ╚═════╝ ╚═╝      ╚═════╝ 
timeout 1 /nobreak > NUL

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Deleting GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removing Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Enabling MSI Mode on GPU if supported %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
)
echo %w%- Disabling High-Bandwidth Digital Content Protection %g%(HDCP) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t REG_BINARY /d "0100000001000000" /f 

echo %w% - Disabling Display Refresh Rate Override%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "0" /f 

echo %w% - Disabling SnapShot%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Anti Aliasing%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "0" /f 

echo %w% - Disabling Subscriptions%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Anisotropic Filtering%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "0" /f 

echo %w% - Disabling Radeon Overlay%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "false" /f  

echo %w% - Enabling Adaptive DeInterlacing%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Adaptive De-interlacing" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Skins%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "false" /f  

echo %w% - Disabling Automatic Color Depth Reduction%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "0" /f 


echo %w% - Enabling De-Lag%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DeLagEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Disabling Frame Rate Target%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Disabling DMA%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledMACopy" /t REG_DWORD /d "1" /f 

echo %w% - Enabling BlockWrite%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Stutter Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f 

echo %w% - Disabling Preemption%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f

echo %w% - Setting Main3D%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f 

echo %w% - Setting FlipQueueSize%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_BINARY /d "3100" /f 

echo %w% - Setting Shader Cache Size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f 

echo %w% - Configuring TFQ%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f 

echo %w% - Disabling AMD Logging%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f 

echo %w%- Latency Tolernace %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
goto hardwareacceleration



:hardwareacceleration
cls
echo.
echo.  
echo.  
echo.                                                    %p% ██████╗ ██████╗ ██╗   ██╗  ██╗  ██╗ ██╗       ██╗ █████╗  █████╗ 
echo.                                                    %p%██╔════╝ ██╔══██╗██║   ██║  ██║  ██║ ██║  ██╗  ██║██╔══██╗██╔══██╗
echo.                                                    %p%██║  ██╗ ██████╔╝██║   ██║  ███████║ ╚██╗████╗██╔╝███████║██║  ╚═╝
echo.                                                    %p%██║  ╚██╗██╔═══╝ ██║   ██║  ██╔══██║  ████╔═████║ ██╔══██║██║  ██╗
echo.                                                    %p%╚██████╔╝██║     ╚██████╔╝  ██║  ██║  ╚██╔╝ ╚██╔╝ ██║  ██║╚█████╔╝
echo.                                                    %p% ╚═════╝ ╚═╝      ╚═════╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝  ╚═╝ ╚════╝   
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                
echo.                                                            %p%[%w%1%p%]%w% GPU Hardware Acceleration Off %g%(Recommended)
echo.  
echo.                                                            %p%[%w%2%p%]%w% GPU Hardware Acceleration On %g%(Default)
echo. 
echo.                                                                                         
echo.                                                                          %p%[%w%M%p%]%w% Back to menu   
echo.                     
echo.
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                          %W%Enables/Disables Gpu hardware Accelerated Schedueling, in most cases its better disabled
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
echo. 

set /p input=:
if /i %input% == 1 goto hwacoff
if /i %input% == 2 goto hwacon
if /i %input% == M CLS & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect 

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenue
:RedirectMenu
cls
goto :hardwareacceleration

:HWACon
echo %w%- Enabling Hardware Acceleration %b% 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
echo.
echo.
echo.
echo.                                              %b%"═══════════════════════════════════════════════════════"
echo.                                                %w%  Operation Completed, Press any key to continue...  
echo.                                              %b%"═══════════════════════════════════════════════════════"
pause > nul
cls
goto menu

:HWACoff
echo %w%- Disabling Hardware Acceleration %b% 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 1 /f
echo.
echo.
echo.
echo.                                              %b%"═══════════════════════════════════════════════════════"
echo.                                                %w%  Operation Completed, Press any key to continue...  
echo.                                              %b%"═══════════════════════════════════════════════════════"
pause > nul
cls
goto menu





:k1
cls
echo.
echo.
echo.
echo.=
echo.                                                                           %p%███╗   ███╗ █████╗ ██╗   ██╗ ██████╗███████╗   █████╗ ███╗  ██╗██████╗   ██╗  ██╗██████╗ 
echo.                                                                           %p%████╗ ████║██╔══██╗██║   ██║██╔════╝██╔════╝  ██╔══██╗████╗ ██║██╔══██╗  ██║ ██╔╝██╔══██╗
echo.                                                                           %p%██╔████╔██║██║  ██║██║   ██║╚█████╗ █████╗    ███████║██╔██╗██║██║  ██║  █████═╝ ██████╦╝
echo.                                                                           %p%██║╚██╔╝██║██║  ██║██║   ██║ ╚═══██╗██╔══╝    ██╔══██║██║╚████║██║  ██║  ██╔═██╗ ██╔══██╗
echo.                                                                           %p%██║ ╚═╝ ██║╚█████╔╝╚██████╔╝██████╔╝███████╗  ██║  ██║██║ ╚███║██████╔╝  ██║ ╚██╗██████╦╝
echo.                                                                           %p%╚═╝     ╚═╝ ╚════╝  ╚═════╝ ╚═════╝ ╚══════╝  ╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝   ╚═╝  ╚═╝╚═════╝ 
echo.
echo.
echo.
echo.
echo %w% - Disabling Filter Keys %g%(the filterkeys app is completely useless placebo, dont use it)%b%
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
echo %w% - Disabling Toggle Keys%b%
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
echo %w% - Disabling Sticky Keys%b%
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
echo %w% - Disabling Mouse Keys%b%
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f

echo %w% - Disabling Mouse Acceleration%b%
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f

echo %w% - Enabling 1:1 Pixel Mouse Movements%b%
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f

echo %w% - Reducing Keyboard Repeat Delay%b%
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f

echo %w% - Increasing Keyboard Repeat Rate%b%
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto kbm,

:3
:kbm
cls
echo.
echo.
echo.                                                           %p% ██╗  ██╗██████╗ ███╗   ███╗
echo.                                                           %p% ██║ ██╔╝██╔══██╗████╗ ████║
echo.                                                           %p% █████═╝ ██████╦╝██╔████╔██║
echo.                                                           %p% ██╔═██╗ ██╔══██╗██║╚██╔╝██║
echo.                                                           %p% ██║ ╚██╗██████╦╝██║ ╚═╝ ██║
echo.                                                           %p% ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝    
echo.                                        %b%"═══════════════════════════════════════════════════════════════"%w%                    
echo.                                                                                          
echo.                                                      %p%[%w%1%p%]%w% Apply KBM Registry Optimizations       
echo.                                                                                           
echo.                                                      %p%[%w%2%p%]%w% Set KBM Data Queue Size   
echo.
echo.                                                      %p%[%w%3%p%]%w% Apply Usb Optimizations
echo.                                                                                          
echo.                                                                                            
echo.                                                              %p%[%w%M%p%]%w% Back to menu   
echo.
echo.                                                              %p%[%w%R%p%]%w% Revert  
echo.                                                                                            
echo.                                        %b%"════════════════════════════════════════════════════════════════"
echo.                                        %w% Optimizes a bunch of mouse and keyboard related registry settings
echo.                                        %b%"════════════════════════════════════════════════════════════════"
echo.

set /p input=:
if /i %input% == 1 goto k1
if /i %input% == 2 goto k2
if /i %input% == 3 goto k3
if /i %input% == r goto revertkeyboard
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :kbm

:revertkeyboard
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
 
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /f 
)


echo %w% - Thread Priority%b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /f
echo %w% - Enabling USB Selective Suspend%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "0" /f 


echo %w% - Enabing MSI mode on usb%b%
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID') do set "str=%%i" & (
echo %w% - DEL USB Device Priority %b%
Reg.exe delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f
echo %w% -Enabling MSI Mode on USB %b%
Reg.exe delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /f
)

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "256" /f

Reg.exe delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /f

Reg.exe delete "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /f

Reg.exe delete "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /f

Reg.exe delete "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /f

Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f

Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "10" /f

Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:k3
echo %w% - Disabling USB PowerSavings%b%
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f 

)


echo %w% - Thread Priority%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f

echo %w% - Disabling USB Selective Suspend%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "1" /f 


echo %w% - Enabing MSI mode on usb%b%
echo %w% - Deleting USB Device Priority %g%(may show an error if you have it deleted already) %b%
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID') do set "str=%%i" & (
Reg.exe delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
)

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu


:k2
cls
echo.
echo.
echo.

echo.                                                                         %p% ██╗  ██╗██████╗ ███╗   ███╗
echo.                                                                         %p% ██║ ██╔╝██╔══██╗████╗ ████║
echo.                                                                         %p% █████═╝ ██████╦╝██╔████╔██║
echo.                                                                         %p% ██╔═██╗ ██╔══██╗██║╚██╔╝██║
echo.                                                                         %p% ██║ ╚██╗██████╦╝██║ ╚═╝ ██║
echo.                                                                         %p% ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"   
echo.                                                                                                                       
echo.                                         %p%[%w%1%p%]%w% 13 %G%(High end CPU)                %p%[%w%2%p%]%w% 18 %g%(Mid end CPU)               %p%[%w%3%p%]%w% 22 %g% (Low end CPU)                 
echo.                                                                                                                                                                                        
echo.                                                                                                                      
echo.                                         %p%%p%%p%%p%                                      %p%[%w%T%p%]%w% Open Task Manager                                     
echo.                                                                                                                       
echo.                                         %p%%p%%p%%p%                                      %p%[%w%M%p%]%w% Back to Menu                  
echo.                                                                                          
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                                         %w% The lower the value, the less peripheral latency you will have
echo.                                                 %w% But it may cause KBM stutters and lag on lower end pc's if the value is too high
echo.
echo.                                           %w% Comment Your CPU under the tutorial youtube video, and we will tell you which value to use
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.
set /p input=: 
if /i %input% == 1 goto 13v
if /i %input% == 2 goto 18v
if /i %input% == 3 goto 22v
if /i %input% == T start taskmgr & goto k2
if /i %input% == M cls & goto KBM

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 
goto Redirectmouse

:Redirectmouse
cls
goto 3

:13v
echo %w% - 13 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "19" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "19" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto 3

:18v
echo %w% - 18 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "24" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "24" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto 3


:22v
echo %w% - 22 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "34" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "34" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto 3






:6
:clean
cls
echo.
echo.
echo.                                                 %p% █████╗ ██╗     ███████╗ █████╗ ███╗  ██╗  
echo.                                                 %p%██╔══██╗██║     ██╔════╝██╔══██╗████╗ ██║
echo.                                                 %p%██║  ╚═╝██║     █████╗  ███████║██╔██╗██║      
echo.                                                 %p%██║  ██╗██║     ██╔══╝  ██╔══██║██║╚████║ 
echo.                                                 %p%╚█████╔╝███████╗███████╗██║  ██║██║ ╚███║    
echo.                                                 %p% ╚════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚══╝      
echo.                                        %b%"══════════════════════════════════════════════════════════════════"%w%                
echo.                                                                                                       
echo.                                          %p%[%w%1%p%]%w% Clean Temporary Device Data             %p%[%w%2%p%]%w% Windows Clean Manager   
echo. 
echo.                                                                                                                                                                
echo.                                            %p%%p%%p%%p%                       %p%[%w%M%p%]%w% Back to menu                               
echo.                                                                                    
echo.                                        %b%"═══════════════════════════════════════════════════════════════════"
echo.                                                    %W% Cleans a bunch of temporary data off your pc
echo.                                                  %W% Deletes old drivers, cache, logs and a lot more
echo.                                        %b%"═══════════════════════════════════════════════════════════════════"
echo. 
set /p input=:
if /i %input% == 1 goto c1
if /i %input% == 2 goto c2

if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto 6


:c1
cls
echo %w% -  Cleaning Useless Device Data...%b%
chcp 437 > nul
@echo on
POWERSHELL "$Devices = Get-PnpDevice | ? Status -eq Unknown;foreach ($Device in $Devices) { &\"pnputil\" /remove-device $Device.InstanceId }"
@echo off
chcp 65001 > nul
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto 6

:c2
cls
start cleanmgr.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu

:revertall
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo.
::bcd

echo %w% - Enabling Energy Logging + Power Telemetry%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "1" /f 

echo %w%- Enabling Link State Power Managment %b%
echo %w%- Enabling HIPM %b%
echo %w%- Enabling DIPM %b%
echo %w%- Enabling HDD Parking %b%
for %%i in (EnableHIPM EnableDIPM EnableHDDParking) do for /f %a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%i" ^| findstr "HKEY"') do Reg.exe add "%a" /v "%%i" /t REG_DWORD /d "1" /f
	
echo %w% - Enabling GPU Energy Driver%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Enabling CoalescingTimerInterval%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "1" /f  

echo %w% - Enabling Power Throttling%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "0" /f 

echo %w% - Restoring power plans%b%
powercfg –restoredefaultschemes

echo %w% - Enabling Fast Startup %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Hibernation%b%
powercfg /h on
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Sleep Study 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "0" /f 

echo %w% - Enabling StorPort Idle%b%
for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do Reg.exe add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "1" /f


echo %w% - Disabling Dynamic Tick%b%
bcdedit /set Disabledynamictick yes >nul 2>&1
echo %w% - Disabling High Precision Event Timer (HPET)%b%
bcdedit /deletevalue useplatformclock  >nul 2>&1
echo %w% - Disabling Synthetic Timers%b%
bcdedit /set useplatformtick yes  >nul 2>&1 


echo %w% - MMCSS Priority For Low Latency%b%
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /f

Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /f

echo %w% - Setting Win32Priority%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "10" /f 

echo %w% - Decreasing process kill time and menu show delay%b%
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f

echo %w% - Setting IO Time Stamp%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "1" /f 

echo %w% - Settings Csrss to default%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "2" /f 

echo %w% - Setting Latency Tolerance%b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /f 

echo %w% - Setting System Responsiveness%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "14" /f 

echo %w% - Enabling Biometrics%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f

echo %w% - Enabling Game mode%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f

echo %w% - Optimizing Windows Search%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\Software\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DoNotUseWebResults" /t REG_DWORD /d "0" /f

echo %w% - Track Only Important Failure Events %b%
Auditpol /set /subcategory:"Process Termination" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"RPC Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Filtering Platform Connection" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"DPAPI Activity" /failure:Disable /failure:Disable >nul 2>&1 
Auditpol /set /subcategory:"IPsec Driver" /success:	 /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Other System Events" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security State Change" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"Security System Extension" /failure:Disable /failure:Enable >nul 2>&1 
Auditpol /set /subcategory:"System Integrity" /failure:Disable /failure:Enable >nul 2>&1 
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "1" /f

echo %w% - Enabling Windows Insider Experiments%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Activity feed%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "1" /f

echo %w% - Enabling Automatic Maintenance%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Notifications%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "0" /f

echo %w%- Enabling Shared Experiences %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "1" /f

echo %w% - Disabling Setting Synchronization%b%
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t Reg_DWORD /d "5" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t Reg_DWORD /d ""0"" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t Reg_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t Reg_DWORD /d "0" /f 
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t Reg_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t Reg_DWORD /d "0" /f

echo %w%- Dont Stop Reinstalling Preinstalled apps %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "1 /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "1" /f

echo %w%- Enabling Background Apps %b%
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "2" /f 

echo %w%- Enabling Transparency %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "1" /f
  
echo %w% - Enabling GameMode%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Reverting Combaility Settings%b%
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AllowTelemetry" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableEngine" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "0" /f

echo %w% - Enabling IoLatencyCap%b%
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
	REG ADD "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >NUL 2>&1

	FOR /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
		SET STR=!STR:\Parameters=!
		ECHO Setting IoLatencyCap to 0 in !STR!
	)
)

echo %w% - Enabling DmaRemapping%b%
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy" /v "value" /t REG_DWORD /d "2" /f
for /f %%i in ('reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /s /f DmaRemappingCompatible ^| find /i "Services\" ') do (
	echo %%i...
	Reg.exe add "%%i" /v "DmaRemappingCompatible" /t REG_DWORD /d "1" /f
)

echo %w% - Redownload default windows apps %g%(Errors may show, thats because the app that the command is trying to install is already installed, so dont worry)%b%
chcp 437 > nul
Powershell -Command "Get-AppxPackage -allusers | foreach {Add-AppxPackage -register “$($_.InstallLocation)\appxmanifest.xml” -DisabledevelopmentMode}"

powershell:Start-Process -FilePath winget -ArgumentList "install --force  --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow
chcp 65001 > nul

:: Addons
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF90-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF91-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{2933BF94-7B36-11D2-B20E-00C04F983E60}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{333C7BC4-460F-11D0-BC04-0080C7055A83}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{373984C9-B845-449B-91E7-45AC83036ADE}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{6BF52A52-394A-11D3-B153-00C04F79FAA6}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2049-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{884E2051-217D-11DA-B2A4-000E7BBB2B09}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A05-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A06-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A07-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A08-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{88D96A0A-F192-11D4-A65F-0040963251E5}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{D2517915-48CE-4286-970F-921E881B8C5C}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{EE09B103-97E0-11CF-978F-00A02463E06F}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F32-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F33-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F34-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F35-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F36-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F5078F39-C551-11D3-89B9-0000F81FE221}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}" /v "Version" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF90-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF91-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{2933BF94-7B36-11D2-B20E-00C04F983E60}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{3050F819-98B5-11CF-BB82-00AA00BDCE0B}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{333C7BC4-460F-11D0-BC04-0080C7055A83}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{373984C9-B845-449B-91E7-45AC83036ADE}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{6BF52A52-394A-11D3-B153-00C04F79FAA6}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2049-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{884E2051-217D-11DA-B2A4-000E7BBB2B09}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A05-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A06-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A07-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A08-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{88D96A0A-F192-11D4-A65F-0040963251E5}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{8E4062D9-FE1B-4B9E-AA16-5E8EEF68F48E}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{D2517915-48CE-4286-970F-921E881B8C5C}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{EE09B103-97E0-11CF-978F-00A02463E06F}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F32-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F33-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F34-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F35-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F36-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F5078F39-C551-11D3-89B9-0000F81FE221}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F12-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Ext\Stats\{F6D90F14-9C73-11D3-B32E-00C04F990BB4}\iexplore" /v "Flags" /f >nul 2>&1

::DnsPriority
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /f >nul 2>&1

::Network Throttling Index
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /f >nul 2>&1

:: MaxUserPort, TcpTimedWaitDelay, and DefaultTTL
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /f >nul 2>&1

::TCP Hueretics
netsh int tcp set heuristics Enabled >nul 2>&1

:: TCP settings and MTU with netsh
netsh int tcp set supplemental internet congestionprovider=default >nul 2>&1
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1492 store=persistent >nul 2>&1
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1280 store=persistent >nul 2>&1
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent >nul 2>&1
netsh interface ipv6 set subinterface "Ethernet" mtu=1280 store=persistent >nul 2>&1

:: Active Probing
Reg.exe add "HKLM\System\ControlSet001\services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 1 /f >nul 2>&1

chcp 65001 >nul 2>&1
:: Disable Task Offloads
netsh int ip set global taskoffload=enabled >nul 2>&1

::  offload and network settings 
chcp 437 >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing enabled >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling enabled >nul 2>&1
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney enabled >nul 2>&1
PowerShell.exe Enable-NetAdapterLso -Name * >nul 2>&1
PowerShell.exe Enable-NetAdapterChecksumOffload -Name * >nul 2>&1
chcp 65001 >nul 2>&1

:: Re-enable Nagle's Algorithm, reset Interface Metric
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (
    Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v InterfaceMetric /f
    Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /f
    Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /f
    Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /f
)>nul 2>&1

:: MLD
netsh int ip set global dhcpmediasense=enabled >nul 2>&1
netsh int ip set global mediasenseeventlog=enabled >nul 2>&1
netsh int ip set global mldlevel=default >nul 2>&1
netsh int ip set global icmpredirects=enabled >nul 2>&1
netsh int tcp set global chimney=disabled >nul 2>&1
netsh int tcp set global dca=disabled >nul 2>&1
netsh int tcp set global netdma=enabled >nul 2>&1
netsh int tcp set global rsc=enabled >nul 2>&1
netsh int tcp set global maxsynretransmissions=5 >nul 2>&1
netsh int tcp set global timestamps=enabled >nul 2>&1
netsh int tcp set global ecncapability=enabled >nul 2>&1
netsh int tcp set heuristics enabled >nul 2>&1
netsh int tcp set heuristics wsh=enabled >nul 2>&1
netsh int tcp set security mpp=enabled >nul 2>&1
netsh int tcp set security profiles=enabled >nul 2>&1

for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
    Reg.exe delete "%%n" /v "AdvancedEEE" /f
    Reg.exe delete "%%n" /v "*EEE" /f
    Reg.exe delete "%%n" /v "EEE" /f
    Reg.exe delete "%%n" /v "EnablePME" /f
    Reg.exe delete "%%n" /v "EEELinkAdvertisement" /f

    Reg.exe delete "%%n" /v "AutoPowerSaveModeEnabled" /f
    Reg.exe delete "%%n" /v "DisableDelayedPowerUp" /f
    Reg.exe delete "%%n" /v "AutoDisableGigabit" /f
    Reg.exe delete "%%n" /v "EnableGreenEthernet" /f
    Reg.exe delete "%%n" /v "EnableSavePowerNow" /f
    Reg.exe delete "%%n" /v "EnablePowerManagement" /f
    Reg.exe delete "%%n" /v "NicAutoPowerSaver" /f
    Reg.exe delete "%%n" /v "PowerDownPll" /f
    Reg.exe delete "%%n" /v "PowerSavingMode" /f
    Reg.exe delete "%%n" /v "ReduceSpeedOnPowerDown" /f
    Reg.exe delete "%%n" /v "S5NicKeepOverrideMacAddrV2" /f

    Reg.exe delete "%%n" /v "EnableDynamicPowerGating" /f
    Reg.exe delete "%%n" /v "EnableConnectedPowerGating" /f

    Reg.exe delete "%%n" /v "GigaLite" /f
    Reg.exe delete "%%n" /v "ULPMode" /f

    Reg.exe delete "%%n" /v "EnableWakeOnLan" /f
    Reg.exe delete "%%n" /v "WakeOnDisconnect" /f
    Reg.exe delete "%%n" /v "*WakeOnMagicPacket" /f
    Reg.exe delete "%%n" /v "S5WakeOnLan" /f
    Reg.exe delete "%%n" /v "*WakeOnPattern" /f
    Reg.exe delete "%%n" /v "WakeOnLink" /f
    Reg.exe delete "%%n" /v "WolShutdownLinkSpeed" /f

    Reg.exe delete "%%n" /v "JumboPacket" /f

    Reg.exe delete "%%n" /v "TransmitBuffers" /f
    Reg.exe delete "%%n" /v "ReceiveBuffers" /f

    Reg.exe delete "%%n" /v "IPChecksumOffloadIPv4" /f
    Reg.exe delete "%%n" /v "LsoV1IPv4" /f
    Reg.exe delete "%%n" /v "LsoV2IPv4" /f
    Reg.exe delete "%%n" /v "LsoV2IPv6" /f
    Reg.exe delete "%%n" /v "PMARPOffload" /f
    Reg.exe delete "%%n" /v "PMNSOffload" /f
    Reg.exe delete "%%n" /v "TCPChecksumOffloadIPv4" /f
    Reg.exe delete "%%n" /v "TCPChecksumOffloadIPv6" /f
    Reg.exe delete "%%n" /v "UDPChecksumOffloadIPv6" /f
    Reg.exe delete "%%n" /v "UDPChecksumOffloadIPv4" /f

    Reg.exe delete "%%n" /v "RSS" /f
	Reg.exe delete "%%n" /v "*FlowControl" /f 
	Reg.exe delete "%%n" /v "FlowControlCap" /f
	Reg.exe delete "%%n" /v "RxAbsIntDelay" /f 
	Reg.exe delete "%%n" /v "TxIntDelay" /f 
	Reg.exe delete "%%n" /v "TxAbsIntDelay" /f 
	Reg.exe delete "%%n" /v "FatChannelIntolerant" /f 
)

netsh int tcp set global autotuninglevel=normal

echo %w% - Enabling SSD Power Savings %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitLatencyMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdlePowerMw" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitEnergyMicroJoules" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitLatencyMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdlePowerMw" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleTimeLengthMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitEnergyMicroJoules" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitLatencyMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdlePowerMw" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleTimeLengthMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitEnergyMicroJoules" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitLatencyMs" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdlePowerMw" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleTimeLengthMs" /t REG_DWORD /f 

echo %w% - NFTS Tweaks%b%
fsutil behavior set memoryusage 1 >nul 2>&1
fsutil behavior set mftzone 1 >nul 2>&1
fsutil behavior set Disablinglastaccess 1 >nul 2>&1
fsutil behavior set Disabledeletenotify 1 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1

echo %w% - User Write Cache %b%
For /f "Delims=" %%k in ('Reg.exe Query HKLM\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
Reg.exe delete "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /f 
Reg.exe add "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /t REG_DWORD /d 1 /f
)

echo %w%- Reverting Intel-Specific CPU Tweaks %b%
bcdedit /deletevalue allowedinmemorysettings
bcdedit /deletevalue isolatedcontext

echo %w%- Reverting Distribute Timers %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /f

echo %w%- Reverting TSX %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /f

echo %w%- Reverting Even Processor %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /f

echo %w%- Reverting CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Logical Processors %b%
bcdedit /deletevalue {current} numproc

echo %w%- Reverting C-States %b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Higher P-States on Lower C-States %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 0
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Core Parking %b%
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 10
powercfg /setactive SCHEME_CURRENT

echo %w%- Reverting Throttle States %b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "5" /f

echo %w%- Fair Share CPU Scheduling %b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v EnableCpuQuota /f

echo %w% Revert Processor Performance Time Check Interval %b%
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 15
Powercfg -setactive scheme_current

echo %w% - Enabling Gamdvr%b%
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "1" /f

echo %w% - Enabling Xbox Services%b%
sc config xbgm start= demand >nul 2>&1
sc config XblAuthManager start= auto
sc config XblGameSave start= manual
sc config XboxGipSvc start= demand
sc config XboxNetApiSvc start= demand

echo %w% - Enabling Isolation Memory Integrity%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling HVCIMAT%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "1" /f 
echo %w% - Enabling ExceptionChainValidation%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Sehop%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "1" /f
echo %w% - Enabling CFG%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Protection Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "1" /f 
echo %w% - Enabling Spectre And Meltdown%b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /f
echo %w% - Enabling Address Space Layout Randomization%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f  

echo %w% - Enabling Hyper-V%b%
sc config HvHost start=auto
sc config vmickvpexchange start=auto 
sc config vmicguestinterface start=auto
sc config vmicshutdown start=auto
sc config vmicheartbeat start=auto 
sc config vmicvmsession start=auto
sc config vmicrdv start=auto
sc config vmictimesync start=auto
sc config vmicvss start=auto
bcdedit /set hypervisorlaunchtype auto

echo %w% - Enabling Telemetry%b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /enable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask"
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /enable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /enable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /enable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /enable
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy"
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /enable
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT"
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /enable
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent"
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /enable
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /enable
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /enable
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics"
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /enable
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks"
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /enable
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /enable
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific"
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" /enable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack" /enable
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat"
schtasks /change /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" /enable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /enable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime"
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /enable
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
schtasks /change /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /enable
schtasks /end /tn "\Microsoft\Windows\Device Information\Device"
schtasks /change /tn "\Microsoft\Windows\Device Information\Device" /enable

echo %w% - Enabling Autologgers%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnabled" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Printing and maps Services  %b%
sc config MapsBroker start= enabled
sc config PrintNotify start= enabled
sc config Spooler start= enabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /enable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /enable 

echo %w% - Enabling Office Telemetry%b%
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "SendTelemetry" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "qmEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Firstrun" /v "Disablemovie" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableFileObfuscation" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "0" /f

echo %w% - Enabling Biometrics%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "2" /f

echo %w% - Enabling Microsoft store%b%
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 1 /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d 1 /f 
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d 1 /f 

for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /f 
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /f 
)


echo %w% - Thread Priority%b%
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /f
echo %w% - Enabling USB Selective Suspend%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "0" /f 


echo %w% - Enabing MSI mode on usb%b%
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID') do set "str=%%i" & (
echo %w% - DEL USB Device Priority %b%
Reg.exe delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f
echo %w% -Enabling MSI Mode on USB %b%
Reg.exe delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /f
)

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "256" /f

Reg.exe delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /f

Reg.exe delete "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /f

Reg.exe delete "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /f

Reg.exe delete "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /f

Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f

Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "10" /f

Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f

chcp 437 >nul 2>&1
echo %w% - Enabling Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Disabling Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f

echo %w% - Enabling Page Combining%b%
chcp 437 >nul 2>&1
PowerShell -Command "Enable-MMAgent -PageCombining" > nul 2>&1
chcp 65001 >nul 2>&1

echo %w% - Enabling Paging Executive%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Prefetch and superfetch%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "1" /f

:rp6
cls
echo.
echo.
echo.                                                     %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                     %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                     %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                     %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                     %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                     %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                           %p%[%w%1%p%]%w% Enable NVIDIA GPU Power saving features                             
echo.                                                                                            
echo.                                           %p%[%w%2%p%]%w% Enable AMD GPU Power saving features                                
echo.                                                                                          
echo.                                           %p%[%w%3%p%]%w% Enable Intel GPU Power saving features                           
echo.                                                                     
echo.                      
echo.                                                       %p%[%w%T%p%]%w% Open Task Manager                           
echo.                                                                                                                                                                                     
echo.                                                       %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                                                     
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.                                                 %w% Select which type of Gpu you have:  
echo.                                                   %W%Enables GPU Power Saving features
echo.                                        %b%"══════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 goto rpg1
if /i %input% == 2 goto rpg2
if /i %input% == 3 goto rpg3
if /i %input% == T start taskmgr & goto p6
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu

:RedirectMenu
cls
goto rp6

:rpg1
:rpg3
echo %w%- Enabling GpuEnergy Driver %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto :revertallgpu

:pg2
echo %w% - Enabling GPU Memory Clock Sleep State%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "0" /f 

echo %w% - Enabling Thermal Throttling%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling GPU Power Down%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "0" /f 

echo %w%- Enabling GpuEnergy Driver %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f

echo %w% - Enabling Power Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledrmdmaPowerGating" /t REG_DWORD /d "0" /f 

echo %w% - Enabling VCESW Clock Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Enabling UVD Clock Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Active State Power Management %g%(ASPM)%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Ultra Low Power States %g%(ULPS) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "1" /f 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto :revertallgpu


:revertallgpu
cls
echo.
echo.
echo.                                                      %p%   ██████╗ ██████╗ ██╗   ██╗         
echo.                                                      %p%  ██╔════╝ ██╔══██╗██║   ██║        
echo.                                                      %p%  ██║  ██╗ ██████╔╝██║   ██         
echo.                                                      %p%  ██║  ╚██╗██╔═══╝ ██║   ██║        
echo.                                                      %p%  ╚██████╔╝██║     ╚██████╔╝        
echo.                                                      %p%   ╚═════╝ ╚═╝      ╚═════╝         
echo.                                        %b%"═══════════════════════════════════════════════════════════"%w%  
echo.                                                                          
echo.                                                     %p%[%w%1%p%]%w% Revert NVIDIA GPU Optimizations                             
echo.                                                                                            
echo.                                                     %p%[%w%2%p%]%w% Revert AMD GPU Optimizations                                
echo.                                                                                          
echo.                                                     %p%[%w%3%p%]%w% Revert Intel GPU Optimizations                           
echo.                                                                     
echo.                                                                                                                                                                                                          
echo.                                                             %p%[%w%M%p%]%w% Back to menu    
echo.                           
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.                                                     %w% Select which type of Gpu you have:  
echo. 
echo.                                               %W%  Reverts gpu tweaks made by the korqedev free utility
echo.                                        %b%"═════════════════════════════════════════════════════════════"
echo.
set /p input=:
if /i %input% == 1 goto rg1
if /i %input% == 2 goto rg2
if /i %input% == 3 goto rg3
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto revertgpu

:rg3
cls
echo.
echo.
echo.                                                       %p%   ██╗███╗  ██╗████████╗███████╗██╗        ██████╗ ██████╗ ██╗   ██╗
echo.                                                       %p%   ██║████╗ ██║╚══██╔══╝██╔════╝██║       ██╔════╝ ██╔══██╗██║   ██║
echo.                                                       %p%   ██║██╔██╗██║   ██║   █████╗  ██║       ██║  ██╗ ██████╔╝██║   ██║
echo.                                                       %p%   ██║██║╚████║   ██║   ██╔══╝  ██║       ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                       %p%   ██║██║ ╚███║   ██║   ███████╗███████╗  ╚██████╔╝██║     ╚██████╔╝  
echo.                                                       %p%   ╚═╝╚═╝  ╚══╝   ╚═╝   ╚══════╝╚══════╝   ╚═════╝ ╚═╝      ╚═════╝ 
echo.
echo.

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Deleting GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removing Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Disabling MSI Mode on GPU if supported %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "0" /f
)

echo %w% - Reverting Intel Gpu Tweaks%b%
for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (

	Reg.exe add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "AdaptiveVsyncEnabled" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "1" /f
)
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :menu

:rg2
:g2
cls
echo.
echo.
echo.
echo.                                                              %p% █████╗ ███╗   ███╗██████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%██╔══██╗████╗ ████║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%███████║██╔████╔██║██║  ██║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██╔══██║██║╚██╔╝██║██║  ██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║  ██║██║ ╚═╝ ██║██████╔╝  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝    ╚═════╝ ╚═╝      ╚═════╝ 
timeout 1 /nobreak > NUL

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Deleting GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removing Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Disabling MSI Mode on GPU if supported %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "0" /f
)

echo %w% - Enabling Display Refresh Rate Override%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "1" /f 

echo %w% - Enabling SnapShot%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Anti Aliasing%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "1" /f 

echo %w% - Enabling Subscriptions%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Anisotropic Filtering%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "1" /f 

echo %w% - Enabling Radeon Overlay%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "true" /f  


echo %w% - Enabling Skins%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "true" /f  

echo %w% - Enabling Automatic Color Depth Reduction%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "1" /f 

echo %w% - Enabling Frame Rate Target%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Enabling DMA%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisabledMACopy" /t REG_DWORD /d "1" /f 

echo %w% - Enabling BlockWrite%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "1" /f 
 
echo %w% - Enabling Preemption%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f

echo %w% - Enabling AMD Logging%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Reverting Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "0" /f

echo %w%- Enabling Hardware Acceleration %b% 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :menu

:rg1
cls
echo.
echo.
echo.
echo.                                                              %p%███╗  ██╗██╗   ██╗██╗██████╗ ██╗ █████╗    ██████╗ ██████╗ ██╗   ██╗
echo.                                                              %p%████╗ ██║██║   ██║██║██╔══██╗██║██╔══██╗  ██╔════╝ ██╔══██╗██║   ██║
echo.                                                              %p%██╔██╗██║╚██╗ ██╔╝██║██║  ██║██║███████║  ██║  ██╗ ██████╔╝██║   ██║
echo.                                                              %p%██║╚████║ ╚████╔╝ ██║██║  ██║██║██╔══██║  ██║  ╚██╗██╔═══╝ ██║   ██║
echo.                                                              %p%██║ ╚███║  ╚██╔╝  ██║██████╔╝██║██║  ██║  ╚██████╔╝██║     ╚██████╔╝
echo.                                                              %p%╚═╝  ╚══╝   ╚═╝   ╚═╝╚═════╝ ╚═╝╚═╝  ╚═╝   ╚═════╝ ╚═╝      ╚═════╝ 

echo %w% - Reverting Contigous Memory Allocation %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "0" /f

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Deleting GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removing Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Disabling MSI Mode on GPU if supported %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "0" /f
)

echo %w%- Enabling HDCP%b%
			 for /f %%m in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
	for /f "tokens=3" %%a in ('Reg.exe query "HKLM\SYSTEM\ControlSet001\Enum\%%m" /v "Driver"') do (
		for /f %%m in ('echo %w%- %%a ^| findstr "{"') do (
		     Reg.exe add "HKLM\System\ControlSet001\Control\Class\%%m" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "0" /f
                   )
                )
             )


 

echo %w% - Enabling Preemption%b%

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "1" /f


echo %w% - Reverting NVIDIA Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "0" /f 
echo %w% - Reverting Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "0" /f

goto echo %w%- Enabling Hardware Acceleration %b% 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto :menu


