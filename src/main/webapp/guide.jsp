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
<title>가이드</title>
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
	font-family: 'Noto Sans KR', sans-serif;
}

/* div { */
/*  	border: 1px solid crimson; */
/* } */

button {
	border:none;
}

#con1 {
	height: 100%;
	width:100%;
	background-color: #121212;
	padding-top: 200px;
	padding-bottom:150px;
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

margin-left:50px;
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
margin-left:50px;
}

#main3 {
margin-top:60px;
}

#main4 {
margin-top:160px;
width: 430px;
height: 52px;

font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 36px;
line-height: 52px;

color: #FFFFFF;
}

#main5{
margin-top:12px;
width: 320px;
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
margin-top:49px;
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

#footer1,#footer2,#footer3 {
	margin-top: 38.43px;
} 

#footer2{
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 14px;
line-height: 20px;
color: #FFFFFF;
}

#footer3{
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
	background-color:#7A07EE;
}

.centered {
     margin-left:10rem;
}

nav {
	background-color: black;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
	
}

#mypage:hover{
	background-color : #7A07EE;
}
#logout:hover{
	background-color : #7A07EE;
}

#nopuzzle:hover{
cursor:pointer;
}

</style>
</head>

<body>
<nav class="navbar navbar-expand-md navbar-dark fixed-top">
			<div class="container">
				<a class="navbar-brand" href="/index.jsp" id=logo><img src="/img/logo2.png"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ol class="navbar-nav centered">
						<li class="nav-item"><a class="nav-link"
							aria-current="page" href="/index.jsp">홈</a></li>
						<li class="nav-item"><a class="nav-link active" href="/guide.jsp">가이드</a></li>
						<c:choose>
						<c:when test="${loginID != null}">
						<li class="nav-item"><a class="nav-link" href="./ifPartyExists.party">MY퍼즐</a></li>
						</c:when>
						<c:otherwise>
						<li class="nav-item"><a id="nopuzzle" class="nav-link">MY퍼즐</a></li>
						</c:otherwise>
						</c:choose>
						<li class="nav-item"><a class="nav-link" href="/contents/main.jsp">포즐피디아</a></li>

					</ol>
					<ol class="nav-pills navbar-nav w-100 justify-content-end centered" id=po>
						<li class="nav-item"><a class="nav-link" aria-current="page" href="/list.board?cpage=1">고객센터</a></li>
						<c:choose>
						<c:when test="${loginID != null}">
                        <li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"
									style="color: #EDEDED;">
										${nickname}님 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink"
										style="background-color: #121212;">
							
										<li><a class="dropdown-item" id = "mypage" href="/myPage.member"
											style="color: #EDEDED;">마이페이지</a></li>
									
										<li><a id="logout" class="dropdown-item" href="/logout.member"
											style="color: #EDEDED;">로그아웃</a></li>
									</ul></li>

                        </c:when>
						<c:otherwise>
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="/member/login.jsp" id = login>로그인</a></li>
						</c:otherwise>
						</c:choose>
					</ol>
				</div>
			</div>
		</nav>
		
<div id="con1">
	<div class="container">
	<div class="row">
			<div class="col-12 d-none d-md-block" style="width:100%;">
				<div id="main1">
					포즐 가이드
				</div>
				<div id="main2">
					포즐은 '계정 공유 요금제'로 인해 생기는 고객들의 불편함을 해소하고,<br>기존에 보호받을 수 없었던 고객들의 돈을 안전하게 보호합니다!
				</div>	
				<div id="main3" align=center>			
				<img id="guide" src="/img/frame9.png" style="width:90%;">
				</div>
				<div align=center>
				<div id="main4" align=center>더 궁금한 점이 있으신가요?</div>
				<div id="main5" align=center>언제든지 포즐 고객센터를 통해 문의하세요.</div>
				<a href="/list.qnaboard?cpage=1"><button class="qna">1:1 문의하기</button></a>
				</div>
		</div>
		<div class="col-12 d-block d-md-none" style="width:100%;">
				<div id="main1" style="margin-left:0; width:100%;" align=center>
					포즐 가이드
				</div>
				<div id="main2" style="margin-left:0; width:100%; font-size: 14px;" align=center>
					포즐은 '계정 공유 요금제'로 인해 생기는 고객들의 불편함을 해소하고,<br>기존에 보호받을 수 없었던 고객들의 돈을 안전하게 보호합니다!
				</div>	
				<div id="main3" align=center>			
				<img id="guide" src="/img/frame9.png" style="width:90%;">
				</div>
				<div align=center>
				<div id="main4" align=center>더 궁금한 점이 있으신가요?</div>
				<div id="main5" align=center>언제든지 포즐 고객센터를 통해 문의하세요.</div>
				<a href="/list.qnaboard?cpage=1"><button class="qna">1:1 문의하기</button></a>
				</div>
		</div>
		</div>
	</div>
</div>
<div class="col-12 d-none d-md-block">
<div id="con5" align=center>
	<div class="container">
	<div class="row">
		<div class="col-6" id="footer1" align=left>
			<img src="/img/group30.png">
		</div>
		<div class="col-1" id="footer2">
		이용약관	
		</div>
		<div class="col-2" id="footer2">
		개인정보 처리방침
		</div>
		<div class="col-1" id="footer2">
		<a href="/list.qnaboard?cpage=1" style="text-decoration:none; color:white;">1:1 문의</a>
		</div>
		<div class="col-2" id="footer3">
		©2022 Fozzle, Inc.
		</div>
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
		<div class="col-6" id="footer3">
		©2022 Fozzle, Inc.
		</div>
	</div>
	</div>
</div>
</div>
</body>
<script>
$(document).on("click","#nopuzzle",function(){
	Swal.fire({
        background: '#121212',
        html: "로그인이 필요해요.",
        color: '#ededed',
        showCancelButton: false,
        confirmButtonColor: '#7a07ee',
        confirmButtonText: '확인'
	}).then((result) => {
        if (result.isConfirmed) {
            location.href = "/member/login.jsp"
        }
    })
	});
</script>
</html>