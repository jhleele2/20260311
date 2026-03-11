# GitHub 저장소에 올리기

저장소: https://github.com/jhleele2/20260311.git

## 가장 쉬운 방법 (Windows)

1. **push-to-github.bat** 파일을 더블클릭해서 실행합니다.
2. 커밋 메시지를 입력하거나 Enter로 기본 메시지를 사용합니다.
3. (최초 1회) GitHub 로그인/인증이 뜨면 진행합니다.

Git이 설치되어 있어야 합니다: https://git-scm.com/

---

## 수동 명령어

### 처음 한 번만 (저장소 연결)

```bash
cd c:\Users\SD2-20\Desktop\temp

git init
git remote add origin https://github.com/jhleele2/20260311.git
git branch -M main
```

## 업데이트할 때마다 (커밋 & 푸시)

```bash
cd c:\Users\SD2-20\Desktop\temp

git add .
git status
git commit -m "로또 추첨 서비스 업데이트"
git push -u origin main
```

이미 `git init`과 `remote add`를 했다면, 앞으로는 **아래 세 줄만** 반복하면 됩니다.

```bash
git add .
git commit -m "업데이트 내용 요약"
git push
```

## 참고

- Git이 설치되어 있어야 합니다: https://git-scm.com/
- 최초 `git push` 시 GitHub 로그인(또는 토큰)이 필요할 수 있습니다.
