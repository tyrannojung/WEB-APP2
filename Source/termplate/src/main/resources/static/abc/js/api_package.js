function appDeviceCheck() {
	deviceType = localStorage.getItem("dtype");
}

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

function appReceiveMsg(message){
	var data = JSON.parse(message.data);
	if(data['loginchk'] == 'google' && data['type'] == 'success')
		app_googleLogin(data);
	else if (data['loginchk'] == 'facebook')
		app_facebookLogin(data);
}

//구글로그인//

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

// App
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


// WEB구글로그인
function goolegAsyncInit() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}
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
function onSignInFailure(t){		
	console.log(t);
}
///////////////
 
 //페이스북 로그인
function facebookLogin(){
	if(deviceType != null) {
		ReactNativeWebView.postMessage('facebook');
	} else {
		fnFbCustomLogin();
	}
}

// App
function app_facebookLogin(data){
	alert("페이스북로그인 성공 \n token : " + data['token']);
	alert(
		"user : \n" + "email : "
		+ data['email']  
		+ "\n name : "
		+ data['name']);
}

function fbAsyncInit() {
	FB.init({
		appId      : '1588150011384568', // 앱 ID
		cookie     : true,
		xfbml      : true,
		version    : 'v10.0'
	});
	FB.AppEvents.logPageView();   
}

function statusChangeCallback(res){
	statusChangeCallback(response);
}

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

