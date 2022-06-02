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
<title>마이페이지</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="sweetalert2/dist/sweetalert2.min.js"></script>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
   rel="stylesheet">
<style>
* {
   box-sizing: border-box;
   font-family: 'Noto Sans KR', sans-serif;
}

/* div { */
/*     border: 1px solid crimson; */
/* } */
button {
   border: none;
}

#con1 {
   height: 1000px;
   background-color: #121212;
   padding-top: 200px;
}

#main1 {
   width: 174px;
   height: 52px;
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   font-size: 36px;
   line-height: 52px;
   color: #FFFFFF;
}

#main2 {
   margin-top: 13px;
   width: 513px;
   height: 52px;
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 500;
   font-size: 18px;
   line-height: 26px;
   color: #FFFFFF;
}

#main3 {
   margin-top: 60px;
}

#main4 {
   margin-top: 160px;
   width: 408px;
   height: 52px;
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   font-size: 36px;
   line-height: 52px;
   color: #FFFFFF;
}

#main5 {
   margin-top: 12px;
   width: 315px;
   height: 26px;
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 500;
   font-size: 18px;
   line-height: 26px;
   text-align: center;
   color: #FFFFFF;
}

.qna {
   margin-top: 49px;
   width: 138px;
   height: 46px;
   background: #7A07EE;
   border-radius: 12px;
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   font-size: 18px;
   line-height: 26px;
   text-align: center;
   text-transform: uppercase;
   color: #FFFFFF;
}

#con5 {
   height: 100px;
   background-color: #0c0c0c;
}

#footer1, #footer2, #footer3 {
   margin-top: 38.43px;
}

#footer2 {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   font-size: 14px;
   line-height: 20px;
   color: #FFFFFF;
}

#footer3 {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   font-size: 14px;
   line-height: 20px;
   text-align: right;
   color: #6F6C77;
}

.navbar-nav>li {
   text-align: center;
   margin-left: 1rem;
   margin-right: 1rem;
   width: 100px;
}

#login {
   background-color: #7A07EE;
}

.centered {
   margin-left: 10rem;
}

nav {
   background-color: black;
}

.dropdown:hover .dropdown-menu {
   display: block;
   margin-top: 0;
}

#mypage:hover {
   background-color: #7A07EE;
}

#logout:hover {
   background-color: #7A07EE;
}

input[type$=xt], input[type$=word] {
   border: 0.5px solid #aaa;
   border-radius: 0;
   width: 100%;
   height: 80px;
   color: #ededed;
   padding: 0.6em 1.4em 0.5em 0.8em;
   background-color: #121212;
}

.btn {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   height: 45px;
   line-height: 30px;
   font-weight: bold;
   background-color: #7A07EE;
   color: #FFFFFF;
   border-radius: 12px;
   width: 130px;
   margin-top: 9%;
   border: none;
}

.left {
   margin-top: 20px;
   margin-bottom: 20px;
}

input:focus {
   border: 2px solid #7A07EE;
}
</style>
</head>

<body>
   
   <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>

        window.Kakao.init('7b7c27b8b856e91c28d1514aefbba77b');
        window.Kakao.Auth.setAccessToken(JSON.parse(sessionStorage.getItem('AccessKEY'))); //sessionStorage에 저장된 사용자 엑세스 토큰 받아온다.

        function kakaoLogout() {
            if (!Kakao.Auth.getAccessToken()) {
                console.log('Not logged in.');
                return;
            }
            Kakao.Auth.logout(function(response) {
                alert(response +' logout');
                window.location.href='/'
            });
        };

        function secession() {
            Kakao.API.request({
                url: '/v1/user/unlink',
                success: function(response) {
                    console.log(response);
                    //callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
                    window.location.href="/memberOut.member";
                },
                fail: function(error) {
                    console.log('탈퇴 미완료')
                    console.log(error);
                },
            });
        };

 
    </script>
   <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
      <div class="container">
         <a class="navbar-brand" href="/index.jsp" id=logo><img
            src="/img/logo2.png"></a>
         <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarCollapse">
            <ol class="navbar-nav centered">
               <li class="nav-item"><a class="nav-link active"
                  aria-current="page" href="/index.jsp">홈</a></li>
               <li class="nav-item"><a class="nav-link" href="/guide.jsp">가이드</a></li>
               <li class="nav-item"><a class="nav-link" href="#">MY퍼즐</a></li>
               <li class="nav-item"><a class="nav-link" href="#">포즐피디아</a></li>

            </ol>
            <ol class="nav-pills navbar-nav w-100 justify-content-end centered"
               id=po>
               <li class="nav-item"><a class="nav-link" aria-current="page"
                  href="/list.board?cpage=1">고객센터</a></li>
               <c:choose>
                  <c:when test="${loginID != null}">
                     <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" href="#"
                        id="navbarDropdownMenuLink" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"
                        style="color: #EDEDED;"> ${nickname}님 </a>
                        <ul class="dropdown-menu"
                           aria-labelledby="navbarDropdownMenuLink"
                           style="background-color: #121212;">
                           <c:choose>
                              <c:when test="${kakao == null}">
                                 <li><a class="dropdown-item" id="mypage"
                                    href="/myPage.member" style="color: #EDEDED;">마이페이지</a></li>
                              </c:when>
                           </c:choose>
                           <li><a id="logout" class="dropdown-item"
                              href="/logout.member" style="color: #EDEDED;">로그아웃</a></li>
                        </ul></li>

                  </c:when>
                  <c:otherwise>
                     <li class="nav-item"><a class="nav-link active"
                        aria-current="page" href="/member/login.jsp" id=login>로그인</a></li>
                  </c:otherwise>
               </c:choose>
            </ol>
         </div>
      </div>
   </nav>
   <form action="/update.member" method="post" id="frm" name="frm">
      <div id="con1">
         <div class="container">
            <div id="main1">마이페이지</div>
            <div align=center
               style="color: #ededed; width: 100%; margin-bottom: 5%;">
               <div class="left"
                  style="width: 40%; font-size: 20px; margin-top: 5%;" align=left>
                  아이디</div>
               <div class="right" style="width: 40%;">
                  <input type="text" value="${dto.id}" disabled>
               </div>
               <div class="left" style="width: 40%; font-size: 20px;" align=left>
                  비밀번호</div>
               <div class="right" style="width: 40%;">
                  <input type="password" value="" disabled class="editable" id="pw"
                     name="pw"> <input type="hidden" value="${dto.pw}"
                     id="originpw" name="originpw">
               </div>
               <div class="left" style="width: 40%; font-size: 20px;" align=left>
                  닉네임</div>
               <div class="right" style="width: 40%;">
                  <input type="text" name="nickname" id="nickname"
                     value="${dto.nickname}" disabled class="editable" id="nickname"
                     name="nickname">
               </div>
               <div id="btns" class="left" style="width: 40%; font-size: 20px;"
                  align=center>
                  <button class="btn" id="modify" type="button">수정</button>
                  <button class="btn" id="memberOut" type="button"
                     style="margin-left: 3%;">회원탈퇴</button>
               </div>
            </div>
         </div>
      </div>
   </form>
   <div class="col-12 d-none d-md-block">
      <div id="con5" align=center>
         <div class="container">
            <div class="row">
               <div class="col-6" id="footer1" align=left>
                  <img src="/img/group30.png">
               </div>
               <div class="col-1" id="footer2">이용약관</div>
               <div class="col-2" id="footer2">개인정보 처리방침</div>
               <div class="col-1" id="footer2">
                  <a href="/list.qnaboard?cpage=1"
                     style="text-decoration: none; color: white;">1:1 문의</a>
               </div>
               <div class="col-2" id="footer3">©2022 Fozzle, Inc.</div>
            </div>
         </div>
      </div>
   </div>
   <div class="col-12 d-block d-md-none">
      <div id="con5" align=center>
         <div class="container">
            <div class="row">
               <div class="col-6" id="footer1" align=left>
                  <img src="/img/group30.png">
               </div>
               <div class="col-6" id="footer3">©2022 Fozzle, Inc.</div>
            </div>
         </div>
      </div>
   </div>
</body>
<script>
    $("#modify").on("click",function(){
        $(".editable").removeAttr("disabled");
        $("#modify").css("display","none");
        $("#memberOut").css("display","none");
        $("#nickname").focus();
        
        let ok = $("<button>");
        ok.text("수정");
        ok.css("color", "#ededed");
        ok.attr("class","btn");
        ok.attr("id","submit")
        ok.attr("type","button");
        
        let cancel = $("<button>");
        cancel.text("취소");
        cancel.attr("class","btn");
        cancel.attr("type","button");
        cancel.css("margin-left","4%");
        cancel.on("click",function(){
            location.reload();
        })
        
        $("#btns").append(ok);
        $("#btns").append(cancel);
        
        
        $("#submit").on("click",function(){
            // 패스워드 검사
                  
            let pw = $("#pw").val();
            
            let pwRegex = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{8,20}$/;
            let pwResult = pwRegex.test(pw);
            
            if(pw != ""){
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
            }
                   
//             let pwRegex = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?=[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{10,}$/;
//             let pwResult = pwRegex.test(pw);
//             if (!pwResult) {
//                 alert("PW를 다시 입력해주세요.(영문,숫자,특수문자 중 최소 2가지 포함 10자 이상)");
//                 $("#pw").val("");
//                 $("pw_check").val("");
//                 $("#pw").focus();
//                 return false;
//             }

            // 닉네임 검사
            let nickname = $("#nickname").val();
         let nicknameRegex = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,8}$/;
         let nicknameResult = nicknameRegex.test(nickname);
         if (!nicknameResult) {
         Swal.fire({
            background: '#121212',
            html: "닉네임을 다시 입력하세요.<br>(특수문자 제외, 2-8자)",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
             })
                $("#nickname").val("");
            $("#nickname").focus();
            return false;
   }
         
          Swal.fire({
                 background: '#121212',
                 html: "수정하시겠어요?",
                 color: '#ededed',
                 showCancelButton: true,
                 confirmButtonColor: '#7a07ee',
                 cancelButtonColor: '#999999',
                 confirmButtonText: '확인',
                 cancelButtonText: '취소',
             }).then((result) => {
                 if (result.isConfirmed) {
                    $.ajax(
                             {
                                url : "/update.member",
                                data : {
                                   pw : $("#pw").val(),
                                   originpw : $("#originpw").val(),
                                   nickname : $("#nickname").val()
                                }
                             }).done(function(result) {
                                 console.log(result)
                                 location.reload();
                              })
                 }else {
                    return false;
                 }
})
             })          
    })
    
    
    
    
//     $("#memberOut").on("click", function() {
//                 let result = confirm("정말 탈퇴하시겠어요?");
//                 if(result){
//                     location.href="/memberOut.member";
//                 }
//             });
    
    $("#memberOut").on("click",function(){

        Swal.fire({
             background: '#121212',
             html: "정말 탈퇴하시겠어요..?",
             color: '#ededed',
             showCancelButton: true,
             confirmButtonColor: '#7a07ee',
             cancelButtonColor: '#999999',
             confirmButtonText: '확인',
             cancelButtonText: '취소',
         }).then((result) => {
             if (result.isConfirmed) {
             	secession();
                location.href="/memberOut.member";
             }else {
                      return false;
          }
         })
     });
        
        
     $("#back").on("click",function(){
         location.href="/index.jsp";
     })
     
     $("#logout").on("click",function(){
     	kakaoLogout();
    location.href = "/logout.member";
    });
     
</script>
</html>
	
	
	<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="sweetalert2/dist/sweetalert2.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}

/* div { */
/*     border: 1px solid crimson; */
/* } */
button {
	border: none;
}

#con1 {
	height: 1000px;
	background-color: #121212;
	padding-top: 200px;
}

#main1 {
	width: 174px;
	height: 52px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	color: #FFFFFF;
}

#main2 {
	margin-top: 13px;
	width: 513px;
	height: 52px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	font-size: 18px;
	line-height: 26px;
	color: #FFFFFF;
}

#main3 {
	margin-top: 60px;
}

#main4 {
	margin-top: 160px;
	width: 408px;
	height: 52px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	color: #FFFFFF;
}

#main5 {
	margin-top: 12px;
	width: 315px;
	height: 26px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	font-size: 18px;
	line-height: 26px;
	text-align: center;
	color: #FFFFFF;
}

.qna {
	margin-top: 49px;
	width: 138px;
	height: 46px;
	background: #7A07EE;
	border-radius: 12px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 18px;
	line-height: 26px;
	text-align: center;
	text-transform: uppercase;
	color: #FFFFFF;
}

#con5 {
	height: 100px;
	background-color: #0c0c0c;
}

#footer1, #footer2, #footer3 {
	margin-top: 38.43px;
}

#footer2 {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	color: #FFFFFF;
}

#footer3 {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	text-align: right;
	color: #6F6C77;
}

.navbar-nav>li {
	text-align: center;
	margin-left: 1rem;
	margin-right: 1rem;
	width: 100px;
}

#login {
	background-color: #7A07EE;
}

.centered {
	margin-left: 10rem;
}

nav {
	background-color: black;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}

#mypage:hover {
	background-color: #7A07EE;
}

#logout:hover {
	background-color: #7A07EE;
}

input[type$=xt], input[type$=word] {
	border: 0.5px solid #aaa;
	border-radius: 0;
	width: 100%;
	height: 80px;
	color: #ededed;
	padding: 0.6em 1.4em 0.5em 0.8em;
	background-color: #121212;
}

.btn {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	height: 45px;
	line-height: 30px;
	font-weight: bold;
	background-color: #7A07EE;
	color: #FFFFFF;
	border-radius: 12px;
	width: 130px;
	margin-top: 9%;
	border: none;
}

.left {
	margin-top: 20px;
	margin-bottom: 20px;
}

input:focus {
	border: 2px solid #7A07EE;
}
</style>
</head>

<body>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>

        window.Kakao.init('7b7c27b8b856e91c28d1514aefbba77b');
        window.Kakao.Auth.setAccessToken(JSON.parse(sessionStorage.getItem('AccessKEY'))); //sessionStorage에 저장된 사용자 엑세스 토큰 받아온다.

        function kakaoLogout() {
            if (!Kakao.Auth.getAccessToken()) {
                console.log('Not logged in.');
                return;
            }
            Kakao.Auth.logout(function(response) {
                alert(response +' logout');
                window.location.href='/'
            });
        };

        function secession() {
            Kakao.API.request({
                url: '/v1/user/unlink',
                success: function(response) {
                    console.log(response);
                    //callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
                    window.location.href="/memberOut.member";
                },
                fail: function(error) {
                    console.log('탈퇴 미완료')
                    console.log(error);
                },
            });
        };

 
    </script>

	<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/index.jsp" id=logo><img
				src="/img/logo2.png"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ol class="navbar-nav centered">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/index.jsp">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="/guide.jsp">가이드</a></li>
					<li class="nav-item"><a class="nav-link" href="#">MY퍼즐</a></li>
					<li class="nav-item"><a class="nav-link" href="#">포즐피디아</a></li>

				</ol>
				<ol class="nav-pills navbar-nav w-100 justify-content-end centered"
					id=po>
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="/list.board?cpage=1">고객센터</a></li>
					<c:choose>
						<c:when test="${loginID != null}">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								id="navbarDropdownMenuLink" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"
								style="color: #EDEDED;"> ${nickname}님 </a>
								<ul class="dropdown-menu"
									aria-labelledby="navbarDropdownMenuLink"
									style="background-color: #121212;">
									<c:choose>
										<c:when test="${kakao == null}">
											<li><a class="dropdown-item" id="mypage"
												href="/myPage.member" style="color: #EDEDED;">마이페이지</a></li>
										</c:when>
									</c:choose>
									<li><a id="logout" class="dropdown-item"
										href="/logout.member" style="color: #EDEDED;">로그아웃</a></li>
								</ul></li>

						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="/member/login.jsp" id=login>로그인</a></li>
						</c:otherwise>
					</c:choose>
				</ol>
			</div>
		</div>
	</nav>
	<form action="/update.member" method="post" id="frm" name="frm">
		<div id="con1">
			<div class="container">
				<div id="main1">마이페이지</div>
				<div align=center
					style="color: #ededed; width: 100%; margin-bottom: 5%;">
					<div class="left"
						style="width: 40%; font-size: 20px; margin-top: 5%;" align=left>
						아이디</div>
					<div class="right" style="width: 40%;">
						<input type="text" value="${dto.id}" disabled>
					</div>
					<div class="left" style="width: 40%; font-size: 20px;" align=left>
						비밀번호</div>
					<div class="right" style="width: 40%;">
						<input type="password" value="" disabled class="editable" id="pw"
							name="pw"> <input type="hidden" value="${dto.pw}"
							id="originpw" name="originpw">
					</div>
					<div class="left" style="width: 40%; font-size: 20px;" align=left>
						닉네임</div>
					<div class="right" style="width: 40%;">
						<input type="text" name="nickname" id="nickname"
							value="${dto.nickname}" disabled class="editable" id="nickname"
							name="nickname">
					</div>
					<div id="btns" class="left" style="width: 40%; font-size: 20px;"
						align=center>
						<button class="btn" id="modify" type="button">수정</button>
						<button class="btn" id="memberOut" type="button"
							style="margin-left: 3%;">회원탈퇴</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="col-12 d-none d-md-block">
		<div id="con5" align=center>
			<div class="container">
				<div class="row">
					<div class="col-6" id="footer1" align=left>
						<img src="/img/group30.png">
					</div>
					<div class="col-1" id="footer2">이용약관</div>
					<div class="col-2" id="footer2">개인정보 처리방침</div>
					<div class="col-1" id="footer2">
						<a href="/list.qnaboard?cpage=1"
							style="text-decoration: none; color: white;">1:1 문의</a>
					</div>
					<div class="col-2" id="footer3">©2022 Fozzle, Inc.</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-12 d-block d-md-none">
		<div id="con5" align=center>
			<div class="container">
				<div class="row">
					<div class="col-6" id="footer1" align=left>
						<img src="/img/group30.png">
					</div>
					<div class="col-6" id="footer3">©2022 Fozzle, Inc.</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
    $("#modify").on("click",function(){
        $(".editable").removeAttr("disabled");
        $("#modify").css("display","none");
        $("#memberOut").css("display","none");
        $("#nickname").focus();
        
        let ok = $("<button>");
        ok.text("수정");
        ok.css("color", "#ededed");
        ok.attr("class","btn");
        ok.attr("id","submit")
        ok.attr("type","button");
        
        let cancel = $("<button>");
        cancel.text("취소");
        cancel.attr("class","btn");
        cancel.attr("type","button");
        cancel.css("margin-left","4%");
        cancel.on("click",function(){
            location.reload();
        })
        
        $("#btns").append(ok);
        $("#btns").append(cancel);
        
        
        $("#submit").on("click",function(){
            // 패스워드 검사
                  
            let pw = $("#pw").val();
            
            let pwRegex = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{8,20}$/;
            let pwResult = pwRegex.test(pw);
            
            if(pw != ""){
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
            }
                   
//             let pwRegex = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?=[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{10,}$/;
//             let pwResult = pwRegex.test(pw);
//             if (!pwResult) {
//                 alert("PW를 다시 입력해주세요.(영문,숫자,특수문자 중 최소 2가지 포함 10자 이상)");
//                 $("#pw").val("");
//                 $("pw_check").val("");
//                 $("#pw").focus();
//                 return false;
//             }

            // 닉네임 검사
            let nickname = $("#nickname").val();
         let nicknameRegex = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,8}$/;
         let nicknameResult = nicknameRegex.test(nickname);
         if (!nicknameResult) {
         Swal.fire({
            background: '#121212',
            html: "닉네임을 다시 입력하세요.<br>(특수문자 제외, 2-8자)",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
             })
                $("#nickname").val("");
            $("#nickname").focus();
            return false;
   }
         
          Swal.fire({
                 background: '#121212',
                 html: "수정하시겠어요?",
                 color: '#ededed',
                 showCancelButton: true,
                 confirmButtonColor: '#7a07ee',
                 cancelButtonColor: '#999999',
                 confirmButtonText: '확인',
                 cancelButtonText: '취소',
             }).then((result) => {
                 if (result.isConfirmed) {
                    $.ajax(
                             {
                                url : "/update.member",
                                data : {
                                   pw : $("#pw").val(),
                                   originpw : $("#originpw").val(),
                                   nickname : $("#nickname").val()
                                }
                             }).done(function(result) {
                                 console.log(result)
                                 location.reload();
                              })
                 }else {
                    return false;
                 }
})
             })          
    })
    

    
    $("#memberOut").on("click",function(){

       Swal.fire({
            background: '#121212',
            html: "정말 탈퇴하시겠어요..?",
            color: '#ededed',
            showCancelButton: true,
            confirmButtonColor: '#7a07ee',
            cancelButtonColor: '#999999',
            confirmButtonText: '확인',
            cancelButtonText: '취소',
        }).then((result) => {
            if (result.isConfirmed) {
            	secession();
               location.href="/memberOut.member";
            }else {
                     return false;
         }
        })
    });
       
       
    $("#back").on("click",function(){
        location.href="/index.jsp";
    })
    
    $("#logout").on("click",function(){
    	kakaoLogout();
   location.href = "/logout.member";
   });
    
  

</script>
</html> --%>