@echo off
echo Downloading sample media files...
echo.

REM Create a PowerShell script to download sample files
echo # Sample media downloader for BIS5203Week8 project > download_media.ps1
echo # This script downloads free sample audio and video files >> download_media.ps1
echo. >> download_media.ps1

echo # Download sample audio file (short ambient sound) >> download_media.ps1
echo try { >> download_media.ps1
echo     Write-Host "Downloading sample audio..." >> download_media.ps1
echo     Invoke-WebRequest -Uri "https://www.soundjay.com/misc/sounds-effects/bell-ringing-05.wav" -OutFile "media\audio.wav" -ErrorAction Stop >> download_media.ps1
echo     Write-Host "Audio downloaded successfully!" >> download_media.ps1
echo } catch { >> download_media.ps1
echo     Write-Host "Could not download audio. Please manually add an audio file." >> download_media.ps1
echo } >> download_media.ps1
echo. >> download_media.ps1

echo # Download sample video file (short animation) >> download_media.ps1
echo try { >> download_media.ps1
echo     Write-Host "Downloading sample video..." >> download_media.ps1
echo     Invoke-WebRequest -Uri "https://sample-videos.com/zip/10/mp4/SampleVideo_1280x720_1mb.mp4" -OutFile "media\video.mp4" -ErrorAction Stop >> download_media.ps1
echo     Write-Host "Video downloaded successfully!" >> download_media.ps1
echo } catch { >> download_media.ps1
echo     Write-Host "Could not download video. Please manually add a video file." >> download_media.ps1
echo } >> download_media.ps1

echo.
echo Running PowerShell script to download files...
powershell -ExecutionPolicy Bypass -File download_media.ps1

echo.
echo Done! Check the media folder for downloaded files.
echo If downloads failed, you can manually add:
echo - audio.mp3 or audio.wav (short audio clip, 5-10 seconds)
echo - video.mp4 (short video clip, 5-15 seconds)
echo.
pause