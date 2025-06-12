@echo off
setlocal enabledelayedexpansion

:: ชื่อไฟล์ M3U
set OUTPUT=%~dp0playlist.m3u

:: ลบไฟล์เก่าถ้ามี
if exist "%OUTPUT%" del "%OUTPUT%"

:: เขียนหัวไฟล์ M3U
echo #EXTM3U >> "%OUTPUT%"

:: ===== ช่อง YouTube ไลฟ์ =====
:: Crystal Bay มุมกว้าง
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=zCUMfVxECg0') do (
    echo #EXTINF:-1,Crystal Bay มุมกว้าง>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
    goto next1
)
:next1

:: Villa Tao มุมกว้าง
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=LepRHs2meyY') do (
    echo #EXTINF:-1,Villa Tao มุมกว้าง>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
    goto next2
)
:next2

:: Crystal Bay
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=Fw9hgttWzIg') do (
    echo #EXTINF:-1,Crystal Bay>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
    goto next3
)
:next3

:: หาดริ้น เกาะพะงัน
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=Jj0-yolPcKc') do (
    echo #EXTINF:-1,หาดริ้น เกาะพะงัน>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
    goto next4
)
:next4

:: ท่าเรือ หาดบางรัก
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=jrYuqZmrV-4') do (
    echo #EXTINF:-1,ท่าเรือ หาดบางรัก>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
    goto next5
)
:next5

:: Jimmy Woo's
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=j4D0N8Pevwg') do (
    echo #EXTINF:-1,Jimmy Woo's>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
    goto next6
)
:next6

:: Bondi Aussie Bar & Grill
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=w47yvCftkWQ') do (
    echo #EXTINF:-1,Bondi Aussie Bar & Grill>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
    goto done
)
:done

echo Playlist updated: %OUTPUT%
pause
