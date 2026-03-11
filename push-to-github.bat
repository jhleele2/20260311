@echo off
chcp 65001 >nul
cd /d "%~dp0"

where git >nul 2>&1
if errorlevel 1 (
    echo [오류] Git이 설치되어 있지 않거나 PATH에 없습니다.
    echo https://git-scm.com/ 에서 Git을 설치한 뒤 다시 실행해 주세요.
    pause
    exit /b 1
)

if not exist ".git" (
    echo Git 저장소 초기화 중...
    git init
    git remote add origin https://github.com/jhleele2/20260311.git
    git branch -M main
)

echo 변경 사항 추가 중...
git add .
git status

set /p msg="커밋 메시지 (Enter 시 기본 메시지): "
if "%msg%"=="" set msg=로또 추첨 서비스 업데이트

git commit -m "%msg%"
if errorlevel 1 (
    echo 변경 사항이 없거나 이미 커밋되어 있습니다.
) else (
    echo 푸시 중...
    git push -u origin main
    if errorlevel 1 (
        echo 푸시 실패. GitHub 로그인/권한을 확인해 주세요.
    ) else (
        echo 완료. GitHub에 반영되었습니다.
    )
)
pause
