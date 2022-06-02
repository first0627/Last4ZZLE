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
	width: 457px;
	height: 104px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	color: #FFFFFF;
}

#main2 {
	top: 500px;
	width: 288px;
	height: 26px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	font-size: 18px;
	line-height: 26px;
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
	margin-top: 80px;
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
</style>
</head>
<body>
	<c:choose>
		<c:when test="${noParty eq 'noParty'}">
		  <input type = hidden id = "noParty" value = "noParty">
		</c:when>
	</c:choose>
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
	<div class="col-12 d-none d-md-block p-0">
		<div id="con1">
			<div class="container">
				<div class="row">
					<div class="col-12 col-md-6">
						<div id="main1">
							퍼즐을 추가하고<br>OTT를 저렴하게 감상해보세요
						</div>
						<div id="main2">커피 한잔값으로 즐기는 컨텐츠의 자유!</div>
						<button class="bigbtn"
							onclick="location.href='/puzzle/addpuzzle.jsp' ">서비스
							시작하기</button>
					</div>
					<div class="col-12 col-sm-6" align=right>
						<img id="mainimg" src="/img/image10.png">
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
						<img id="mainimg" src="/img/image10.png">
					</div>
					<div class="col-12" align=center>
						<div id="main1">
							퍼즐을 추가하고<br>OTT를 저렴하게 감상해보세요
						</div>
						<div id="main2">커피 한잔값으로 즐기는 컨텐츠의 자유!</div>
						<button class="bigbtn"
							onclick="location.href='/puzzle/addpuzzle.jsp' ">서비스
							시작하기</button>
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
	let val = $("#noParty").val();
if ($('#noParty').val() == 'noParty'){
	
	  Swal.fire({
          background: '#121212',
          html: "퍼즐이 생성되어 있지 않습니다. 퍼즐장으로 퍼즐을 만들어보세요!",
          color: '#ededed',
          showCancelButton: true,
          confirmButtonColor: '#7a07ee',
          cancelButtonColor: '#999999',
          confirmButtonText: '확인',
          cancelButtonText: '취소',
      }).then((result) => {
          if (result.isConfirmed) {
       	Location.reload();  
          	
          }
      })
	   }
</script>
</html>