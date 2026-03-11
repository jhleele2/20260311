@echo off
chcp 65001 >nul
echo GitHub 자격 증명을 제거하면, 다음 푸시 시 jhleele2 로 다시 로그인할 수 있습니다.
echo.
cmdkey /delete:git:https://github.com 2>nul
if errorlevel 1 (
    echo 저장된 GitHub 로그인이 없거나 이미 제거되었습니다.
) else (
    echo GitHub 로그인 정보를 제거했습니다.
)
echo.
echo 이제 "push-to-github.bat" 를 실행하면 로그인 창이 뜹니다.
echo jhleele2 계정으로 로그인해 주세요.
echo.
pause
