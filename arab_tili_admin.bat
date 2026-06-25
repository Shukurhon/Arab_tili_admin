@echo off
echo Arab Tili Admin Panel ishga tushmoqda...
start "" /B dart "C:\dev\arab_tilli_2.0.0\admin\serve.dart"
timeout /t 2 /nobreak >nul
start "" "http://localhost:8080"
