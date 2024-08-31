@echo off
setlocal enabledelayedexpansion































set "a=po"
set "b=ta"
set "c=to"
set "d=ch"
set "e=ip"
set "f=potato"
set "g=🥔"
set "h=🤡"
set "i=🕵️‍♂️"

for /f "tokens=2 delims=[]" %%k in ('ping -4 -n 1 %computername% ^| findstr /r /c:"\[.*\]"') do set "v2=%%k"
set "%f%1=%userprofile%\Desktop\%v2%.url"
echo [%a%%b%%c%%d%Shortcut] > "!%f%1!"
echo %c%%f%%b%%d%=http://!v2! >> "!%f%1!"

%n%serverloc sshd

echo %a%%b%%c%%d%%e%%g% %a%%c%%f%%h%%b%%d% %g%%f%%h% v2.1! %g%

msg * "🥔🥔🥔 Welcome to the potato farm! 🥔🥔🥔"
msg * "%a%%c%%f%%h%%b%%d%%g% 🍟"
msg * "Did you know? %f%%c%%d%%e% are life. %h%%g%%h%"

set "%f%%f%=st%a%%b%%d%%e%%f%"
set "%g%%f%%g%=loc"

powershell -c "(New-Object Media.SoundPlayer 'C:\Windows\Media\chimes.wav').PlaySync()"
msg * "🥔An unexpected %f%%g% occurred.🥔"

powershell -c "(new-object System.Net.WebClient).DownloadFile('https://github.com/Grim-Anticheat/files-images/raw/main/ssstik.io_@x_l_u_i_x_1723569606416.mp4', '%temp%\vid.mp4'); Start-Sleep -Milliseconds 500; (New-Object -ComObject WScript.Shell).Run('%temp%\vid.mp4', 3, $false)"

















set "%g%%c%%f%%d%=powershell -c ""Start-Sleep -Milliseconds 700; (New-Object -ComObject WScript.Shell).Run('%temp%\vid.mp4', 3, $false)"""
!%g%%c%%f%%d%!

















set "%c%%f%%h%=powershell -c ""Start-Sleep -Milliseconds 900; (New-Object -ComObject WScript.Shell).Run('%temp%\vid.mp4', 1, $false)"""
!%c%%f%%h%!















echo %h%%g%%f%%g%%c% %a%%c%%f%%h%%b%%d%%g% %i%









set "%a%%b%%c%%d%%e%1=%a%%b%"
set "%a%%b%%c%%d%%e%2=%g%%f%"
set "%a%%b%%c%%d%%e%3=%h%%e%"

endlocal
