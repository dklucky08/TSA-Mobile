@echo off
title TSA GITHUB INITIAL SETUP
echo ========================================
echo    TSA-MOBILE GITHUB SETUP WIZARD
echo ========================================
echo.
set /p repo_url="Masukkan URL Repository GitHub Jendral: "
cd /d "%~dp0"
echo.
echo [??] Menginisialisasi Koneksi...
git init
git remote add origin %repo_url%
echo [??] Mengunggah Data Pertama Kali...
git add .
git commit -m "Initial Launch TSA V15 Gold"
git branch -M main
git push -u origin main
echo.
echo ========================================
echo [?] SETUP SELESAI!
echo Silahkan lanjut ke Langkah 3 di GitHub (Settings -> Pages).
echo ========================================
pause
