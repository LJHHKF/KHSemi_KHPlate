<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 shrink-to-fit=no">


<!-- Title Page-->
<title>Login Form</title>

<link
	rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.js"></script>


<link
	href="https://cdnjs.cloudflare.com/ajax/libs/typicons/2.1.2/typicons.min.css">

<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400'"
	rel="stylesheet">

<!-- Main CSS-->
<link href="css/main.css" rel="stylesheet" media="all">
</head>
<style>
body, html {
	font-family: 'Source Sans Pro', sans-serif;
	background-color: #ED1C16;
	padding: 0;
	margin: 0;
}

#particles-js {
	position: absolute;
	width: 100%;
	height: 100%;
}

.container {
	margin: 0;
	top: 50px;
	left: 50%;
	position: absolute;
	text-align: center;
	transform: translateX(-50%);
	background-color: white;
	border-radius: 9px;
	border-top: 10px solid #57b846;
	border-bottom: 10px solid #57b846;
	width: 400px;
	height: 550px;
}

.box h4 {
	font-family: 'Source Sans Pro', sans-serif;
	color: #ED1C16;
	font-size: 18px;
	margin-top: 55px;;
}

.box h5 {
	font-family: 'Source Sans Pro', sans-serif;
	font-size: 13px;
	color: #a1a4ad;
	letter-spacing: 1.5px;
	margin-top: -15px;
	margin-bottom: 70px;
}

.box input[type="text"], .box input[type="password"] {
	display: block;
	margin: 20px auto;
	background: #f2f2f2;
	border: 0;
	border-radius: 5px;
	padding: 14px 10px;
	width: 320px;
	outline: none;
	color: #000000;
	-webkit-transition: all .2s ease-out;
	-moz-transition: all .2s ease-out;
	-ms-transition: all .2s ease-out;
	-o-transition: all .2s ease-out;
	transition: all .2s ease-out;
}

::-webkit-input-placeholder {
	color: #565f79;
}

.box input[type="text"]:focus, .box input[type="password"]:focus {
	border: 1px solid #79A6FE;
}

a {
	color: #5c7fda;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

label input[type="checkbox"] {
	display: none; /* hide the default checkbox */
}

/* style the artificial checkbox */
/* label span {
	height: 13px;
	width: 13px;
	border: 2px solid #464d64;
	border-radius: 2px;
	display: inline-block;
	position: relative;
	cursor: pointer;
	float: left;
	left: 7.5%;
} */
.btn {
	border: 0;
	border-radius: 100px;
	width: 340px;
	height: 49px;
	font-size: 16px;
	position: absolute;
	left: 8%;
	transition: 0.3s;
	cursor: pointer;
}

#signupBtn:hover {
	background: #4dae3c;
}

#signupBtn {
	top: 62%;
	background: #57b846;
	color: #dfdeee;
}

#kakaoBtn {
	top: 72%;
	background: #ffe812;
	background-image: url(kakao3.png);
	background-size: 320px 50px;
	background-position: top;
	background-position: 10px;
}

#naverBtn {
	top: 82%;
	background: #57b846;
	/* background-image: url(naver13.png);
    background-size: 270px 70px;
     */
	background-image: url(naver17.png);
	background-size: 300px 80px;
	background-position: 30px;

	/* background-position: left;
    background-position: -20px; */
}

.rmb {
	position: absolute;
	margin-left: -24%;
	margin-top: 0px;
	color: #a1a4ad;
	font-size: 13px;
}

.forgetpass {
	position: relative;
	float: right;
	right: 40px;
}

.dnthave {
	position: absolute;
	top: 93%;
	left: 28%;
}

[type=checkbox]:checked+span:before /*style its checked state  */ {
	font-family: FontAwesome;
	font-size: 16px;
	content: "\f00c";
	position: absolute;
	top: -4px;
	color: #ED1C16;
	left: -1px;
	width: 13px;
}

.typcn {
	position: absolute;
	left: 339px;
	top: 282px;
	color: #c8b6b6;
	font-size: 22px;
	cursor: pointer;
}

.typcn.active {
	color: #b7c2b5;
}

.error {
	background: #ff3333;
	text-align: center;
	width: 337px;
	height: 20px;
	padding: 2px;
	border: 0;
	border-radius: 5px;
	margin: 10px auto 10px;
	position: absolute;
	top: 19%;
	left: 7.2%;
	color: white;
	display: none;
}

#naverIdLogin {
	width: 215px;
	height: 55px;
	background-color: rgb(3, 199, 90);
	font-size: 18px;
}

.eyes {
	cursor: pointer;
	margin-left: 330px;
	margin-top: -71px;
	position: absolute;
}

.input-wrap {
	font-size: 13px;
}

#checkId {
	margin-left: -117px;
}

.forgetpass {
	margin-top: 3px;
}

#naverIdLogin img {
	width: 100%;
	height: 100%;
	opacity: 0;
}

#naverIdLogin {
	background-color: #ED1C1600;
}

#naverIdLogin {
	width: 330px;
	height: 47px;	
	position: relative;
	top: 18px;
	cursor: pointer;
	margin-left: 42px;
	margin-top: 10px;
	font-size: 18px;
}



#kakaobtn2 {
	width: 333px;
	height: 47px;
	position: relative;
	top: 18px;
	cursor: pointer;
	margin-left: 37px;
	margin-top: 57px;
	font-size: 18px;
	opacity: 0;
}

.forgetpass{
cursor:pointer;}



</style>

<body id="particles-js"></body>
<div class="animated bounceInDown">
	<div class="container">
		<span class="error animated tada" id="msg"></span>
		<form name="form1" class="box" onsubmit="return checkStuff()">
			<h4>KHPLATE</h4>
			<h5>오늘은 뭐 먹지?</h5>
			<div class="input password">
				<input type="text" name="id" id="id" placeholder="ID"
					autocomplete="off"> <i class="typcn typcn-eye" id="eye"></i>

				<input type="password" name="password" id="password"
					placeholder="PW" autocomplete="off" class="form-input">
				<div class="box">
					<span class="input-wrap"> <input type="checkbox"
						id="checkId" name="checkId"> <label for="checkId"><span></span></label>
						아이디저장 <div class="forgetpass"> 아이디/비밀번호 찾기</div>
					</span>
					<!-- <div id="idsave">아이디 저장</div> -->
				</div>
				<div class="eyes">
					<i class="fa fa-eye fa-lg"></i>
				</div>
			</div>
			<!-- <label> <input type="checkbox"> <span></span> <small
				class="rmb">ID 기억하기</small></label> -->
			<input type="submit" value="Sign in" class="btn" id="signupBtn">
			<input type="button" value="" class="btn" id="kakaoBtn"> 
			  <div id="kakaobtn2" onclick="kakaoLogin();">
                    <a href="javascript:void(0)">
                        
                    </a>
                </div>
			
			<input type="button" value="" class="btn" id="naverBtn">
			<div id="naverIdLogin"></div>
		</form>
		<a href="/joinform/joinform.jsp" class="dnthave">처음이세요? 회원가입하기</a>
	</div>
</div>


<script>

$(".forgetpass").on("click", function() {
	window.open("/memberSearch/idsearch.jsp","","width=480px,height=750px");
	
})


	$("#signup").on("click", function() {
	
	location.href = "/joinform/joinform.jsp";
})



	var pw = document.getElementById('password');
	var eye = document.getElementById('eye');

	eye.addEventListener('click', togglePass);

	function togglePass() {

		eye.classList.toggle('active');

		(pw.type == 'password') ? pw.type = 'text' : pw.type = 'password';
	}

	$(function() {
		// 눈표시 클릭 시 패스워드 보이기
		$('.eyes').on(
				'click',
				function() {
					$('.input.password').toggleClass('active');

					if ($('.input.password').hasClass('active') == true) {
						$(this).find('.fa-eye').attr('class',
								"fa fa-eye-slash fa-lg").parents('.input')
								.find('#password').attr('type', "text");
						// i 클래스                // 텍스트 보이기 i 클래스
					} else {
						$(this).find('.fa-eye-slash').attr('class',
								"fa fa-eye fa-lg").parents('.input').find(
								'#password').attr('type', 'password');
					}
				});
	});
	//
	$(document).ready(function() {
		// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
		var key = getCookie("key");
		$("#id").val(key);

		// 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
		if ($("#id").val() != "") {
			$("#checkId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
		}
	})
	$("#checkId").change(function() { // 체크박스에 변화가 있다면,
		if ($("#checkId").is(":checked")) { // ID 저장하기 체크했을 때,
			setCookie("key", $("#id").val(), 7); // 7일 동안 쿠키 보관
		} else { // ID 저장하기 체크 해제 시,
			deleteCookie("key");
		}
	});

	// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
	$("#id").keyup(function() { // ID 입력 칸에 ID를 입력할 때,
		if ($("#checkId").is(":checked")) { // ID 저장하기를 체크한 상태라면,
			setCookie("key", $("#id").val(), 7); // 7일 동안 쿠키 보관
		}
	});

	// 쿠키 저장하기 
	// setCookie => saveid함수에서 넘겨준 시간이 현재시간과 비교해서 쿠키를 생성하고 지워주는 역할
	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}

	// 쿠키 삭제
	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}

	// 쿠키 가져오기
	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) { // 쿠키가 존재하면
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
				end = cookieData.length;
			console.log("end위치  : " + end);
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}

	//naver
	const naverLogin = new naver.LoginWithNaverId({
		clientId : "Mm9YQgxstdSEuf5xt0jg",
		callbackUrl : "http://127.0.0.1:8090/naver-login",
		loginButton : {
			color : "green",
			type : 2,
			height : 40
		}
	});
	naverLogin.init(); // 로그인 설정

	naverLogin.getLoginStatus(function(status) {
		if (status) {
			const nickName = naverLogin.user.getNickName();
			const age = naverLogin.user.getAge();
			const birthday = naverLogin.user.getBirthday();

			//닉네임을 선택하지 않으면 선택창으로 돌아갑니다.
			if (nickName === null || nickName === undefined) {
				alert("별명이 필요합니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			} else {
				setLoginStatus(); //모든 필수 정보 제공 동의하면 실행하는 함수
			}
		}
	});
	naverLogin.init(); // 로그인 설정

	//kakao

	Kakao.init('25e12e36964674d52a9931b02d3b7cc1'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단

	//카카오로그인
	function kakaoLogin() {
		Kakao.Auth.login({
			success : function(response) {
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(response) {
						console.log(response)
					},
					fail : function(error) {
						console.log(error)
					},
				})
			},
			fail : function(error) {
				console.log(error)
			},
		})
	}

	// Form Validation

	function checkStuff() {
		var id = document.form1.id;
		var password = document.form1.password;
		var msg = document.getElementById('msg');

		if (id.value == "") {
			msg.style.display = 'block';
			msg.innerHTML = "Please enter your id";
			id.focus();
			return false;
		} else {
			msg.innerHTML = "";
		}

		if (password.value == "") {
			msg.innerHTML = "Please enter your password";
			password.focus();
			return false;
		} else {
			msg.innerHTML = "";
		}
		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if (!re.test(id.value)) {
			msg.innerHTML = "Please enter a valid id";
			id.focus();
			return false;
		} else {
			msg.innerHTML = "";
		}

		// 정규식 검사에 해당되지 않으면 로그인
		$.ajax({
			url : "/login.members",
			type : "post",
			data : {
				id : $("#id").val(),
				password : $("#pw").val()
			}
		}).done(function(resp) {
			if (resp == "1") {
				alert("ID가 잘못 되었습니다.");
			} else if(resp == "2"){
				alert("비밀번호가 잘못 되었습니다.");
			} else if(resp == "3"){
				alert("이메일 인증이 되지 않았습니다.");
			} else {
				alert("로그인 되었습니다.");
				location.href = "/page/main.jsp";
			}
		})
// 		$("#loginForm").submit();
	}

	// ParticlesJS

	// ParticlesJS Config.
	particlesJS("particles-js", {
		"particles" : {
			"number" : {
				"value" : 60,
				"density" : {
					"enable" : true,
					"value_area" : 800
				}
			},
			"color" : {
				"value" : "#ffffff"
			},
			"shape" : {
				"type" : "circle",
				"stroke" : {
					"width" : 0,
					"color" : "#000000"
				},
				"polygon" : {
					"nb_sides" : 5
				},
				"image" : {
					"src" : "img/github.svg",
					"width" : 100,
					"height" : 100
				}
			},
			"opacity" : {
				"value" : 0.1,
				"random" : false,
				"anim" : {
					"enable" : false,
					"speed" : 1,
					"opacity_min" : 0.1,
					"sync" : false
				}
			},
			"size" : {
				"value" : 6,
				"random" : false,
				"anim" : {
					"enable" : false,
					"speed" : 40,
					"size_min" : 0.1,
					"sync" : false
				}
			},
			"line_linked" : {
				"enable" : true,
				"distance" : 150,
				"color" : "#ffffff",
				"opacity" : 0.1,
				"width" : 2
			},
			"move" : {
				"enable" : true,
				"speed" : 1.5,
				"direction" : "top",
				"random" : false,
				"straight" : false,
				"out_mode" : "out",
				"bounce" : false,
				"attract" : {
					"enable" : false,
					"rotateX" : 600,
					"rotateY" : 1200
				}
			}
		},
		"interactivity" : {
			"detect_on" : "canvas",
			"events" : {
				"onhover" : {
					"enable" : false,
					"mode" : "repulse"
				},
				"onclick" : {
					"enable" : false,
					"mode" : "push"
				},
				"resize" : true
			},
			"modes" : {
				"grab" : {
					"distance" : 400,
					"line_linked" : {
						"opacity" : 1
					}
				},
				"bubble" : {
					"distance" : 400,
					"size" : 40,
					"duration" : 2,
					"opacity" : 8,
					"speed" : 3
				},
				"repulse" : {
					"distance" : 200,
					"duration" : 0.4
				},
				"push" : {
					"particles_nb" : 4
				},
				"remove" : {
					"particles_nb" : 2
				}
			}
		},
		"retina_detect" : true
	});
</script>
</body>
</html>






















