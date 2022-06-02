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
<title>퍼즐 추가</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
	border: none;
}

#con1 {
	height: 100%;
	background-color: #121212;
	padding-top: 200px;
	min-height: 860px;
}

#con2 {
	height: 100%;
	background-color: #121212;
}

#con6 {
	height: 1354px;
	background-color: black;
	padding-top: 260px;
}

#main1 {
	width: 457px;
	height: 80px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	color: #FFFFFF;
	background-color: #121212;
}

#main3 {
	background-color: #121212;
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

#main7 {
	width: 216px;
	height: 60px;
	background: #212121;
	border-radius: 16px;
	margin: auto;
	margin-top: 40px;
	text-align: center;
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

#mainimg {
	width: 320px;
	height: 320px;
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

.hover:hover {
	cursor: pointer;
}

.bigbtn {
	padding: 16px 60px 17px;
	gap: 10px;
	width: 280px;
	height: 68px;
	background: #7A07EE;
	border-radius: 12px;
	font-weight: 700;
	font-size: 23px;
	line-height: 35px;
	text-align: center;
	color: #FFFFFF;
	display: inline-block;
	margin: auto;
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

.hover {
	margin-bottom: 20px;
	width: 100%;
	min-width: 200px;
	max-width: 300px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top">
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
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="/index.jsp">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="/guide.jsp">가이드</a></li>
					<li class="nav-item"><a class="nav-link active" href="/ifPartyExists.party">MY퍼즐</a></li>
					<li class="nav-item"><a class="nav-link" href="/contents/main.jsp">포즐피디아</a></li>

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
	<div id="con1">
		<div class="container">
			<div class="row">
				<div id="main1">
					<div class="col-12 d-none d-md-block">
						보고싶은 OTT를 선택하세요<br>
					</div>
					<div class="col-12 d-block d-md-none" align=center>
						보고싶은 OTT를 선택하세요<br>
					</div>
				</div>
				<div class="container">
					<div class="row" align=center style="margin-bottom: 5%;">
<%-- 
						<c:forEach var="dtoM" items="${dtoM}">

							<c:choose>
								<c:when test="${dtoM.ott != 'netflix'}">
									<div class="col-12 col-md-6 col-xl-3">
										<img class="hover" id="p1" src="/img/ott1.png" alt="">
									</div>
								</c:when>
							</c:choose>

						</c:forEach>
 --%>

						
							<c:choose>
								<c:when test="${netflix != 'netflix'}">
									<div class="col-12 col-md-6 col-xl-3">
										<img class="hover" id="p1" src="/img/ott1.png" alt="">
									</div>
								</c:when>
							</c:choose>
					



						
							<c:choose>
								<c:when test="${watcha != 'watcha'}">
									<div class="col-12 col-md-6 col-xl-3">
										<img class="hover" id="p2" src="/img/ott2.png" alt="">
									</div>
								</c:when>
							</c:choose>
						


				
					


					<c:choose>
                        <c:when test="${tving != 'tving'}">
                        <div class="col-12 col-md-6 col-xl-3">
                           <img class="hover" id="p3" src="/img/ott3.png" alt="">
                        </div>
                        </c:when>
                     </c:choose>





					


		
							<c:choose>
								<c:when test="${disney != 'disney'}">
									<div class="col-12 col-md-6 col-xl-3">
										<img class="hover" id="p4" src="/img/ott4.png" alt="">
									</div>
								</c:when>
							</c:choose>
			



						<div align=center style="width: 100%;">

							<img id="p5" src="/img/ott1fee.png"
								style="width: 60%; min-width: 470px; padding-top: 4%; padding-bottom: 4%; display: none;">





							<img id="p6" src="/img/ott2fee.png"
								style="width: 60%; min-width: 470px; padding-top: 4%; padding-bottom: 4%; display: none;">

							<img id="p7" src="/img/ott3fee.png"
								style="width: 60%; min-width: 470px; padding-top: 4%; padding-bottom: 4%; display: none;">


							<img id="p8" src="/img/ott4fee.png"
								style="width: 60%; min-width: 470px; padding-top: 4%; padding-bottom: 4%; display: none;">

						</div>
						<div align=center>
							<button id="next" class="bigbtn"
								style="margin-top: 20px; margin-bottom: 30px; display: none;">다음</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="con2" style="display: none;">
		<div class="container">
			<div class="row">
				<div id="main1">
					<div class="col-12 d-none d-md-block">
						이용 역할을 선택하세요<br>
					</div>
					<div class="col-12 d-block d-md-none" style="margin-top: 50px;"
						align=center>
						이용 역할을 선택하세요<br>
					</div>
				</div>
				<div class="container" align=center>
					<div id="main7" align=center>
						<button class="btns" id="p10">퍼즐장</button>
						<button class="btns" id="p11"
							style="margin-left: 3%; background: none;">퍼즐원</button>
					</div>
					<div id="role1">
						<img id="p12" src="/img/leaderadd1.png"
							style="width: 50%; min-width: 470px; margin-top: 30px; margin-bottom: 35px;">
						<img id="p13" src="/img/leaderadd2.png"
							style="width: 50%; min-width: 470px; margin-bottom: 35px;"><br>
						<button id="leader" class="bigbtn"
							style="width: 350px; margin-bottom: 35px;">퍼즐장으로 이용하기</button>
					</div>
					<div id="role2" style="display: none;">
						<img id="p14" src="/img/memberadd1.png"
							style="width: 50%; min-width: 470px; margin-top: 30px; margin-bottom: 35px;"><br>
						<button id="member" class="bigbtn"
							style="width: 350px; margin-bottom: 35px;">퍼즐원으로 이용하기</button>
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
					<div class="col-1" id="footer2">이용약관</div>
					<div class="col-2" id="footer2">개인정보 처리방침</div>
					<div class="col-1" id="footer2">1:1 문의</div>
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
	$(function() {
		$("#p1").click(function() {
			$("#p5").show();
			$("#next").show();
			$("#p6").hide();
			$("#p7").hide();
			$("#p8").hide();
			var offset = $('#next').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 400);
		});

		$("#p2").click(function() {
			$("#p6").show();
			$("#next").show();
			$("#p5").hide();
			$("#p7").hide();
			$("#p8").hide();
			var offset = $('#next').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 400);
		});

		$("#p3").click(function() {
			$("#p7").show();
			$("#next").show();
			$("#p5").hide();
			$("#p6").hide();
			$("#p8").hide();
			var offset = $('#next').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 400);
		});

		$("#p4").click(function() {
			$("#p8").show();
			$("#next").show();
			$("#p6").hide();
			$("#p7").hide();
			$("#p5").hide();
			var offset = $('#next').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 400);
		});

		$("#next").click(function() {
			$("#con2").show();
			var offset = $('#con2').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 400);
		});

		$("#p10").click(function() {
			$("#p10").css("backgroundColor", "#7A07EE");
			$("#p11").css("background-color", "inherit");
			$("#role1").show();
			$("#role2").hide();
			var offset = $('#con2').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 400);
		});

		$("#p11").click(function() {
			$("#p11").css("backgroundColor", "#7A07EE");
			$("#p10").css("background-color", "inherit");
			$("#role2").show();
			$("#role1").hide();
			var offset = $('#con2').offset();
			$('html').animate({
				scrollTop : offset.top
			}, 400);
		});

		$("#leader").click(function() {
			$("#leader").css("backgroundColor", "#7A07EE");
			$("#member").css("background-color", "inherit");
			if ($("#p5").is(":visible") == true) {
				location.href = "/puzzle/addnetleader1.jsp"
			} else if ($("#p6").is(":visible") == true) {
				location.href = "/puzzle/addwatleader1.jsp"
			} else if ($("#p7").is(":visible") == true) {
				location.href = "/puzzle/addtvleader1.jsp"
			} else if ($("#p8").is(":visible") == true) {
				location.href = "/puzzle/adddpleader1.jsp"
			}
		});

		$("#member").click(function() {
			$("#member").css("backgroundColor", "#7A07EE");
			$("#leader").css("background-color", "inherit");
			if ($("#p5").is(":visible") == true) {
				location.href = "/puzzle/addnetmember1.jsp"
			} else if ($("#p6").is(":visible") == true) {
				location.href = "/puzzle/addwatmember1.jsp"
			} else if ($("#p7").is(":visible") == true) {
				location.href = "/puzzle/addtvmember1.jsp"
			} else if ($("#p8").is(":visible") == true) {
				location.href = "/puzzle/adddpmember1.jsp"
			}
		});
	});

	$("#logout").on("click", function() {
		location.href = "/logout.member";
	});
</script>

</html>