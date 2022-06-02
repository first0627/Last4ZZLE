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
<title>포즐피디아</title>
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
	<link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans:ital,wght@1,800&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}

button {
	border:none;
}

#con1 {
	min-height:856px;
	height: 100%;
	background-color: #121212;
	padding-top: 150px;
	padding-bottom:5%;
}

#main1 {
width: 100%;
height:	100%;

font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 36px;
color: #FFFFFF;
margin-bottom:5%;
}

#main2 {
margin-top: 25px;
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
margin-top: 25px;
width: 100%;
height: 100%;

font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 500;
font-size: 18px;
line-height: 26px;

color: #FFFFFF;
}

#main4 {
margin-top:160px;
width: 408px;
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

/*  div {  */
/*  border:1px solid crimson;  */
/*  }  */

.ott{
width:450px;
height:80px;
border-radius:12px;
background-color:#222222;
margin-bottom:5px;
}

.ott div{
float:left;
height:100%;
}

.left,.right {
width:20%;
align-items:center;
display: flex; 
justify-content:center;
}

.left img {
width:60px;
height:70px;
}

.right img {
width:45px;
height:45px;
}

.right img:hover {
cursor:pointer;
}

.center {
width: 60%;
height: 100%;
text-align:left;
}

.top{
height: 65%;
padding-top: 8%;
font-size:24px;
color:#dedede;
}

.bottom{
height: 35%;
padding-top: 1%;
color:#dedede;
}

.center div{
width:100%;
height:50%;
}

#nopuzzle:hover{
cursor:pointer;
}

.left {
float:left;
width:20%;
height:100%;
}

.rank {
float:left;
width:15%;
height:100%;
font-family: 'Merriweather Sans', sans-serif;
font-weight:800;
font-size:40px;
line-height:80px;
}

.right {
float:left;
width:65%;
height:100%;
}

.filter div{
float:left;
width:20%;
}

.con {
border-radius:15px; width:100%; height:100%;
}

.b {
margin-top:5px; margin-bottom:5px;
}

#net:hover, #wat:hover, #tv:hover, #dp:hover {
cursor:pointer;
}

a{
color:white;
}

a:hover{
color:white;
}

input#search {
background:url(/img/searchgo.png);
background-repeat: no-repeat;
width:38px;
height:38px;
margin-top:8px;
margin-left:6px;
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
						<li class="nav-item"><a class="nav-link" href="/guide.jsp">가이드</a></li>
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
										<c:choose>
										<c:when test="${kakao == null}">
										<li><a class="dropdown-item" id = "mypage" href="/myPage.member"
											style="color: #EDEDED;">마이페이지</a></li>
										</c:when>
										</c:choose>
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
	<form method="get" action="/searchResult.contents" id="searchform">
				<div id="main1" align=center style="display:absolute;">
				<input name="search" id="id" type="text" placeholder="작품명을 검색해보세요." style="padding-left:10px; color:white; font-size:16px; border-radius: 3px; border: 1px solid #878787; background-color: white; width: 400px; height:50px;">
          		<input type="image" id="letssearch" src="/img/searchgo.png" style="position:absolute; width:38px; height:38px; margin-top: 16px; margin-left:15px;">
				</div>
				</form>
				<div id="main3" align=center style="margin-top:100px;">	
				<span style="font-weight:700; font-size:22px;">검색 결과</span>
				<div class="row" style="padding-top:20px;">
				<c:forEach var="i" items="${list}">
				<div class="col-4 col-md-3 p-1">
				<div class="t" style='padding:5%;'>
				<a href='/search.contents?img=${i.img}'>
				<img src="${i.img}" style="border-radius:15px; width:100%; height:100%; padding:2%;">
				</a>
				</div>
				<div class="b" style="margin-top:5px; margin-bottom:5px;">
				${i.ktitle}
				</div>
				</div>
				</c:forEach>
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
	
$("#searchform").submit(function () {
	if ($("#id").val() == "") {
		Swal.fire({
            background: '#121212',
            html: "작품명을 입력해주세요.",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
       		})
				$("#id").focus();
				return false;
	}
});
</script>
</html>