@echo off
title TSA SYNC
echo [?] SYNCING...
cd /d "%~dp0"
git add .
git commit -m "Auto Update"
git push origin main
pause
