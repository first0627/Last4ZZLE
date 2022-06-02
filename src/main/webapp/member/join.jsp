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
    <title>회원가입</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="sweetalert2/dist/sweetalert2.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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
            width:50%;
        }

        #contents div {
            float: left;
        }

        #center {
            height: 100%;
            width: 16%;
            color: #EDEDED;
        }

        /* div {
            border: 1px solid white;
        } */

        input[type$=xt], input[type$=password]  {
            border: 0.5px solid #aaa;
            border-radius: 0;
            width: 100%;
            height: 50px;
            padding: 0.6em 1.4em 0.5em 0.8em;
        }

        input[type="checkbox"] {
            width: 1rem;
            height: 1rem;
            border-radius: 50%;
            border: 1px solid #ddd;
            appearance: none;
            cursor: pointer;
            transition: background 0.2s;
            vertical-align: -4px;
            margin-top: 2%;
            margin-right: 2%;
        }

        input[type="checkbox"]:checked {
            background: #7A07EE;
            border: none;
        }

        #submit, #back {
			font-family: 'Noto Sans KR';
			font-style: normal;
			font-weight: 700;
            width: 100%;
            height: 45px;
            line-height: 45px;
            font-weight: bold;
            background-color: #7A07EE;
            color: #FFFFFF;
            border-radius: 12px;
            width: 100%; 
            margin-top: 2%; 
            border: none;
        }
        
        .bigbtn {
	flex-direction: row;
	width: 200px;
	height: 45px;
	top: 488px;
	background: #7A07EE;
	border-radius: 12px;
	font-weight: 700;
	font-size: 16px;
	text-align: center;
	color: #FFFFFF;
	flex-direction: row;
	border:none;
	margin-right:20px;
}
    </style>
</head>
<body>
<form method="post" action="/joinCheck.member" id="frm">
    <div id="container">
        <div id="header" style="padding-top: 1%;">
            <div id="hleft">
                <a href="/index.jsp"><img src="/img/logo2.png" style="margin-left: 5%;"></a>
            </div>
            <div id="hright" align=right><a href="/member/login.jsp">
            <button type="button" class="bigbtn">로그인</button>
            </a></div>
        </div>
        <div style="height: 30%;"></div>
        <div id="contents">
            <div id="left" style="float:left; width: 36%;">　</div>
            <div id="center" style="float:left; width: 28%;">
                <div id="row1" style="font-weight: bold; font-size: 18px; width: 100%; padding-bottom: 2%;">회원가입</div>
                <br>
                <div id="row2" style="width: 100%; font-size: 14px;">
                    <input type="text" name="id" id="id" placeholder="이메일 (example@gmail.com)"
                    style="width: 75%; border-top-left-radius: 5px; border-top-right-radius: 5px; border: none; border-bottom: 0.5px solid #ddd;">
                        <button type="button" id="duplCheck" style="margin-left: 2%; width: 20%; background-color: #7A07EE; border: none; border-radius: 12px; height: 30px; font-size: 12px; color: #ededed; font-weight:none">중복확인</button>
                </div>
                <div id="row3" style="width: 100%; font-size: 14px;">
                    <input type="password" name="pw" id="pw" placeholder="숫자, 특수문자 중 최소 1가지 포함 영문 대소문자 8-20자"
                        style="border: none; border-bottom: 0.5px solid #ddd; width:75%; margin-right: 2%;">
                </div>
                <div id="row4" style="width: 75%; font-size: 14px;">
                        <input type="text" name="nickname" id="nickname" placeholder="이름 (2자 이상)" style="border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; border: none;"
                    >
                </div>
                <!-- <div id="row2" style="width: 75%; font-size: 14px;">
                    <input type="text" name="nickname" id="nickname" placeholder="이름 (2자 이상)"
                        style="border-top-left-radius: 5px; border-top-right-radius: 5px; border: none; border-bottom: 0.5px solid #ddd;">
                </div>
                <div id="row3" style="width: 100%; font-size: 14px;">
                    <input type="text" name="id" id="id" placeholder="이메일 (example@gmail.com)"
                        style="border: none; border-bottom: 0.5px solid #ddd; width:75%; margin-right: 2%;">
                        <button type="button" id="duplCheck" style="width: 20%; background-color: #7A07EE; border: none; border-radius: 20px; height: 30px; font-size: 12px; color: #ededed;">중복확인</button>
                </div>
                <div id="row4" style="width: 75%; font-size: 14px;">
                    <input type="password" name="pw" id="pw" placeholder="영문, 숫자, 특문 중 2개 조합 10자 이상"
                        style="border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; border: none;">
                </div> -->
                <div id="row5"></div>
                <div id="checkbox" style="width:70%; font-size:11px; margin-top: 4%; color: #ddd; letter-spacing: -1px;">
                <input type="checkbox" name="" id="chk1" style="margin-top: 0;"> 전체 약관에 동의합니다<br>
                <input type="checkbox" name="" id="chk2"> 만 14세 이상입니다<br>
                <input type="checkbox" name="" id="chk3"> 포즐 서비스 이용약관에 동의합니다 (필수)<br>
                <input type="checkbox" name="" id="chk4"> 개인정보 수집 및 이용에 대한 안내에 대해 동의합니다 (필수)<br>
                <input type="checkbox" name="" id="chk5"> 신작 알림 이벤트 정보 수신에 동의합니다 (선택)<br>
                </div>
                <button type="submit" id="submit">회원가입</button>
                <button type="button" id="back">돌아가기</button>
            </div>
            <div id="right" style="float:left; width: 36%;"></div>
        </div>
    </div>
</form>
</body>
<script>
            $("#duplCheck").on("click",function(){
			// 아이디 입력했는지 먼저 확인
			if($("#id").val()==""){
			Swal.fire({
            background: '#121212',
            html: "아이디를 먼저 입력하세요.",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
       		})
				return false;
			}
			
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
			
			// AJAX로 중복확인
			$.ajax({
				url:"/duplCheck.member",
				data:{id:$("#id").val()}
			}).done(function(resp){
				let result = JSON.parse(resp);
				if(result==true){
					Swal.fire({
			            background: '#121212',
			            html: "이미 사용중인 아이디입니다.",
			            color: '#ededed',
			            showCancelButton: false,
			            confirmButtonColor: '#7a07ee',
			            confirmButtonText: '확인'
			       		})
			       			$("#id").val("");
							$("#id").focus();
							return false;
				}else if(result==false){
					Swal.fire({
			            background: '#121212',
			            html: "사용 가능한 아이디입니다.<br>이 아이디를 사용하시겠어요?",
			            color: '#ededed',
			            showCancelButton: true,
			            confirmButtonColor: '#7a07ee',
			            cancelButtonColor: '#999999',
			            confirmButtonText: '확인',
			            cancelButtonText: '취소',
			        }).then((result) => {
			            if (result.isConfirmed) {
			            	$("#pw").focus();
			            }else {
										$("#id").val("");
										$("#id").focus();
										return false;
				}
			        })
				}
			});
		})

    // 유효성 검사
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
		
		$("#back").on("click",function(){
			location.href="/index.jsp";
		})

        // 체크박스 전체 선택
        $('#chk1').click(function(){
		let checked = $('#chk1').is(':checked');
		
		if(checked)
			$('input:checkbox').prop('checked',true);
        else 
            $('input:checkbox').prop('checked',false);
	    });

</script>
</html>