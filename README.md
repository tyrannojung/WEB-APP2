준비단계
--------------------------------------------------------------------------------------
필요도구
--------------------------------------------------------------------------------------
* Node.js, 파이썬, 왓치맨, Rosetta, JDK, npm, expo, 안드로이드스튜디오, Xcode, transpoter

## ※ Mac

homebrew 설치 (설치도구)
--------------------------------------------------------------------------------------
1. 설치명령어 실행
<pre>
	$/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
</pre>

2. 패스 설정

 - 환경설정 진입
    <pre>
    	vi ~/.zshrc
    </pre>

 - 환경설정 추가
    <pre>
    	export PATH="/opt/homebrew/bin:$PATH"
    </pre>

 - 소스적용
    <pre>
    	source ~/.zshrc
    </pre>

3. 설치확인
<pre>
	brew --version
</pre>


Node.js 설치
--------------------------------------------------------------------------------------
1. 설치명령어 실행
<pre>
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
</pre>

2. nvm 설치
<pre>
	brew install nvm
</pre>

3. 패스 설정

 - 환경설정 진입
    <pre>
    	vi ~/.zshrc
    </pre>

 - 경로 잡혀있는지 확인 (없으면 추가)
    <pre>
    	export NVM_DIR=~./nvm
    </pre>

 - 소스적용
    <pre>
    	source ~/.zshrc
    </pre>

4. 설치확인
<pre>
	nvm --version
</pre>

파이썬 설치
--------------------------------------------------------------------------------------
* 맥은 기본적으로 파이썬이 설치되어 있음.

왓치맨이란
--------------------------------------------------------------------------------------
* 리엑트 네이티브에서 활용하는 페이스북에서 제작한 파일 시스템 변경 감지 도구.

왓치맨 설치
--------------------------------------------------------------------------------------
1. 설치명령어 실행
<pre>
	brew install watchman
</pre>

2. 설치확인
<pre>
	watchman --version
</pre>

Xcode 설치 (Mac용 IDE)
-------------------------------------------------------------------------------------
* app store에서 설치

transpoter 설치 (Mac용 전송프로그램)
-------------------------------------------------------------------------------------
* app store에서 설치

Rosetta 설치
-------------------------------------------------------------------------------------
* m1칩 호환프로그램

1. 설치명령어 실행

<pre>
	/usr/sbin/softwareupdate --install-rosetta --agree-to-license
</pre>

jdk 설치
-------------------------------------------------------------------------------------
1. 설치명령어 실행
<pre>
	brew install cask adoptopenjdk/openjdk/adoptopenjdk8
</pre>

2. 설치확인
<pre>
	java -version / javac -version
</pre>

npm 설치
-------------------------------------------------------------------------------------
* nodejs 모듈을 다운받을수있게해주는 프로그램

1. 설치명령어 실행
<pre>
	brew install npm
</pre>

2. 설치확인
<pre>
	nvm --version
</pre>



## ※ Window

기본설치
-------------------------------------------------------------------------------------
nodejs 설치, python 설치, jdk 설치

리액트 네이티브 CLI 설치
-------------------------------------------------------------------------------------
1. 설치명령어 실행 (명령프롬프트를 관리자 권한으로 실행)
<pre>
	npm install -g react-native-cli
</pre>


## ※ 공통

yarn 설치
-------------------------------------------------------------------------------------
<pre>
	npm install --global yarn
</pre>

expo 설치
-------------------------------------------------------------------------------------
* 어플리케이션 빌드 프로그램

1. 설치명령어 실행
<pre>
	npm install --global expo-cli
</pre>

2. 설치확인
<pre>
	expo ---version 
</pre>

툴설치
-------------------------------------------------------------------------------------
* VScode설치 - 홈페이지
* android studio 설치 - 홈페이지

계정정보
-------------------------------------------------------------------------------------


EXPO 프로젝트 만들기
--------------------------------------------------------------------------------------
1. workspace만들기 
	- helloworld 폴더 생성
2. vscode실행 후 file > openfolder > helloworld폴더선택
3. 터미널열기
	-메뉴창 Terminal -> New Terminal
4. 프로젝트생성
	터미널창에 입력
	<pre>
		- expo init helloworld
	</pre>

4. 템플릿 선택
 - [x] blank - 간단합 앱을 만들 수 있는 빈 템플릿
 - [ ] blank(TypeScript)  - 타입스크립트로 구성될수있는 빈 템플릿
 - [ ] tabs(TypeScript) - react-navigation 및 type스크립트를 사용하는 몇가지 예제화면 및 탭
 - [ ] minimal - 최소한의 필수적인 것 들로만 구성된 템플릿

   <pre>
	    - blank 선택
	 </pre>

5. Helloworld프로젝트 폴더구조를 /source/default와 동일하게 맞춰준다.
  - keys, assets, src, theme, App.js, app.json, package.json 붙여넣기
  - node_moudles를 지우고 npm install
  - 위 사항 애러시 yarn install

6. 구글 & 페이스북 로그인(옵션)

  - 구글 & 페이스북 모듈 install
	<pre>
		expo install expo-google-sign-in
		expo install expo-facebook
	</pre>
  - 해시 생성 위해 apk build(아래 빌드 탭의 android 참고)

	해시값 생성 - google에서 기기에 접근하는 해시값
	<pre>
	    expo fetch:android:hashes
	</pre>
	
	결과값
	<pre>
	 - Accessing credentials for jongnamlim in project appSystem   
	 - Google Certificate Fingerprint:     95:EF:06:50:BD:27:6B:D9:82:9B:B2:20:1D:BE:D0:4F:66:02:2E:EE   
	 - Google Certificate Hash (SHA-1):    95EF0650BD276BD9829BB2201DBED04F66022EEE   
	 - Google Certificate Hash (SHA-256):  BB4947E0262A9F498B45B1F8B38399741B24B4C2FA2918126BABFF8BD691B933   
	 - Facebook Key Hash:                  le8GUL0na9mCm7IgHb7QT2YCLu4=   
	</pre>

  - SnS세팅
  <pre>
    - Google
	- firebase설정(https://console.firebase.google.com/u/1/?pli=1 이동 및 로그인)
	- 새프로젝트 만들기
		- 프로젝트 이름입력 : abc-helloworld
		- Firebase 프로젝트를 위한 Google 애널리틱스 :  사용안함
	- build > Authentication 클릭 후 시작하기를 누른다.
		- Google선택
			- 프로젝트 공개용 이름 : abc-helloworld
			- 프로젝트 지원 이메일 : dev.4intel@gmail.com
	- 프로젝트개요 > android 아이콘 클릭	
			- 앱 등록
				- Android 패키지 이름 : kr.ne.abc.helloworld
				- 앱 닉네임 : abc
				- 디버그 서명 인증서 SHA-1 : Expo해시값 생성한 GGoogle Certificate Hash (SHA-1)키값을 입력
				- 앱등록 버튼 클릭
			- 구성 파일 다운로드
				- google-services.json 다운로드
				- 다음버튼클릭
			- Firebase SDK 추가 (사용안함 다음버튼클릭)
	- 프로젝트개요 > iOS 아이콘 클릭
		- 앱 등록
			- Apple 번들 id : kr.ne.abc.helloworld
				- 앱 닉네임 : abc
				- App Store ID : 1604702040
				- 앱등록 버튼 클릭
			- 구성 파일 다운로드
				- google-services.plist 다운로드
				- 다음버튼클릭
			- Firebase SDK 추가 (사용안함 다음버튼클릭)
	- assets (파일저장소(이미지, 폰트, 비디오, 사운드 파일))
			-fonts
			-images
				- adaptive-icon.png
				- favicon.png
				- icon.png
				- splash.png
	</pre>
		
  - /src/screens/HOME.js 

```javascript
    import React, { useEffect } from 'react';
    import { WebView } from 'react-native-webview';
    import styled from 'styled-components/native'
    import * as GoogleSignIn from "expo-google-sign-in";
    import * as Facebook from "expo-facebook";
     
    const Container = styled.SafeAreaView`
    flex: 1;
    background-color: #ffffff;
    `;
     
    const ContainerMain = styled.View`
    flex: 1;
    background-color: #ffffff;
    border-top-width: 0.2px;
    border-top-color: #a4a4a4;
    `;
     
    const App = () => {
     
       // 구글 로그인
       useEffect(() => {
           this.initAsync();
       });
     
       initAsync = async () => {
           await GoogleSignIn.initAsync({
               clientId:
                   "107993539890-gcaft094ptl3t7vqs2sta8g0ov4jqthi.apps.googleusercontent.com", // ./keys/GoogleService-Info.plist 파일의 client_id
           });
       };
     
       async function signInWithGoogleAsync(webviewRef) {
           try {
               await GoogleSignIn.askForPlayServicesAsync();
               const result = await GoogleSignIn.signInAsync();
               if (result.type === "success") {
                   result.loginchk = "google";
                   webviewRef.postMessage(JSON.stringify(result));
               } else {
                   webviewRef.postMessage("실패");
               }
           } catch ({ message }) {
               alert("login: Error:" + message);
           }
       }
     
       // 페이스북로그인
       async function signInWithFacebookAsync(webviewRef) {
           console.log(">>>>>in facebook login");
     
           try {
               await Facebook.initializeAsync({
                   appId: "351218286764011", // facebook developer 계정의 appid 입력
               });
               const { type, token } = await Facebook.logInWithReadPermissionsAsync({
                   permissions: ["public_profile"],
               });
               if (type === "success") {
                   const response = await fetch(
                       `https://graph.facebook.com/me?fields=id,name,email&access_token=${token}`
                   );
                   const userInfo = await response.json();
                   userInfo.token = token;
                   userInfo.loginchk = "facebook";
                   //console.log(userInfo);
                   webviewRef.postMessage(JSON.stringify(userInfo));
               } else {
                   webviewRef.postMessage(type);
               }
           } catch ({ message }) {
               alert(`Facebook Login Error: ${message}`);
           }
       }
       return (
           <Container>
               <ContainerMain>
                   <WebView
                       source={{
                           uri: "https://bts-education.nodehome.io/",
                       }}
                       javaScriptEnabled={true}
                       domStorageEnabled={true}
                       injectedJavaScript={
                           `
                           var dtype =
                           '` +
                           Platform.OS +
                           `';
                           var ck_value = window.localStorage.getItem("dtype");
                           if(!ck_value){
                               window.localStorage.setItem("dtype", dtype );
                               window.location.reload();
                            }
                            `
                       }
                       ref={(ref) => (this.webviewRef = ref)}
                       onMessage={(event) => {
                           var loginchk = event.nativeEvent.data;
                           console.log(loginchk);
                           if (loginchk == "google") {
                               signInWithGoogleAsync(this.webviewRef);
                           } else if (loginchk == "facebook") {
                               signInWithFacebookAsync(this.webviewRef);
                           }
                       }}
                   />
               </ContainerMain>
           </Container>
       );
    };
     
    export default App;
```

4. app.json 복사

```javascript
    {
     "expo": {
       "name": "helloworld0x", // 앱 이름
       "slug": "appSystem",
       "version": "1.0.0",
       "orientation": "portrait",
       "icon": "./assets/icon.png", // 앱 아이콘
       "splash": {
         "image": "./assets/splash.png", // 첫 로딩 이미지
         "resizeMode": "contain",
         "backgroundColor": "#2d2e46" // 여백 색
       },
       "updates": {
         "fallbackToCacheTimeout": 0
       },
       "assetBundlePatterns": [
         "**/*"
       ],
       "facebookScheme": "fb351218286764011", // fb + facebook developer app id
       "ios": {
         "bundleIdentifier": "io.nodehome.helloworld0x", //는패키지명(중복x)
         "config": {
           "googleSignIn": {
             "reservedClientId": "com.googleusercontent.apps.107993539890-gcaft094ptl3t7vqs2sta8g0ov4jqthi" //REVERSED_CLIENT_ID ./keys/GoogleService-Info.plist 값 입력
           }
         },
         "googleServicesFile": "./keys/GoogleService-Info.plist", //경로 설정
         "buildNumber": "1.0.0",
         "supportsTablet": true
       },
       "android": {
         "package": "io.nodehome.helloworld0x", //는패키지명(중복x)
         "googleServicesFile": "./keys/google-services.json", //경로 설정
         "config": {
           "googleSignIn": {
             "certificateHash": "a4575f81e6d49d7b15a129234ebebf8d50492455" // ./keys/google-services.json certificate_hash 값 입력
           }
         },
         "versionCode": 1
       },
       "web": {
         "favicon": "./assets/favicon.png"
       }
     }
    }

```
- 상세내용은 /Documents/SnS 설정.docx 문서 참조


--------------------------------------------------------------------------------------


