@echo off
title Arab Tili Admin Panel

:: Agar 8080 port band bo'lsa, tozalash
for /f "tokens=5" %%a in ('netstat -aon ^| findstr ":8080" 2^>nul') do (
  taskkill /F /PID %%a >nul 2>&1
)

echo Arab Tili Admin Panel ishga tushmoqda...
start "" /B dart "C:\dev\arab_tilli_2.0.0\admin\serve.dart"
timeout /t 2 /nobreak >nul
start "" "http://localhost:8080"
echo Tayyor! Brauzer ochildi.
