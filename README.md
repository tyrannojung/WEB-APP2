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
1. 설치명령어 실행
<pre>
	npm install --global yarn
</pre>

2. 설치확인
<pre>
	yarn ---version 
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
※  expo(https://expo.dev/)   
ID: dev.4intel@gmail.com   
PW: abc123ok**   

※  google store(https://play.google.com/apps/publish/)   
ID: app.net.4intel@gmail.com   
PW: 4intel123ok   

※  apple store (https://appstoreconnect.apple.com/)   
ID: hs0chae@naver.com   
PW: Jakeen2784   
App Store ID : 1604702040   
NOTE: 채흥석 소장님 macbook에서 인증 받아야 함   

※  firebase (https://console.firebase.google.com/u/1/?pli=1)   
설명 : 구글 api를 사용할수있게해주는 플랫폼   
ID: dev.4intel@gmail.com   
PW: abc123ok**   

※ facebook(https://www.facebook.com)   
ID : dev.4intel@gmail.com   
PW : abc123ok**   

프로젝트 만들기 & Expo 빌드
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

 - Helloworld 기본 폴더구조

```
Helloworld
	-Helloworld
		- .expo-shared  (엑스포 공유파일)
		- assets (파일저장소(이미지, 폰트, 비디오, 사운드 파일)
			- adaptive-icon.png // 반응형 앱아이콘이미지
			- favicon.png // web에 favicon 이미지
			- icon.png // 앱아이콘이미지
			- splash.png // 로딩이미지
		- node_modules(react module파일)
		- App.js(앱 실행시 처음 실행하는 파일)
		- app.json(코드에 속하지 않는 앱의 일부들을 구성)
		- babel.config.js(환경설정파일)
		- package-lock.json(서로다른 동일한 node_module 트리를 생성해서 같은 의존성을 설치할 수 있도록 보장)
		- package.json(사용할 패키지 및 버전)
```


5.  cd 해당프로젝트로 들어간다.
터미널창에 명령어 입력
    ```
		- cd helloworld
	```
	

6. 기본 node_modules에 없는 사용할 modules추가
    - webview 패키지 (webview사용을위한 modules)
    
    <pre>
    - expo install react-native-webview  
    </pre>
    - 스타일 컴포넌트( Javascript 파일 내에서 CSS를 사용할 수 있게 해주는 modules)
     
    <pre>
    - npm install styled-components
    </pre>

7. App.js, App.json 수정
 - App.js
 
```javascript
import * as React from 'react'; // 리액트 기본 문법사용 import
import { WebView } from 'react-native-webview'; // webview 사용을위한 impoirt
import styled from 'styled-components/native' // style css 사용을위한 import

// iphone 노치디자인 오류방지 백그라운드
const SafeContainer = styled.SafeAreaView` 
    flex: 1;
    background-color: #264361;
  `;

export default class App extends React.Component {
  render() {
    return (
      <SafeContainer>
        <WebView
          source={{ uri: 'https://abc.ne.kr/' }} // 사용할 링크
          style={{ marginTop: 20 }} // 인라인 스타일링
        />
      </SafeContainer>
    );
  }
}
```

- App.json

```	
json형식에 맞춰 아래 코드를 추가해준다.(배포시 패키지와 버전이 필수값)
	ios
		"bundleIdentifier": "io.nodehome.helloworld0x",  //는패키지명(중복x)
       		"buildNumber": "1.0.0", // 버전
	android	
		 "package": "io.nodehome.helloworld0x",  // 패키지명 (중복x)
      		 "versionCode": 1 // 버전
```

8. expo 인터페이스 실행
    <pre>
        - npm start 
    </pre>
    - 인터페이스 실행단계에서 나온 Developer tools running on http://localhost:19002 위 링크를 복사해서 크롬에에 붙여넣기한다.

9. expo Helloworld demo 앱실행
	- Metro Bundler이용하여 helloworld앱 확인하기

	- IOS
		- 기본카메라로 왼쪽 하단의 qr코드나, vscode 콘솔창의 qr코드를 찍으면 expo어플을 이용하여 확인할수있다.
	- 안드로이드
		- expo어플을 실행 후 Scan Qr Code를 통해 해당 qr코드를 찍으면 앱을 확인할수있다.


Default App(home, setting) 적용시 폴더구조 변경
--------------------------------------------------------------------------------------

- Helloworld 업그레이드 폴더구조

- Helloworld프로젝트 폴더구조를 /source/default와 동일하게 맞춰준다.

	1, keys, assets, src, theme, App.js, package.json 붙여넣기

		Helloworld
			-Helloworld
				- .expo-shared  (엑스포 공유파일)
				- assets (파일저장소(이미지, 폰트, 비디오, 사운드 파일)
					-fonts
					-images
						- adaptive-icon.png // 반응형 앱아이콘이미지
						- android.png // google스토어 설명 이미지
						- favicon.png // web에 favicon 이미지
						- icon.png // 앱아이콘이미지
						- splash.png // 로딩이미지
				- keys
				- node_modules(react module파일)
				- src
					- components	(부가 기능들 관련된 컴포넌트)
						- appstatusbar.js – 상단백그라운드
						- index.js – 실행파일
					- navigations(화면 전환과 관련된 컴포넌트)
						- MainTab.js – 어플 메인구성화면
						- index.js – 실행파일
					- screens(어플의 화면 단위 컴포넌트)
						- Home.js – 홈아이콘클릭시 나타날 화면
						- index.js – 실행파일
						- Settings.js- 세팅아이콘클릭시 나타날 화면

				- theme
					- theme.js (css설정)
				- App.js(앱 실행시 처음 실행하는 화면)
				- app.json(코드에 속하지 않는 앱의 일부들을 구성)
				- babel.config.js(환경설정파일)
				- package-lock.json(서로다른 동일한 node_module 트리를 생성해서 같은 의존성을 설치할 수 있도록 보장)
		        - package.json(사용할 패키지 및 버전)
				
				
    - npm install시 "@react-native-community/masked-view": "0.1.10" 버전이슈 문제로 yarn install로 대체
	- Package.json 내용 변경시 yarn install로 node_moudle을 업데이트 해준다.

	2, app.json내용을 프로젝트에 맞게 수정한다.
	
		```javascript
		{
		  "expo": {
		    "name": "helloworld", // 앱 이름
		    "slug": "appSystem",
		    "version": "1.0.0",
		    "orientation": "portrait",
		    "icon": "./assets/images/icon.png", // 앱아이콘
		    "splash": {
		      "image": "./assets/images/splash.png", // 첫 로딩 이미지
		      "resizeMode": "contain",
		      "backgroundColor": "#2d2e46" // 여백 색
		    },
		    "updates": {
		      "fallbackToCacheTimeout": 0
		    },
		    "assetBundlePatterns": ["**/*"],
		    "ios": {
		      "bundleIdentifier": "kr.ne.abc.helloworld",  //는패키지명(중복x)
		      "buildNumber": "1.0.0", // 버전
		      "supportsTablet": true
		    },
		    "android": {
		      "package": "kr.ne.abc.helloworld",  // 패키지명 (중복x)
		      "versionCode": 1 // 버전
		    },
		    "web": {
		      "favicon": "./assets/images/favicon.png"
		    }
		  }
		}
    - 주석까지 데이터로 인식되므로 지워준다. 
    

WebSNS (Kakao & Naver & Ios & Google & Facebook) Api 적용
--------------------------------------------------------------------------------------
이슈사항 : google은 build후 정상작동된다.

    - application.properties 추가
    
        #Kakao
        kakao.client.id=81ee69e82becbb355daed4b30d3176b5
        kakao.redirect.url=https://bts-app.nodehome.io/login/oauth_kakao
        
        #Naver
        naver.client.id=GhsQ9VxIX4sVcWtqdtUX
        naver.secret.id=HF5kakpS_R
        naver.redirect.url=https://bts-app.nodehome.io/login/oauth_naver
        
        #Apple
        apple.auth.url=https://appleid.apple.com
        apple.team.id=9NS2G9S8SM
        apple.redirect.url=https://bts-app.nodehome.io/login/oauth_apple
        apple.client.id=kr.ne.abc
        apple.key.id=JRNBFXN9JR
        apple.key.path=static/abc/apple/AuthKey_JRNBFXN9JR.p8
        
    - google & facebook
        1. 자바프로젝트 src\main\resources\static\common\js 폴더에 api_package.js 추가
    
    ```
    // 디바이스체크(web, ios, android)
    function appDeviceCheck() { 
    	deviceType = localStorage.getItem("dtype");
    }
    
    // react타입별 통신 함수
    function appReactCmn(){ 
    	if(deviceType == 'android'){
    		document.addEventListener("message", message => {
    			appReceiveMsg(message);
    		});
    	} else if(deviceType == 'ios'){
    		window.addEventListener("message", message => {
    			appReceiveMsg(message);
    		});
    	}
    }
    
    // 구글로그인(실행함수)
    function googleLogin(){
    	// 모바일일때,
    	if(deviceType != null) {
    		ReactNativeWebView.postMessage('google');
    	}
    	// WEB일때
    	else {
    		$('#GgCustomLogin').click();
    	}
    }
    
    // 네이티브 통한 로그인(구글 & 페이스북) 결과값
    function appReceiveMsg(message){ 
    	var data = JSON.parse(message.data);
    	if(data['loginchk'] == 'google' && data['type'] == 'success')
    		app_googleLogin(data);
    	else if (data['loginchk'] == 'facebook')
    		app_facebookLogin(data);
    }
    
    // google 로그인결과
    function app_googleLogin(data){
    	alert("앱 구글로그인 성공 \n accessToken : " + data['accessToken']);
    	alert(
    	"user : \n" + "email : "
    	+ data['user'].email  
    	+ "\n familyName : " 
    	+ data['user'].familyName
    	+ "\n givenName : "
    	+ data['user'].givenName
    	+ "\n name : "
    	+ data['user'].name);
    }
    ////
    
    
    // WEB 구글로그인(실행함수)
    function goolegAsyncInit() {
    	gapi.load('auth2', function() {
    		gapi.auth2.init();
    		options = new gapi.auth2.SigninOptionsBuilder();
    		options.setPrompt('select_account');
    		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
    		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
    	})
    }
    
    // WEB 구글로그인 검증
    function onSignIn(googleUser) {
    	var access_token = googleUser.getAuthResponse().access_token
    	$.ajax({
    		url: 'https://people.googleapis.com/v1/people/me'
    		, data: {personFields:'birthdays', key:'AIzaSyAx65syS2HWQFqS-UU-urE0VVUCLAkhKyY', 'access_token': access_token}
    		, method:'GET'
    	})
    	.done(function(e){
    		var profile = googleUser.getBasicProfile();
    		console.log(profile)
    		alert("웹 구글로그인 성공 \n accessToken : " + profile.getId());
    		alert(
    				"user : \n" + "email : "
    				+ profile.getEmail()  
    				+ "\n Name : " 
    				+ profile.getName()
    				);
    	})
    	.fail(function(e){
    		console.log(e);
    	})
    }
    
    // WEB 구글 로그인 실패함수
    function onSignInFailure(t){		
    	console.log(t);
    }
     
    //페이스북 로그인(실행함수)
    function facebookLogin(){
    	if(deviceType != null) {
    		ReactNativeWebView.postMessage('facebook');
    	} else {
    		fnFbCustomLogin();
    	}
    }
    
    // 페이스북 로그인결과
    function app_facebookLogin(data){
    	alert("페이스북로그인 성공 \n token : " + data['token']);
    	alert(
    		"user : \n" + "email : "
    		+ data['email']  
    		+ "\n name : "
    		+ data['name']);
    }
    
    // 페이스북(로딩함수)
    function fbAsyncInit() {
    	FB.init({
    		appId      : '1588150011384568', // 앱 ID
    		cookie     : true,
    		xfbml      : true,
    		version    : 'v10.0'
    	});
    	FB.AppEvents.logPageView();   
    }
    
    // 페이스북 콜백함수
    function statusChangeCallback(res){
    	statusChangeCallback(response);
    }
    
    // WEB 페이스북로그인 검증
    function fnFbCustomLogin(){
    	FB.login(function(response) {
    		if (response.status === 'connected') {
    			FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
    				console.log(r);
    				
    				alert("웹 페이스북로그인 성공 \n accessToken : " + r.id);
    				alert(
    						"user : \n" + "email : "
    						+ r.email  
    						+ "\n familyName : " 
    						+ r.name);
    				
    			})
    		} else if (response.status === 'not_authorized') {
    			// 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
    			alert('앱에 로그인해야 이용가능한 기능입니다.');
    		} else {
    			// 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
    			alert('페이스북에 로그인해야 이용가능한 기능입니다.');
    		}
    	}, {scope: 'public_profile,email'});
    }
```

   /kr/ne/abc/template/common/sns/ 패키지에서 필요한 java를 복사 붙여넣기 한다.
   
   apple
    	- AppleController.java
	- AppleLoginUtil.java
   kakao
   	- KakaoController.java
	- KakaoLoginUtil.java
   naver
   	- NaverController.java
	- NaverLoginApi.java
	- NaverLoginUtil.java


   
	
    - kakao
	
	
    - naver
    	
	
    - ios
    	
	
    


2.SNS 사용할 view페이지 수정
    
    - 필요한 페이지 헤더에 추가
    
```
        <script src="/abc/js/api_package.js"></script>
    	<!-- Web구글로그인 -->
    	<meta name ="google-signin-client_id" content="725846148931-kkao26bsp0ek8klt0uqoud2h4m37egsv.apps.googleusercontent.com">
    	<script src="https://apis.google.com/js/platform.js"></script>
    	<!-- 페이스북 로그인 -->
    	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1588150011384568" nonce="SiOBIhLG"></script>
    	<script>
    		var deviceType
    		$(function() {
    			// 디바이스 체크 함수
    			// Web : deviceType : null
    			// 아이폰 : deviceType : ios
    			// 안드로이드 : deviceType : android
    		   	appDeviceCheck();
    			// Web일때
    			if(deviceType == null) {
    				goolegAsyncInit();  //google
    			    fbAsyncInit();	    //facebook
    			}
    			// App일때
    			else {
    				// 네이티브 통신 함수
    				appReactCmn();
    			}
    		});
	    </script>
	    
    	<body>
        - 구글로그인
            - <div id="GgCustomLogin" style="display:none">googleLogin</div>
            - googleLogin() 
            
        - 페이스북로그인
            - facebookLogin()
        </body>
```
    

App SNS (Google & Facebook) Api 적용
--------------------------------------------------------------------------------------

1. google & facebook 해시값 생성   

<pre>
- expo fetch:android:hashes
</pre>	 

 - Accessing credentials for jongnamlim in project appSystem   
 - Google Certificate Fingerprint:     95:EF:06:50:BD:27:6B:D9:82:9B:B2:20:1D:BE:D0:4F:66:02:2E:EE   
 - Google Certificate Hash (SHA-1):    95EF0650BD276BD9829BB2201DBED04F66022EEE   
 - Google Certificate Hash (SHA-256):  BB4947E0262A9F498B45B1F8B38399741B24B4C2FA2918126BABFF8BD691B933   
 - Facebook Key Hash:                  le8GUL0na9mCm7IgHb7QT2YCLu4=   

2. SnS세팅

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
    			
     - Facebook
        - https://developers.facebook.com/ 접속
        - 내앱> 앱만들기
            - 앱유형 없음 선택
            - 상세정보
                - 표시이름 : helloworld
                - 앱 연락처 이메일 : dev.4intel@gmail.com
                - 비즈니스계정: 없음
            - app
                - 패키지 이름 : kr.ne.abc.helloworld
                - 기본 액티비티 클래스 이름 : kr.ne.abc.helloworld
            - hash값
                - expo에서 제공한 해쉬값 추가 (Facebook Key Hash)
					
3. home.js 수정 

		    import React, { useEffect } from 'react';
		    import styled from "styled-components/native";
		    import { WebView } from "react-native-webview";
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
					   uri: "https://abc.ne.kr/",
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

4. app.json 수정

		    {
		     "expo": {
		       "name": "helloworld",
		       "slug": "appSystem",
		       "version": "1.0.0",
		       "orientation": "portrait",
		       "icon": "./assets/images/icon.png",
		       "splash": {
			 "image": "./assets/images/splash.png",
			 "resizeMode": "contain",
			 "backgroundColor": "#2d2e46"
		       },
		       "updates": {
			 "fallbackToCacheTimeout": 0
		       },
		       "assetBundlePatterns": [
			 "**/*"
		       ],
		       "facebookScheme": "fb351218286764011", // fb + facebook developer app id
		       "ios": {
			 "bundleIdentifier": "kr.ne.abc",
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
			 "package": "kr.ne.abc",
			 "googleServicesFile": "./keys/google-services.json", //경로 설정
			 "config": {
			   "googleSignIn": {
			     "certificateHash": "a4575f81e6d49d7b15a129234ebebf8d50492455" // ./keys/google-services.json certificationHash 값 입력
			   }
			 },
			 "versionCode": 1
		       },
		       "web": {
			 "favicon": "./assets/favicon.png"
		       }
		     }
		    }

		- 상세내용은 /Documents/SnS 설정.docx 문서 참조



APK 만들기
--------------------------------------------------------------------------------------

1. APK 만들기
 - Metro Bundler Cntl + C로 종료시킨다.
 - helloworld 폴더구조에서 .expo폴더를 지워준다. (.expo에 로그파일이 남아서 충돌한다.)
 - 사용할 img들을 assets폴더에 넣어준다.
     	- favicon 64 x 64 파비콘이미지
     	- icon 512 x 512 앱아이콘이미지
     	- splash 1242 x 2436 로딩이미지
    	- android 1024x500 배너이미지
    	- adaptive-icon expo실행시이미지 (선택값)

빌드
--------------------------------------------------------------------------------------

 - build
    - ANDROID
<pre> - expo build:android</pre>
- 빌드과정
	    - 로그인여부
		    [x] Log in with an existing Expo account 선택

	    - username dev.4intel@gmail.com
	    - password abc123ok**

    - apk선택
	    - [x] apk : 기본적은 apk파일   
	    - [ ] apk-bundle : apk와 비슷하지만 코드, 리소스, cpu 아키텍처와 메타데이터를 압축한 파일
	    - apk를 만드는것이므로 apk선택 후 엔터

        - pc : expo사이트 로그인 후 https://expo.dev/accounts/jongnamlim에서 빌드한 프로젝트선택후 Download(.apk)
        - 핸드폰 : expo에서 로그인 후 빌드한 프로젝트를 선택하고 download 후 설치한후 실행한다. 

    - IOS
        - Mac북 계정 등록 및 알림허용
            - Apple ID : hs0chae@naver.com
	                PW : Jakeen2784
 
	<pre> - expo build:ios	</pre>

    - app형식선택
    - [x] archive : 실제 배포할수있는 app파일
    - [ ] simulator : test app파일

    - Do you have access to the Apple account that will be used for submitting this app to the App Store? › (Y/n) App Store에 실제로 등록할껀지여부를 묻는다. Y선택   
    - How do you want to validate your account? › device / sms 인증서 device/sms어디로 설정할건지 물어본다.   
    *** Device 선택후 알림으로 오는 code입력    // 맥북필요***
    - Would you like to use this certificate? Y선택   
    - Will you provide your own Apple Push Notifications service key? › - Use arrow-keys. Return to submit.   
     [x]  Let Expo handle the process expo에서 진행
     [ ]  I want to upload my own file 직접업로드

    - pc : expo사이트 로그인 후 https://expo.dev/accounts/jongnamlim에서 빌드한 프로젝트선택후 Download(.ipa)
    - 핸드폰 : 다운로드 미지원

    - 다운받은.ipa 단말기로 전송
    - https://appstoreconnect.apple.com/apps 접속후 +버튼 클릭후 신규 앱 선택
    - 플랫폼 : IOS 선택
        - 이름 : abc-helloworld
        - 기본언어 : 한국어
        - 번들id : 최근배포한 ios패키지명선택
        - Sku : helloworld 앱 고유이름
        - 사용자 액세스 권한 : 전체액세스선택
    *** 맥북에 Transporter열어서 앱추가 클릭후 .ipa파일 추가 //맥북필요***
    - 전송이 완료되면 왼쪽 ios에서 빌드된 app에 수출규정준수를 확인한다.
    - 전송이 완료되면 해당 프로젝트드를 들어가서 상단에 Testflight탭 클릭
    - 외쪽에 내부 테스팅에 테스트할 계정을 등록한다.
    - 구글계정에 등록된 메일을 확인하면 testflight어플로 연결된후 다운받으면 단말기에 설치된다.


 - 상세내용은 bts-app/Documents/IOS빌드 참조

# 배포
- Android

 - build (apk를 지원안해서 bundle로 다시 빌드해야된다.)
 - ANDROID
 
	<pre>
	- expo build:android		
	</pre>


 - 빌드과정
	- 로그인여부
		*[x] Log in with an existing Expo account 선택

	- username dev.4intel@gmail.com
	- password abc123ok**

 - apk선택
	- [ ] apk : 기본적은 apk파일
	- [x] apk-bundle : apk와 비슷하지만 코드, 리소스, cpu 아키텍처와 메타데이터를 압축한 파일
	- bundle을 만드는 것이므로 bundle선택

- pc : expo사이트 로그인 후 https://expo.dev/accounts/jongnamlim에서 빌드한 프로젝트선택후 Download(.apk)
- 핸드폰 : expo에서 로그인 후 빌드한 프로젝트를 선택하고 download 후 섪치한후 실행한다. 

  - https://play.google.com/console/developers 접속 및 로그인
    ID: app.net.4intel@gmail.com
    PW: 4intel123ok

  - 앱만들기 버튼클릭
  	- 앱이름 : abc-helloworld
	- 기본언어 : 한국어 - ko-KR
	- 앱 또는 게임 : 앱
	- 유료 또는 무료 : 무료
	- 선언 : 둘다 동의
 - 대시보드 : 앱 설정
	앱설정 > 할일보기
	- 앱 액세스 권한 : 동의
	- 광고여부선택 : 아니오
	- 콘텐츠 등급 : 설문조사 (이메일 : dev.4intel@gmail.com - 문의받을 이메일주소)
		- 유해성 체크 전부 아니요
	- 타켓층 및 콘텐츠 : 18세이상
	- 뉴스앱 : 아니요
	- 데이터 보안 : 사용자 데이텁수집보안 공유 예 체크
		- 개인정보 : 이름, 이메일, 주소, 전화번호(각각 세부내용 작성)
			- 데이터를 수집 또는 공유하나요? : 아니면 수집과 공유를 모두 하나요? 수집됨
			- 이 데이터는 일시적으로 처리되나요? : 아니오
			- 이 데이터는 앱에 필수인가요? 아니면 사용자가 수집 여부를 선택할 수 있나요? : 필수입니다.
			- 이 사용자 데이터가 수집되는 이유는 무엇인가요? 해당하는 항목을 모두 선택해 주세요. : 앱 기능, 계정관리	

	- 개인정보 처리방침 URL: https://www.abc.ne.kr/policy/privacy.html

 - 스토어 설정
	- 앱 카테고리
		- 앱 또는 게임 : 앱
		- 카테고리 : 비즈니스
	- 스토어 등록적ㅇ보 연락처 세부정보
		- 이메일주소 : dev.4intel@gmail.com
		- 전화번호 : + 82 1053454238
		- 웹사이트 : https://abc.ne.kr
	- 외부마케팅
		- 체크해제
 - 기본스토어 등록정보
	- 앱 세부정보
		- 앱이름 : abc-helloworld
		- 간단한 설명 : abc-helloworld
		- 자세한 설명 : abc홈페이지입니다.
	- 그래픽
		- 앱 아이콘 : icon.png (플레이스토어에 표시되는 앱 아이콘 이미지, 512px*512px )
		- 그래픽 이미지 : android.png (출시된 앱을 공유했을 때 표시되는 섬네일 이미지 1024px*500px)
	- 동영상 : https://www.youtube.com/watch?v=SqShHNFpiDQ
 - 전화
	- 휴대전화 스크린샷
		- playstore에 표시될 상세정보이미지 첨부
 - 태블릿
	- 7인치 태블릿 스크린샷
		- playstore에 표시될 상세정보이미지 첨부
	- 10인치 태블릿 스크린샷
		- playstore에 표시될 상세정보이미지 첨부

 - 앱출시
	- 국가 및 지역 선택
		-전체 선택
		-국가/지역 동기화
 - 프로덕션
	- 국가/지역
		- 전부체크
	- 새버전만들기
		- app Bundle에 .aab파일 업로드
 
- 프로덕션 트랙으로 출시시작 버튼클릭

- IOS
  - main>나의앱>해당app>ios앱>제출중비중

  - 스토어 소개페이지에 나올 썸네일이미지 등록 (이미지 사이즈에 맞게 등록)   
  - 6.5형 디스플레이의 경우 1242 픽셀 x 2688 픽셀 (최소3개)   
  - 5.5형 디스플레이의 경우 1242 픽셀 x 2208 픽셀 (최소3개)   
  - 12.9형 디스플레이의 경우 2732 픽셀 x 2048 픽셀​ (최소3개)   


 - 프로모션 텍스트 : abc홈페이지 (앱 기능 소개)   
  - 키워드 : 앱스토어 노출 키워드   
  - 지원 URL : https://abc.ne.kr (앱에대한지원정보)   
  - 마케팅 URL : https://abc.ne.kr(마케팅페이지url)   
  - 설명 : abc 홈페이지입니다.(앱의 특징과 설명)   
  - 빌드 : 앱을 제출하기 전에 빌드를 선택하십시오 버튼클릭(빌드 할 프로젝트 선택)   
  - 버전: 1.0   
  - 저작권 : 2022 Abc Inc.  
  - 라우팅 앱 적용 범위 파일 (활성화할 범위 지정 - 선택사항)   

 - 앱심사정보   
  - 로그인 정보   
	- 회원전용 app일시 게스트계정 등록
		- 사용자 이름 : guest
		- 암호 : 1234
  - 연락처 정보   
	-이름 : 종남
	-성 : 임
	-전화번호 : + 82 1053454238
	-이메일:dev.4intel@gmail.com
 - 내용 확인 후 저장   

 - main>나의앱>해당app>일반정보 > 앱정보    
	- 현지화 가능한 정보   
        - 이름: abc-helloworld (앱 스토어에서 보여질 앱 이름)   
        - 부제: abc-helloworld (앱 스토어에서 보여지는 앱 이름 바로 하단의 부제)   
	- 일반 정보   
        - 번들 ID :  kr.ne.abc.helloworld (이전 화면에서 입력하고 들어왔기 때문에 자동으로 채워져 있다.)   
        - 카테고리 : 비즈니스( 카테고리를지정해주고 앱 정보 입력 (설정은 자유롭게 수정)   
        - 콘텐츠 권한 : 동의   
        - 연령 등급 : 유해한거 없음   
        - 내용확인 후저장   
 
 - main>나의앱>해당app>일반정보 > 앱이 수집하는 개인정보   
    - 편집버튼을 누르고    
    - 개인정보 처리방침 URL: https://www.abc.ne.kr/policy/privacy.html   
    - 사용자 개인정보 선택 사항 URL:https://www.abc.ne.kr/policy/service.html   

    - 개인정보 데이터 수집 시작하기 활성화(데이터 수집이 필요할시 시작하기 버튼클릭)    
    - 이앱에서 수집되는 유형 선택   
    - 이름, 이메일주소, 전화번호, 주소   

 - main>나의앱>해당app>일반정보 > 가격 및 사용 가능 여부  
    - 가격 :  무료 (앱 스토어에 등록할 가격)   
    - 내용확인 후저장   

 - main>나의앱>해당app>ios앱>제출중비중   
	심사를 위해 제출 버튼 클릭   


 - 상세내용은 bts-app/Documents/IOS배포 참조   




Google Play & App Store 배포
--------------------------------------------------------------------------------------
1. expo 명령어
    <pre>
        expo build:android
        expo build:ios
    </pre>
    
2. 문서참조
	- IOS TestFlight : /Documents/IOS빌드.docx
	- IOS : /Documents/IOS배포.docx  
	- ANDROID : /Documents/구글배포.docx 
