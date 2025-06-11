@echo off
setlocal enabledelayedexpansion

:: ชื่อไฟล์ M3U
set OUTPUT=%~dp0playlist.m3u

:: ลบไฟล์เก่า
if exist "%OUTPUT%" del "%OUTPUT%"

:: เขียนหัวไฟล์
echo #EXTM3U >> "%OUTPUT%"

:: ท่าเรือ หาดบางรัก
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=jrYuqZmrV-4') do (
    echo #EXTINF:-1,ท่าเรือ หาดบางรัก>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
)

:: Jimmy Woo's
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=j4D0N8Pevwg') do (
    echo #EXTINF:-1,Jimmy Woo's>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
)

:: Crystal Bay
for /f "delims=" %%A in ('yt-dlp -g https://www.youtube.com/watch?v=Fw9hgttWzIg') do (
    echo #EXTINF:-1,Crystal Bay>> "%OUTPUT%"
    echo %%A>> "%OUTPUT%"
)

:: แจ้งสถานะ
echo.
echo ✅ สร้าง playlist เสร็จแล้ว: "%OUTPUT%"
pause
