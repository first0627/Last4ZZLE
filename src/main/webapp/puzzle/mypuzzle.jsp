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
<title>MY퍼즐</title>
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
	min-height: 860px;
	background-color: #121212;
	padding-top: 200px;
	padding-bottom: 5%;
}

#main1 {
	margin-left: 200px;
	width: 174px;
	height: 52px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	color: #FFFFFF;
	margin-bottom: 5%;
}

#main2 {
	margin-top: 13px;
	width: 100%;
	height: 100%;
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

/*  div {  */
/*  border:1px solid crimson;  */
/*  }  */
.ott {
	width: 70%;
	height: 150px;
	border-radius: 12px;
	background-color: #222222;
	margin-bottom: 2%;
}

.ott div {
	float: left;
	height: 100%;
}

.left, .right {
	width: 20%;
	align-items: center;
	display: flex;
	justify-content: center;
}

.left img {
	width: 60px;
	height: 60px;
}

.rimg {
	width: 45px;
	height: 45px;
}

.right img {
	width: 45px;
	height: 45px;
}

.right img:hover {
	cursor: pointer;
}

.center {
	width: 60%;
	height: 100%;
	text-align: left;
}

.top {
	height: 65%;
	padding-top: 8%;
	font-size: 24px;
	color: #dedede;
}

.bottom {
	height: 35%;
	padding-top: 1%;
	color: #dedede;
}

.center div {
	width: 100%;
	height: 50%;
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
					<li class="nav-item"><a class="nav-link active"
						href="/ifPartyExists.party">MY퍼즐</a></li>
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
	<div id="con1">
		<div class="container">
			<div id="main1">MY퍼즐</div>
			<div id="main2" align=center>
				<c:forEach var="dtoM" items="${dtoM}">

					<c:choose>

						<c:when test="${dtoM.ott eq 'netflix'}">
							<form action="/show.party" method="post">
								<div class="ott">
									<div class="left">
										<img src="/img/Group22.png">
									</div>
									<div class="center">

										<div class="top">넷플릭스 퍼즐</div>

										<div class="bottom">${member}으로 이용중</div>

									</div>
									<div class="right">


										<!-- 	<a href="/puzzle/mypuzzlenet.jsp"><img src="/img/gogo.png"></a> -->
										<input type="hidden" name="member" value="${member}">
										<input type="hidden" name="dto" value="${dtoM.ott}"> <input
											type="hidden" name="ott" value="netflix">
										<!-- <input type = "image" src="/img/godetail.png" class = "rimg"> -->
										<input type="image" src="/img/gogo.png" class="rimg">
									</div>
								</div>
							</form>
						</c:when>
					</c:choose>
				</c:forEach>

				<c:forEach var="dtoB" items="${dtoB}">

					<c:choose>

						<c:when test="${dtoB.ott eq 'netflix'}">
							<form action="/show.party" method="post">
								<div class="ott">
									<div class="left">
										<img src="/img/Group22.png">
									</div>
									<div class="center">

										<div class="top">넷플릭스 퍼즐</div>

										<div class="bottom">${boss}으로 이용중</div>

									</div>
									<div class="right">


										<!-- 	<a href="/puzzle/mypuzzlenet.jsp"><img src="/img/gogo.png"></a> -->

										<input type="hidden" name="boss" value="${boss}"> <input
											type="hidden" name="dto" value="${dtoB.ott}"> <input
											type="hidden" name="ott" value="netflix">
										<!-- <input type = "image" src="/img/godetail.png" class = "rimg"> -->
										<input type="image" src="/img/gogo.png" class="rimg">
									</div>
								</div>
							</form>
						</c:when>
					</c:choose>
				</c:forEach>


				<c:forEach var="dtoM" items="${dtoM}">

					<c:choose>

						<c:when test="${dtoM.ott eq 'watcha' }">
							<form action="/show.party" method="post">
								<div class="ott">
									<div class="left">
										<img src="/img/Group23.png">
									</div>
									<div class="center">

										<div class="top">왓챠 퍼즐</div>

										<div class="bottom">${member}으로 이용중</div>


									</div>
									<div class="right">
										<input type="hidden" name="member" value="${member}">
										<input type="hidden" name="dto" value="${dtoM.ott}"> <input
											type="hidden" name="ott" value="watcha"> <input
											type="image" src="/img/gogo.png" class="rimg">
									</div>
								</div>
							</form>
						</c:when>
					</c:choose>
				</c:forEach>

				<c:forEach var="dtoB" items="${dtoB}">
					<c:choose>
						<c:when test="${dtoB.ott eq 'watcha' }">
							<form action="/show.party" method="post">
								<div class="ott">
									<div class="left">
										<img src="/img/Group23.png">
									</div>
									<div class="center">
										<div class="top">왓챠 퍼즐</div>
										<div class="bottom">${boss}으로 이용중</div>

									</div>
									<div class="right">

										<input type="hidden" name="boss" value="${boss}"> <input
											type="hidden" name="dto" value="${dtoB}"> <input
											type="hidden" name="ott" value="watcha"> <input
											type="image" src="/img/gogo.png" class="rimg">
									</div>
								</div>
							</form>
						</c:when>
					</c:choose>
				</c:forEach>






				<c:forEach var="dtoM" items="${dtoM}">

					<c:choose>

						<c:when test="${dtoM.ott eq 'tving'}">
							<form action="/show.party" method="post">
								<div class="ott">
									<div class="left">
										<img src="/img/Group24.png">
									</div>
									<div class="center">

										<div class="top">티빙 퍼즐</div>

										<div class="bottom">${member}으로 이용중</div>

									</div>
									<div class="right">
										<input type="hidden" name="member" value="${member}">
										<input type="hidden" name="dto" value="dtoM.ott"> <input
											type="hidden" name="ott" value="tving"> <input
											type="image" src="/img/gogo.png" class="rimg">
									</div>
								</div>
							</form>
						</c:when>
					</c:choose>
				</c:forEach>

				<c:forEach var="dtoB" items="${dtoB}">

					<c:choose>

						<c:when test="${dtoB.ott eq 'tving'}">
							<form action="/show.party" method="post">
								<div class="ott">
									<div class="left">
										<img src="/img/Group24.png">
									</div>
									<div class="center">

										<div class="top">티빙 퍼즐</div>

										<div class="bottom">${boss}으로 이용중</div>

									</div>
									<div class="right">

										<input type="hidden" name="boss" value="${boss}"> <input
											type="hidden" name="dto" value="${dtoB.ott}"> <input
											type="hidden" name="ott" value="tving"> <input
											type="image" src="/img/gogo.png" class="rimg">
									</div>
								</div>
							</form>
						</c:when>
					</c:choose>
				</c:forEach>



				<c:forEach var="dtoM" items="${dtoM}">

					<c:choose>

						<c:when test="${dtoM.ott eq 'disney' }">
							<form action="/show.party" method="post">
								<div class="ott">
									<div class="left">
										<img src="/img/Group25.png">
									</div>
									<div class="center">

										<div class="top">디즈니 퍼즐</div>

										<div class="bottom">${member}으로 이용중</div>


									</div>
									<div class="right">
										<input type="hidden" name="member" value="${member}">
										<input type="hidden" name="dto" value="${dtoM.ott}"> <input
											type="hidden" name="ott" value="disney"> <input
											type="image" src="/img/gogo.png" class="rimg">
									</div>
								</div>
							</form>
						</c:when>
					</c:choose>
				</c:forEach>

				<c:forEach var="dtoB" items="${dtoB}">

					<c:choose>

						<c:when test="${dtoB.ott eq 'disney' }">
							<form action="/show.party" method="post">
								<div class="ott">
									<div class="left">
										<img src="/img/Group25.png">
									</div>
									<div class="center">

										<div class="top">디즈니 퍼즐</div>

										<div class="bottom">${boss}으로 이용중</div>


									</div>
									<div class="right">

										<input type="hidden" name="boss" value="${boss}"> <input
											type="hidden" name="dto" value="${dtoB.ott}"> <input
											type="hidden" name="ott" value="disney"> <input
											type="image" src="/img/gogo.png" class="rimg">
									</div>
								</div>
							</form>
						</c:when>
					</c:choose>
				</c:forEach>



 


				<div class="ott" style = "background-color : 
 #495057;">
					<div class="left">
						<img src="/img/puzzle2.png" style="width: 80px; height: 70px;">
					</div>
					<div class="center">
						<div class="top">퍼즐 추가</div>
						<div class="bottom">새로운 퍼즐을 추가해보세요!</div>
					</div>
					<div class="right">
						<a href="/duplNo.party"><img src="/img/gogo.png"></a>
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
</html>