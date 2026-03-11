# GitHub 푸시 403 해결 (한 번만 하면 됨)

현재 이 PC에는 **heonjeo-crypto** 계정으로 로그인되어 있는데, 저장소 **jhleele2/20260311** 은 **jhleele2** 계정 것입니다.  
그래서 푸시할 때 "Permission denied" 가 난 상태입니다. 아래 중 **본인 상황에 맞는 방법 하나만** 하면 됩니다.

---

## 방법 1: jhleele2 계정으로 이 PC에서 푸시하고 싶을 때

### 1단계 – Windows에 저장된 GitHub 로그인 지우기

1. **Windows 검색**에서 **자격 증명 관리자** 실행
2. **Windows 자격 증명** 탭 클릭
3. **일반 자격 증명** 목록에서 `git:https://github.com` 찾기
4. 클릭 후 **제거** (나중에 다시 로그인하면 됩니다)

### 2단계 – 푸시할 때 jhleele2로 로그인

1. **push-to-github.bat** 더블클릭  
   **또는**  
   명령 프롬프트에서:
   ```bash
   cd c:\Users\SD2-20\Desktop\temp
   git push -u origin main
   ```
2. 브라우저 또는 로그인 창이 뜨면 **jhleele2** 계정으로 로그인
3. 한 번 로그인해 두면 다음부터는 푸시만 하면 됩니다.

---

## 방법 2: heonjeo-crypto 계정 그대로 쓰고 싶을 때

**jhleele2** 계정으로 GitHub에 로그인한 뒤:

1. https://github.com/jhleele2/20260311 로 이동
2. **Settings** → **Collaborators** (또는 **Collaborators and teams**)
3. **Add people** 에 **heonjeo-crypto** 입력 후 초대
4. heonjeo-crypto 메일에서 초대 수락

이후 이 PC에서 `git push` 하면 heonjeo-crypto 권한으로 푸시됩니다.

---

## 방법 3: Personal Access Token (PAT)으로 jhleele2 푸시

jhleele2 계정으로 GitHub에 로그인한 상태에서:

1. https://github.com/settings/tokens 이동
2. **Generate new token (classic)** 선택
3. **repo** 권한 체크 후 토큰 생성·복사
4. 이 폴더에서 아래 명령 실행 (한 번만):

```bash
cd c:\Users\SD2-20\Desktop\temp
git remote set-url origin https://jhleele2@github.com/jhleele2/20260311.git
git push -u origin main
```

5. 비밀번호 묻는 곳에 **토큰** 붙여넣기 (GitHub 비밀번호 아님)

---

## 정리

- **방법 1**: 이 PC를 jhleele2 전용으로 쓸 때 추천  
- **방법 2**: heonjeo-crypto도 같이 푸시할 때 추천  
- **방법 3**: 자동화/스크립트에서 jhleele2로 푸시할 때 추천  

위 중 **하나만** 완료하면, 앞으로는 **push-to-github.bat** 실행만으로 푸시됩니다.
