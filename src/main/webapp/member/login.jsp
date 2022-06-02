<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="sweetalert2/dist/sweetalert2.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
}

#container {
	padding: 0px;
	background-image: url(/img/joinmain2.png);
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
}

#header div {
	float: left;
	width: 50%;
}

#center {
	height: 100%;
	width: 16%;
	color: #EDEDED;
}

input[type$=xt], input[type$=word] {
	border: 0.5px solid #aaa;
	border-radius: 0;
	width: 100%;
	height: 50px;
	padding: 0.6em 1.4em 0.5em 0.8em;
}

#login {
	width: 100%;
	height: 100%;
}

#submit {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	width: 350px;
	height: 50px;
	line-height: 45px;
	font-weight: bold;
	background-color: #7A07EE;
	color: #FFFFFF;
	border-radius: 5px;
	margin-top: 10px;
	border: none;
}

#row1>div {
	float: left;
	width: 50%;
	height: 100%;
}

.bigbtn {
	width: 200px;
	height: 45px;
	top: 488px;
	background: #7A07EE;
	border-radius: 12px;
	font-weight: 700;
	font-size: 16px;
	text-align: center;
	color: #FFFFFF;
	border: none;
	margin-right: 20px;
	margin-top: 5px;
}

a{
text-decoration:none;
color: #aaaaaa;
}

a:hover{
color:#7A07EE;
}
</style>
</head>
<body>
	<form action="/login.member" method="post">
		<div id="container">
			<div id="header" style="padding-bottom:290px;">
				<div id="hleft">
					<a href="/index.jsp"><img src="/img/logo2.png"
						style="margin-top: 15px; margin-left: 25px;"></a>
				</div>
				<div id="hright" align=right>
					<a href="/member/joinmember.jsp">
						<button type="button" class="bigbtn" style="margin-top: 15px;">회원가입</button>
					</a>
				</div>
			</div>
			<div id="contents" style="width: 100%;"
				align=center>
				<div id="row1" style="width: 350px; height: 15px;" padding-bottom:40px;>
					<div id="left1"
						style="font-weight: bold; font-size: 20px; color: #ededed; text-align:left;">로그인
					</div>
					<div id="left2"
						style="font-size: 11px; line-height: 25px; padding-top:8px;"
						align=right>
						<a href="/member/findpassword.jsp">비밀번호를 잊어버리셨나요?</a>
					</div>
				</div>
				<br>
				<div id="row2" style="width: 100%; font-size: 14px;">
					<input type="text" id="id" name="id"
						placeholder="이메일 (example@gmail.com)"
						style="width: 350px; border-top-left-radius: 5px; border-top-right-radius: 5px; border: none; border-bottom: 0.5px solid #ddd;">
				</div>
				<div id="row3" style="width: 100%; font-size: 14px;">
					<input type="password" id="pw" name="pw" placeholder="비밀번호"
						style="width: 350px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; border: none;">
				</div>
				<div id="login" align=center>
					<button type="submit" id="submit">로그인</button>
					<br> <a href="javascript:kakaoLogin();"><img
						src="/img/kakao.png"
						style="width: 350px; height: 50px; margin-top: 10px;"></a>
				</div>
			</div>
		</div>
	</form>
	<form action="/kakaoLogin.member" method="post" name=frm>
		<input type="hidden" name=kakaoId id="kakaoId"> <input
			type="hidden" name=kakaoNickname id="kakaoNickname">
	</form>
</body>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('7b7c27b8b856e91c28d1514aefbba77b');
console.log(Kakao.isInitialized());

//카카오로그인

function saveToDos(token) { //item을 localStorage에 저장합니다. 
            typeof(Storage) !== 'undefined' && sessionStorage.setItem('AccessKEY', JSON.stringify(token)); 
        };
        
  
 
function kakaoLogin() {
           window.Kakao.Auth.login({
               scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
               success: function(response) {
                   console.log(response) // 로그인 성공하면 받아오는 데이터
             
                   saveToDos(response.access_token)
       
                   
                   window.Kakao.API.request({ // 사용자 정보 가져오기 
                       url: '/v2/user/me',
                       success: (res) => {
                           const kakao_account = res.kakao_account;
                           
                           
                           console.log(kakao_account.email);
                           console.log((kakao_account.profile).nickname);
                           
                             $("#kakaoId").val(kakao_account.email);
                          $("#kakaoNickname").val((kakao_account.profile).nickname);
                          
                           document.frm.submit();
                           
                       }
                   });
               },
               fail: function(error) {
                   console.log(error);
               }
           });
       }
       
$("#join").on("click", function() {
	   location.href = "join.member";
	   })

	   $("#pwFind").on("click", function() {
	   location.href = "pwFind.member";
	   })

$("#submit").on("click", function() {
	// 아이디 검사
	let id = $("#id").val();
	let idRegex = /[\w\.\-]+@[\w]+\.[\w]+/;
	let idResult = idRegex.test(id);
	if (!idResult) {
		Swal.fire({
            background: '#121212',
            html: "아이디를 이메일 형식으로 입력하세요.",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
       		})
       			$("#id").val("");
				$("#id").focus();
				return false;
	}
	// 패스워드 검사
	let pw = $("#pw").val();
	let pwRegex = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{8,20}$/;
	let pwResult = pwRegex.test(pw);
	if (!pwResult) {
		Swal.fire({
            background: '#121212',
            html: "비밀번호를 다시 입력하세요.<br>(숫자, 특수문자 중 최소 1가지 포함 영문 대소문자 8-20자)",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
       		})
       			$("#pw").val("");
				$("#pw").focus();
				return false;
	}

	// 닉네임 검사
	let nickname = $("#nickname").val();
	let nicknameRegex = /[\w가-힣]{2,8}/;
	let nicknameResult = nicknameRegex.test(nickname);
	if (!nicknameResult) {
		Swal.fire({
            background: '#121212',
            html: "닉네임을 다시 입력하세요.<br>(특수문자 제외, 2~8자)",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
       		})
       			$("#nickname").val("");
				$("#nickname").focus();
				return false;
	}

    // 체크박스 검사
    if ((document.getElementById('chk3').checked == false) || (document.getElementById('chk4').checked == false)) {
    	Swal.fire({
            background: '#121212',
            html: "필수 항목에 동의해주세요.",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
       		})
       		return false;
	}
});
</script>
</html>