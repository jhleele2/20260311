@echo off
chcp 65001 >nul
cd /d "%~dp0"
set GIT=C:\Program Files\Git\bin\git.exe
"%GIT%" add index.html
"%GIT%" commit -m "index.html update" 2>nul || echo 변경 없음
"%GIT%" push origin main 2>nul
echo 완료. 아무 키나 누르면 닫습니다.
pause >nul
