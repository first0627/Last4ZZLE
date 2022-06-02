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
<title>포즐</title>
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
/*     border: 1px solid crimson; */
/* } */
button {
	border: none;
}

#con1 {
	height: 888px;
	background-color: #121212;
	padding-top: 260px;
}

#con6 {
	height: 1354px;
	background-color: #121212;
	padding-top: 260px;
}

#main1 {
	font-size: 44px;
	font-weight: 700;
	line-height: 70px;
	letter-spacing: 0em;
	text-align: left;
	height: 140px;
	top: 260px;
	width: 480px;
	margin-bottom: 12px;
	color: #FFFFFF;
}

#main2 {
	width: 400px;
	font-size: 18px;
	font-weight: 500;
	line-height: 26px;
	letter-spacing: 0em;
	text-align: left;
	height: 52px;
	top: 412px;
	margin-bottom: 24px;
	color: #FFFFFF;
}

.bigbtn {
	flex-direction: row;
	padding: 16px 60px 17px;
	gap: 10px;
	width: 290px;
	height: 68px;
	top: 488px;
	background: #7A07EE;
	border-radius: 12px;
	font-weight: 700;
	font-size: 23px;
	line-height: 35px;
	text-align: center;
	color: #FFFFFF;
	flex-direction: row;
	margin-bottom: 64px;
}

#main3 {
	width: 140px;
	height: 20px;
	top: 620px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	color: #9E9E9E;
	margin-bottom: 8px;
}

#ott1 {
	width: 60px;
	height: 60px;
	top: 648px;
	background: #000000;
	border-radius: 12px;
}

#ott2 {
	width: 60px;
	height: 60px;
	top: 648px;
	background: #000000;
	border-radius: 12px;
	margin-left: 8px;
}

#ott3 {
	width: 60px;
	height: 60px;
	top: 648px;
	background: #000000;
	border-radius: 12px;
	margin-left: 8px;
}

#ott4 {
	width: 60px;
	height: 60px;
	top: 648px;
	background: #000000;
	border-radius: 12px;
	margin-left: 8px;
}

#mainimg {
	width: 512.4px;
	height: 466px;
	top: 8px;
}

#con2 {
	height: 902px;
	background-color: #212121;
}

#main5 {
	height: 52px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	text-align: center;
	color: #FFFFFF;
	margin-top: 160px;
}

#main6 {
	height: 52px;
	margin-top: 12px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	font-size: 18px;
	line-height: 26px;
	text-align: center;
	color: #FFFFFF;
}

#main7 {
	width: 216px;
	height: 60px;
	background: #121212;
	border-radius: 16px;
	margin: auto;
	margin-top: 40px;
	text-align: center;
}

.btns {
	margin-top: 7px;
	width: 90px;
	height: 46px;
	background: #7A07EE;
	border-radius: 12px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 16px;
	line-height: 26px;
	text-align: center;
	color: #FFFFFF;
}

#main8 {
	margin-top: 20px;
}

#leaderguide, #memberguide {
	width: 100%;
}

#moreguide {
	width: 181px;
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

#main9 {
	margin-top: 40px;
}

#con3 {
	height: 810px;
	background-color: #121212;
}

#main10 {
	width: 430px;
	height: 104px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	text-align: center;
	color: #FFFFFF;
	margin: auto;
	margin-top: 160px;
}

#main11 {
	width: 350px;
	height: 26px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	font-size: 18px;
	line-height: 26px;
	text-align: center;
	color: #FFFFFF;
	margin: auto;
	margin-top: 12px;
}

.lookaround {
	margin-top: 40px;
	width: 194px;
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

#con4 {
	height: 568px;
	background-color: #212121;
}

#main12 {
	margin-top: 160px;
	width: 634px;
	height: 140px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 48px;
	line-height: 70px;
	text-align: center;
	color: #FFFFFF;
}

.startservice {
	margin-top: 40px;
	width: 280px;
	height: 68px;
	background: #7A07EE;
	border-radius: 12px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 24px;
	line-height: 35px;
	text-align: center;
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

#main13 {
	margin-top: 160px;
	width: 430px;
	height: 140px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 32px;
	line-height: 70px;
	text-align: center;
	color: #FFFFFF;
}

#main14 {
	margin-top: 70px;
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

#nopuzzle:hover {
	cursor: pointer;
}
</style>
</head>
<body>
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
					<c:choose>
						<c:when test="${loginID != null}">
							<li class="nav-item"><a class="nav-link"
								href="/ifPartyExists.party">MY퍼즐</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a id="nopuzzle" class="nav-link">MY퍼즐</a></li>
						</c:otherwise>
					</c:choose>
					<li class="nav-item"><a class="nav-link"
						href="/contents/main.jsp">포즐피디아</a></li>
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

									<li><a class="dropdown-item" id="mypage"
										href="/myPage.member" style="color: #EDEDED;">마이페이지</a></li>

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
	<div class="col-12 d-none d-md-block p-0">
		<div id="con1">
			<div class="container">
				<div class="row">
					<div class="col-12 col-md-6">
						<div id="main1">
							퍼즐을 맞추면<br> OTT 이용 요금이 반으로!
						</div>
						<div id="main2">
							화질도 낮고 비싼 요금제, 그동안 혼자 보고 계셨나요?<br> 이제 포즐과 함께 걱정 말고 공유하세요!
						</div>
						<c:choose>
							<c:when test="${loginID != null}">
								<a class="nav-link" href="/ifPartyExists.party"><button
										class="bigbtn">서비스 시작하기</button></a>
							</c:when>
							<c:otherwise>
								<a id="nopuzzle" class="nav-link" style="padding: 0px;"><button
										class="bigbtn">서비스 시작하기</button></a>
							</c:otherwise>
						</c:choose>
						<div id="main3">이용 가능 OTT 서비스</div>
						<div id="main4">
							<img id="ott1" src="/img/Group22.png"> <img id="ott2"
								src="/img/Group23.png"> <img id="ott3"
								src="/img/Group24.png"> <img id="ott4"
								src="/img/Group25.png">
						</div>
					</div>
					<div class="col-12 col-sm-6" align=right>
						<img id="mainimg" src="/img/group33.png">
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-12 d-block d-md-none">
		<div id="con6">
			<div class="container">
				<div class="row">
					<div class="col-12 mb-5" align=center>
						<img id="mainimg" src="/img/group33.png"
							style="width: 400px; height: 380px;">
					</div>
					<div class="col-12" align=center>
						<div id="main1">
							퍼즐을 맞추면<br> OTT 이용 요금이 반으로!
						</div>
						<div id="main2">
							화질도 낮고 비싼 요금제, 그동안 혼자 보고 계셨나요?<br> 이제 포즐과 함께 걱정없이 공유하세요!
						</div>
						<c:choose>
							<c:when test="${loginID != null}">
								<a class="nav-link" href="/ifPartyExists.party"><button
										class="bigbtn">서비스 시작하기</button></a>
							</c:when>
							<c:otherwise>
								<a id="nopuzzle" class="nav-link" style="padding: 0px;"><button
										class="bigbtn">서비스 시작하기</button></a>
							</c:otherwise>
						</c:choose>
						<div id="main3">이용 가능 OTT 서비스</div>
						<div id="main4">
							<img id="ott1" src="/img/Group22.png"> <img id="ott2"
								src="/img/Group23.png"> <img id="ott3"
								src="/img/Group24.png"> <img id="ott4"
								src="/img/Group25.png">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="con2" align=center>
		<div class="container" align=center>
			<div class="row" align=center>
				<div class="col-12" align=center>
					<div id="main5">어떻게 이용하나요?</div>
					<div id="main6">
						퍼즐장과 퍼즐원 중 선택하여 이용할 수 있어요!<br> 퍼즐장은 계정을 공유하는 사람, 퍼즐원은 계정을
						공유받는 사람이에요.
					</div>
				</div>
				<div id="main7" align=center>
					<button class="btns" id="leader">퍼즐장</button>
					<button class="btns" id="member"
						style="margin-left: 3%; background: none;">퍼즐원</button>
				</div>
				<div id="main8">
					<img id="leaderguide" src="/img/frame4.png"> <img
						id="memberguide" src="/img/frame8.png" style="display: none;">
				</div>
				<div id="main9" align=right>
					<a href="/guide.jsp"><button id="moreguide">포즐 가이드 더보기</button></a>
				</div>
			</div>
		</div>
	</div>
	<div id="con3" align=center>
		<div class="row" align=center style="width: 100%;">
			<div class="col-12" align=center style="padding: 0px; width: 100%;">
				<div id="main10" align=center>
					포즐에서는<br>무얼 볼까 고민하지 마세요!
				</div>
				<div id="main11" align=center>컨텐츠 랭킹과 리뷰를 한눈에 볼 수 있어요.</div>
				<a href="/contents/main.jsp"><button class="lookaround">포즐피디아
						구경하기</button></a>
				<div id="main14" align=center style="width: 100%;">
					<img src="/img/frame6.png" style="width: 100%;">
				</div>
			</div>
		</div>
	</div>
	<div id="con4" align=center>
		<div class="container" align=center>
			<div class="row" align=center>
				<div class="col-12 d-none d-md-block" align=center>
					<div id="main12" align=center>
						지금 바로, 더 저렴하고 간편하게<br> 원하는 컨텐츠를 감상하세요!
					</div>
					<br> <br>
					<c:choose>
						<c:when test="${loginID != null}">
							<a class="nav-link" href="/ifPartyExists.party"><button
									class="bigbtn">서비스 시작하기</button></a>
						</c:when>
						<c:otherwise>
							<a id="nopuzzle" class="nav-link" style="padding: 0px;"><button
									class="bigbtn">서비스 시작하기</button></a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="col-12 d-block d-md-none" align=center>
					<div id="main13" align=center>
						지금 바로, 더 저렴하고 간편하게<br> 원하는 컨텐츠를 감상하세요!
					</div>
					<br> <br>
					<c:choose>
						<c:when test="${loginID != null}">
							<a class="nav-link" href="/ifPartyExists.party"><button
									class="bigbtn">서비스 시작하기</button></a>
						</c:when>
						<%-- <c:otherwise>
							<a id="nopuzzle" class="nav-link" style="padding: 0px;"><button
									class="bigbtn">서비스 시작하기</button></a>
						</c:otherwise> --%>
					</c:choose>
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
$(function(){
    $("#member").click(function(){
        if($("#memberguide").css("display") == "none"){
            $("#member").css("backgroundColor","#7A07EE");
            $("#leader").css("background-color","inherit");
            $("#memberguide").show();
            $("#leaderguide").hide();
        }
    });

    $("#leader").click(function(){
        if($("#leaderguide").css("display") == "none"){
            $("#leader").css("backgroundColor","#7A07EE");
            $("#member").css("background-color","inherit");
            $("#leaderguide").show();
            $("#memberguide").hide();
        }
    });
});

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
<title>포즐</title>
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
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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
	height: 888px;
	background-color: #121212;
	padding-top: 260px;
}

#con6 {
	height: 1354px;
	background-color: #121212;
	padding-top: 260px;
}

#main1 {
	font-size: 44px;
	font-weight: 700;
	line-height: 70px;
	letter-spacing: 0em;
	text-align: left;
	height: 140px;
	top: 260px;
	width: 480px;
	margin-bottom: 12px;
	color: #FFFFFF;
}

#main2 {
	font-size: 18px;
	font-weight: 500;
	line-height: 26px;
	letter-spacing: 0em;
	text-align: left;
	height: 52px;
	top: 412px;
	margin-bottom: 24px;
	color: #FFFFFF;
}

.bigbtn {
	flex-direction: row;
	padding: 16px 60px 17px;
	gap: 10px;
	width: 280px;
	height: 68px;
	top: 488px;
	background: #7A07EE;
	border-radius: 12px;
	font-weight: 700;
	font-size: 23px;
	line-height: 35px;
	text-align: center;
	color: #FFFFFF;
	flex-direction: row;
	margin-bottom: 64px;
}

#main3 {
	width: 140px;
	height: 20px;
	top: 620px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	color: #9E9E9E;
	margin-bottom: 8px;
}

#ott1 {
	width: 60px;
	height: 60px;
	top: 648px;
	background: #000000;
	border-radius: 12px;
}

#ott2 {
	width: 60px;
	height: 60px;
	top: 648px;
	background: #000000;
	border-radius: 12px;
	margin-left: 8px;
}

#ott3 {
	width: 60px;
	height: 60px;
	top: 648px;
	background: #000000;
	border-radius: 12px;
	margin-left: 8px;
}

#ott4 {
	width: 60px;
	height: 60px;
	top: 648px;
	background: #000000;
	border-radius: 12px;
	margin-left: 8px;
}

#mainimg {
	width: 512.4px;
	height: 466px;
	top: 8px;
}

#con2 {
	height: 902px;
	background-color: #212121;
}

#main5 {
	height: 52px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	text-align: center;
	color: #FFFFFF;
	margin-top: 160px;
}

#main6 {
height: 52px;
margin-top:12px;
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 500;
font-size: 18px;
line-height: 26px;
text-align: center;
color: #FFFFFF;
}

#main7 {
width: 216px;
height: 60px;
background: #121212;
border-radius: 16px;
margin:auto;
margin-top: 40px;
text-align:center;
}

.btns{
margin-top: 7px;
width: 90px;
height: 46px;
background: #7A07EE;
border-radius: 12px;

font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 16px;
line-height: 26px;
text-align: center;
color: #FFFFFF;
}

#main8{
margin-top: 20px;
}

#leaderguide, #memberguide {
width:100%;
}

#moreguide{
width: 181px;
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

#main9 {
margin-top: 40px;
}

#con3 {
	height: 810px;
	background-color: #121212;
}

#main10 {
width: 430px;
height: 104px;
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 36px;
line-height: 52px;
text-align: center;
color: #FFFFFF;
margin:auto;
margin-top: 160px;
}

#main11 {
width: 350px;
height: 26px;

font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 500;
font-size: 18px;
line-height: 26px;
text-align: center;
color: #FFFFFF;
margin:auto;
margin-top: 12px;
}

.lookaround{
margin-top: 40px;
width: 194px;
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

#con4 {
	height: 568px;
	background-color: #212121;
}

#main12 {
margin-top: 160px;
width: 634px;
height: 140px;
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 48px;
line-height: 70px;
text-align: center;

color: #FFFFFF;
}

.startservice{
margin-top:40px;
width: 280px;
height: 68px;
background: #7A07EE;
border-radius: 12px;
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 24px;
line-height: 35px;
text-align: center;
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

#main13 {
margin-top: 160px;
width: 430px;
height: 140px;
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 32px;
line-height: 70px;
text-align: center;

color: #FFFFFF;
}

#main14 {
margin-top:70px;
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
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/index.jsp">홈</a></li>
						<li class="nav-item"><a class="nav-link" href="/guide.jsp">가이드</a></li>
						<c:choose>
						<c:when test="${loginID != null}">
						<li class="nav-item"><a class="nav-link" href="/ifPartyExists.party">MY퍼즐</a></li>
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
<div class="col-12 d-none d-md-block p-0">
<div id="con1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-md-6">
				<div id="main1">
					퍼즐을 맞추면<br> OTT 이용 요금이 반으로!
				</div>
				<div id="main2">
					화질도 낮고 비싼 요금제, 그동안 혼자 보고 계셨나요?<br> 이제 포즐과 함께 걱정 말고 공유하세요!
				</div>
				<button class="bigbtn">서비스 시작하기</button>
				<div id="main3">이용 가능 OTT 서비스</div>
				<div id="main4">
					<img id="ott1" src="/img/Group22.png"> <img id="ott2"
						src="/img/Group23.png"> <img id="ott3"
						src="/img/Group24.png"> <img id="ott4"
						src="/img/Group25.png">
				</div>
			</div>
			<div class="col-12 col-sm-6" align=right>
				<img id="mainimg" src="/img/group33.png">
			</div>
		</div>
	</div>
</div>
</div>
<div class="col-12 d-block d-md-none">
<div id="con6">
	<div class="container">
		<div class="row">
			<div class="col-12 mb-5" align=center>
				<img id="mainimg" src="/img/group33.png">
			</div>
			<div class="col-12">
				<div id="main1">
					퍼즐을 맞추면<br> OTT 이용 요금이 반으로!
				</div>
				<div id="main2">
					화질도 낮고 비싼 요금제, 그동안 혼자 보고 계셨나요?<br> 이제 포즐과 함께 걱정말고 공유하세요!
				</div>
				<button class="bigbtn">서비스 시작하기</button>
				<div id="main3">이용 가능 OTT 서비스</div>
				<div id="main4">
					<img id="ott1" src="/img/Group22.png"> <img id="ott2"
						src="/img/Group23.png"> <img id="ott3"
						src="/img/Group24.png"> <img id="ott4"
						src="/img/Group25.png">
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<div id="con2" align=center>
	<div class="container" align=center>
	<div class="row" align=center>
			<div class="col-12" align=center>
			<div id="main5">어떻게 이용하나요?</div>
			<div id="main6">퍼즐장과 퍼즐원 중 선택하여 이용할 수 있어요!<br>
			퍼즐장은 계정을 공유하는 사람, 퍼즐원은 계정을 공유받는 사람이에요.</div>
			</div>
			<div id="main7" align=center>
			<button class="btns" id="leader">퍼즐장</button>
			<button class="btns" id="member" style="margin-left:3%; background:none;">퍼즐원</button>
			</div>
			<div id="main8">
				<img id="leaderguide" src="/img/frame4.png">
				<img id="memberguide" src="/img/frame8.png" style="display: none;">
			</div>
			<div id="main9" align=right>
			<a href="/guide.jsp"><button id="moreguide">포즐 가이드 더보기</button></a>
			</div>
		</div>
	</div>
</div>
<div id="con3" align=center>
	<div class="row" align=center>
			<div class="col-12" align=center>
			<div id="main10" align=center>
				포즐에서는<br>무얼 볼까 고민하지 마세요!
			</div>
			<div id="main11" align=center>
				컨텐츠 랭킹과 리뷰를 한눈에 볼 수 있어요.
			</div>
			<button class="lookaround">포즐피디아 구경하기</button>
			<div id="main14" align=center>
			<img src="/img/frame6.png" style="width:100%;">
			</div>
			</div>
			</div>
</div>
<div id="con4" align=center>
	<div class="container" align=center>
	<div class="row" align=center>
			<div class="col-12 d-none d-md-block" align=center>
			<div id="main12" align=center>
				지금 바로, 더 저렴하고 간편하게<br>
				원하는 컨텐츠를 감상하세요!
			</div>
			<button class="startservice">서비스 시작하기</button>
			</div>
			<div class="col-12 d-block d-md-none" align=center>
			<div id="main13" align=center>
				지금 바로, 더 저렴하고 간편하게<br>
				원하는 컨텐츠를 감상하세요!
			</div>
			<button class="startservice">서비스 시작하기</button>
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
$(function(){
    $("#member").click(function(){
        if($("#memberguide").css("display") == "none"){
            $("#member").css("backgroundColor","#7A07EE");
            $("#leader").css("background-color","inherit");
            $("#memberguide").show();
            $("#leaderguide").hide();
        }
    });

    $("#leader").click(function(){
        if($("#leaderguide").css("display") == "none"){
            $("#leader").css("backgroundColor","#7A07EE");
            $("#member").css("background-color","inherit");
            $("#leaderguide").show();
            $("#memberguide").hide();
        }
    });
});

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
</html> --%>