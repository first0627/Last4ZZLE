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
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
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

/* div { */
/*  	border: 1px solid crimson; */
/* } */

button {
	border:none;
}

#con1 {
	min-height:850px;
	height: 100%;
	background-color: #121212;
	padding-top: 100px;
	padding-bottom:5%;
}

#main1 {
width: 100%;
height: 52px;

font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 36px;
line-height: 52px;
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

#all:hover, #net:hover, #wat:hover, #tv:hover, #dp:hover {
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
				<div id="main1" align=center>
				<form method="get" action="/searchResult.contents" id="searchform">
				<input id="id" name="search" type="text" placeholder="작품명을 검색해보세요." style="padding-left:10px; color:white; font-size:16px; border-radius: 3px; border: 1px solid #878787; background-color: #121212; width: 400px; height:50px;">
          		<input type="image" id="letssearch" src="/img/searchgo.png" style="position:absolute; width:38px; height:38px; margin-top: 16px; margin-left:15px;">
				</form>
				</div>
				<div id="main2" align=center>	
				<span id="ranking" style="font-weight:700; font-size:22px;">오늘의 통합 랭킹</span>
				<div class="ott" style="margin-top:20px;">
				<a id="rank1url" href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_2_1556089809.jpg">
				<div class="left"><img id="rank1img" src="/img/m1.jpg" style="border-radius:5px;"></div>
				<div class="rank">1</div>
				<div id="rank1title" class="right">범죄도시 2</div>
				</a>
				</div>		
				<div class="ott">
				<a id="rank2url" href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_2_1556089809.jpg">
				<div class="left"><img id="rank2img" src="/img/m2.jpg" style="border-radius:5px;"></div>
				<div class="rank">2</div>
				<div id="rank2title" class="right">범죄도시</div>
				</a>
				</div>
				<div class="ott">
				<a id="rank3url" href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_103808_1649866214.jpg">
				<div class="left"><img id="rank3img" src="/img/m3.jpg" style="border-radius:5px;"></div>
				<div class="rank">3</div>
				<div id="rank3title"class="right">나의 해방일지</div>
				</a>
				</div>
				</div>
				<div id="main3" align=center style="margin-top:100px;">	
				<span style="font-weight:700; font-size:22px;">OTT별 모아보기</span>
				<div class="filter" style="margin-top:20px; margin-bottom:90px; width:450px;">
				<div>
				<img id ="all" src="/img/ottall.png" style="opacity:1.0; width:70px; height:70px; border-radius:25px;">
				</div>
				<div>
				<img id ="net" src="/img/net.png" style="opacity:0.6; width:70px; height:70px; border-radius:25px;">
				</div>
				<div>
				<img id ="wat" src="/img/wat.png" style="opacity:0.6; width:70px; height:70px; border-radius:25px;">
				</div>
				<div>
				<img id ="tv" src="/img/tv.png" style="opacity:0.6; width:70px; height:70px; border-radius:25px;">
				</div>
				<div>
				<img id ="dp" src="/img/dp.png" style="opacity:0.6; width:70px; height:70px; border-radius:25px;">
				</div>
				</div>
				<div id="ott1" class="row" style="padding-top:20px; display:none;">
				</div>
				<div id="ott2" class="row" style="padding-top:20px; display:none;">
				</div>
				<div id="ott3" class="row" style="padding-top:20px; display:none;">
				</div>
				<div id="ott4" class="row" style="padding-top:20px; display:none;">
				</div>
				<div id="ott5" class="row" style="padding-top:20px; display:none;">
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
AOS.init();

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

window.onload = function(){
	$("#ott1").show();
	$.ajax({
		url:"/allott.contents",
		data:{limit : 2},
		async: false,
		dataType:"json", // == JSON.parse(resp);
		success: function (resp) {
			for(let i = 0 ; i < resp.length; i++) {
		    	  $("#ott1").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
		    	  $(".con").css('border-radius','15px');
		    	  console.log("resp.length : " + resp.length);
			}
		},
		});	
	
	let limit = 22;
	
	  $(document).scroll(function() {
	    let maxHeight = $(document).height();
	    let currentScroll = $(window).scrollTop() + $(window).height();
	   
	    if (maxHeight <= currentScroll) {
	    	console.log("origin limit : " + limit);
	    	$.ajax({
				url:"/allott.contents",
				data:{limit : limit},
				async: false,
				dataType:"json", // == JSON.parse(resp);
				success: function (resp) {
					for(let i = 0 ; i < resp.length; i++) {
				    	  $("#ott1").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
				    	  console.log("resp.length : " + resp.length);
					}
					limit = limit + resp.length;
			    	console.log("change limit : " + limit);	
				},
				});
	    	} 
	      }) 
}

$(document).on("click","#all",function(){
	$("#ott1").hide();
	$("#ott2").hide();
	$("#ott3").hide();
	$("#ott4").hide();
	$("#ott5").hide();
	$("#ott1").empty();
	$("#ott2").empty();
	$("#ott3").empty();
	$("#ott4").empty();
	$("#ott5").empty();
	$("#ott1").show(300);
	$("#all").css("opacity","1.0");
	$("#net").css("opacity","0.6");
	$("#wat").css("opacity","0.6");
	$("#tv").css("opacity","0.6");
	$("#dp").css("opacity","0.6");
	
	$.ajax({
		url:"/allott.contents",
		data:{limit : 2},
		async: false,
		dataType:"json", // == JSON.parse(resp);
		success: function (resp) {
			for(let i = 0 ; i < resp.length; i++) {
		    	  $("#ott1").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
		    	  $(".con").css('border-radius','15px');
		    	  console.log("resp.length : " + resp.length);
			}
		},
		});	
	
	let limit = 22;
	
  	$(document).scroll(function() {
    let maxHeight = $(document).height();
    let currentScroll = $(window).scrollTop() + $(window).height();
   
    if (maxHeight <= currentScroll) {
    	console.log("origin limit : " + limit);
    	$.ajax({
			url:"/allott.contents",
			data:{limit : limit},
			async: false,
			dataType:"json", // == JSON.parse(resp);
			success: function (resp) {
				for(let i = 0 ; i < resp.length; i++) {
			    	  $("#ott1").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
			    	  $(".con").css('border-radius','15px');
			    	  console.log("resp.length : " + resp.length);
				}
				limit = limit + resp.length;
		    	console.log("change limit : " + limit);	
			},
			});
    	} 
      }) 
});

$(document).on("click","#net",function(){
	$("#ott1").hide();
	$("#ott2").hide();
	$("#ott3").hide();
	$("#ott4").hide();
	$("#ott5").hide();
	$("#ott1").empty();
	$("#ott2").empty();
	$("#ott3").empty();
	$("#ott4").empty();
	$("#ott5").empty();
	$("#ott2").show(300);
	$("#all").css("opacity","0.6");
	$("#net").css("opacity","1.0");
	$("#wat").css("opacity","0.6");
	$("#tv").css("opacity","0.6");
	$("#dp").css("opacity","0.6");
	
	$.ajax({
		url:"/netflix.contents",
		data:{limit : 1},
		async: false,
		dataType:"json", // == JSON.parse(resp);
		success: function (resp) {
			for(let i = 0 ; i < resp.length; i++) {
		    	  $("#ott2").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
		    	  $(".con").css('border-radius','15px');
		    	  console.log("resp.length : " + resp.length);
			}
		},
		});	
	
	let limit = 21;
	
  	$(document).scroll(function() {
    let maxHeight = $(document).height();
    let currentScroll = $(window).scrollTop() + $(window).height();
   
    if (maxHeight <= currentScroll) {
    	console.log("origin limit : " + limit);
    	$.ajax({
			url:"/netflix.contents",
			data:{limit : limit},
			async: false,
			dataType:"json", // == JSON.parse(resp);
			success: function (resp) {
				for(let i = 0 ; i < resp.length; i++) {
			    	  $("#ott2").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
			    	  console.log("resp.length : " + resp.length);
				}
				limit = limit + resp.length;
		    	console.log("change limit : " + limit);	
			},
			});
    	} 
      }) 
});

$(document).on("click","#wat",function(){
	$("#ott1").hide();
	$("#ott2").hide();
	$("#ott3").hide();
	$("#ott4").hide();
	$("#ott5").hide();
	$("#ott1").empty();
	$("#ott2").empty();
	$("#ott3").empty();
	$("#ott4").empty();
	$("#ott5").empty();
	$("#ott3").show(300);
	$("#all").css("opacity","0.6");
	$("#net").css("opacity","0.6");
	$("#wat").css("opacity","1.0");
	$("#tv").css("opacity","0.6");
	$("#dp").css("opacity","0.6");
		
	$.ajax({
		url:"/watcha.contents",
		data:{limit : 1},
		async: false,
		dataType:"json", // == JSON.parse(resp);
		success: function (resp) {
			for(let i = 0 ; i < resp.length; i++) {
		    	  $("#ott3").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
		    	  $(".con").css('border-radius','15px');
		    	  console.log("resp.length : " + resp.length);
			}
		},
		});	
	
	let limit = 21;
	
  	$(document).scroll(function() {
    let maxHeight = $(document).height();
    let currentScroll = $(window).scrollTop() + $(window).height();
   
    if (maxHeight <= currentScroll) {
    	console.log("origin limit : " + limit);
    	$.ajax({
			url:"/watcha.contents",
			data:{limit : limit},
			async: false,
			dataType:"json", // == JSON.parse(resp);
			success: function (resp) {
				for(let i = 0 ; i < resp.length; i++) {
			    	  $("#ott3").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
			    	  console.log("resp.length : " + resp.length);
				}
				limit = limit + resp.length;
		    	console.log("change limit : " + limit);	
			},
			});
    	} 
      }) 
});

$(document).on("click","#tv",function(){
	$("#ott1").hide();
	$("#ott2").hide();
	$("#ott3").hide();
	$("#ott4").hide();
	$("#ott5").hide();
	$("#ott1").empty();
	$("#ott2").empty();
	$("#ott3").empty();
	$("#ott4").empty();
	$("#ott5").empty();
	$("#ott4").show(300);
	$("#all").css("opacity","0.6");
	$("#net").css("opacity","0.6");
	$("#wat").css("opacity","0.6");
	$("#tv").css("opacity","1.0");
	$("#dp").css("opacity","0.6");
	
	$.ajax({
		url:"/tving.contents",
		data:{limit : 1},
		async: false,
		dataType:"json", // == JSON.parse(resp);
		success: function (resp) {
			for(let i = 0 ; i < resp.length; i++) {
		    	  $("#ott4").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
		    	  $(".con").css('border-radius','15px');
		    	  console.log("resp.length : " + resp.length);
			}
		},
		});	
	
	let limit = 21;
	
  	$(document).scroll(function() {
    let maxHeight = $(document).height();
    let currentScroll = $(window).scrollTop() + $(window).height();
   
    if (maxHeight <= currentScroll) {
    	console.log("origin limit : " + limit);
    	$.ajax({
			url:"/tving.contents",
			data:{limit : limit},
			async: false,
			dataType:"json", // == JSON.parse(resp);
			success: function (resp) {
				for(let i = 0 ; i < resp.length; i++) {
			    	  $("#ott4").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
			    	  console.log("resp.length : " + resp.length);
				}
				limit = limit + resp.length;
		    	console.log("change limit : " + limit);	
			},
			});
    	} 
      }) 
});

$(document).on("click","#dp",function(){
	$("#ott1").hide();
	$("#ott2").hide();
	$("#ott3").hide();
	$("#ott4").hide();
	$("#ott5").hide();
	$("#ott1").empty();
	$("#ott2").empty();
	$("#ott3").empty();
	$("#ott4").empty();
	$("#ott5").empty();
	$("#ott5").show(300);
	$("#all").css("opacity","0.6");
	$("#net").css("opacity","0.6");
	$("#wat").css("opacity","0.6");
	$("#tv").css("opacity","0.6");
	$("#dp").css("opacity","1.0");
	
	$.ajax({
		url:"/disney.contents",
		data:{limit : 1},
		async: false,
		dataType:"json", // == JSON.parse(resp);
		success: function (resp) {
			for(let i = 0 ; i < resp.length; i++) {
		    	  $("#ott5").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
		    	  $(".con").css('border-radius','15px');
		    	  console.log("resp.length : " + resp.length);
			}
		},
		});	
	
	let limit = 21;
	
  	$(document).scroll(function() {
    let maxHeight = $(document).height();
    let currentScroll = $(window).scrollTop() + $(window).height();
   
    if (maxHeight <= currentScroll) {
    	console.log("origin limit : " + limit);
    	$.ajax({
			url:"/disney.contents",
			data:{limit : limit},
			async: false,
			dataType:"json", // == JSON.parse(resp);
			success: function (resp) {
				for(let i = 0 ; i < resp.length; i++) {
			    	  $("#ott5").append("<div class='col-4 col-md-3 p-1'><div class='t' style='padding:5%;'><a href='/search.contents?img="+resp[i].img+"'><img class='con' src='" + resp[i].img + "'></a></div><div class='b'>" + resp[i].title + "</div></div>"); 
			    	  console.log("resp.length : " + resp.length);
				}
				limit = limit + resp.length;
		    	console.log("change limit : " + limit);	
			},
			});
    	} 
      }) 
});

let idx = 0;
const texts = ["오늘의 넷플릭스 랭킹", "오늘의 왓챠 랭킹", "오늘의 티빙 랭킹", "오늘의 디즈니+ 랭킹", "오늘의 통합 랭킹"];
const repeatFunc = function(){
    setTimeout(function(){
        console.log(texts[idx]);
        $("#ranking").text(texts[idx]);
	    setTimeout(function(){
	        idx += 1;
	        if(idx == texts.length){
	            idx = 0;
	        }
	        repeatFunc();
	    }, 3000);
	}, 3000);
}
repeatFunc();

let idx1 = 0;
const texts1 = ["나의 해방 일지", "범죄도시", "범죄도시", "닥터 스트레인지", "범죄도시2"];
const imgs1 = ["https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_103808_1649866214.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_2_1556089809.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_2_1556089809.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_6605_1556072613.jpg", 
	"/img/m1.jpg"];
const href1 = [href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_103808_1649866214.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_2_1556089809.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_2_1556089809.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_6605_1556072613.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_2_1556089809.jpg"]
const repeatFunc1 = function(){
    setTimeout(function(){
        console.log(texts1[idx]);
        console.log(imgs1[idx]);
        $("#rank1title").text(texts1[idx]);
        $("#rank1img").attr("src",imgs1[idx]);
        $("#rank1url").prop("href", href1[idx]);
	    setTimeout(function(){
	        idx1 += 1;
	        if(idx1 == texts1.length){
	            idx1 = 0;
	        }
	        repeatFunc1();
	    }, 3000);
	}, 3000);
}
repeatFunc1();

let idx2 = 0;
const texts2 = ["러브, 데스 + 로봇 시즌 3", "탑 건", "나의 해방 일지", "위대한 쇼맨", "범죄도시"];
const imgs2 = ["https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_104865_1651473985.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_38343_1531792439.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_103808_1649866214.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_450_1580972714.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_2_1556089809.jpg"];
const href2 = [href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_104865_1651473985.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_38343_1531792439.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_103808_1649866214.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_450_1580972714.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_2_1556089809.jpgs"]
const repeatFunc2 = function(){
    setTimeout(function(){
        console.log(texts2[idx]);
        $("#rank2title").text(texts2[idx]);
        $("#rank2img").attr("src",imgs2[idx]);
        $("#rank2url").prop("href", href2[idx]);
	    setTimeout(function(){
	        idx2 += 1;
	        if(idx2 == texts2.length){
	            idx2 = 0;
	        }
	        repeatFunc2();
	    }, 3000);
	}, 3000);
}
repeatFunc2();

let idx3 = 0;
const texts3 = ["사이버 지옥:N번방을 무너뜨려라", "극한직업", "연애 빠진 로맨스", "문 나이트", "나의 해방 일지"];
const imgs3 = ["https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_105164_1650421351.jpeg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_69460_1547610576.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_87168_1636335000.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_94993_1646185211.jpg", 
	"https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_103808_1649866214.jpg"];
const href3 = [href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_105164_1650421351.jpeg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_69460_1547610576.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/movie_poster_images/280x400/movie_87168_1636335000.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_94993_1646185211.jpg",
	href="/search.contents?img=https://nujhrcqkiwag1408085.cdn.ntruss.com/static/upload/drama_poster_images/280x400/drama_103808_1649866214.jpg"]
const repeatFunc3 = function(){
    setTimeout(function(){
        console.log(texts3[idx]);
        $("#rank3title").text(texts3[idx]);
        $("#rank3img").attr("src",imgs3[idx]);
        $("#rank3url").prop("href", href3[idx]);
	    setTimeout(function(){
	        idx3 += 1;
	        if(idx3 == texts3.length){
	            idx3 = 0;
	        }
	        repeatFunc3();
	    }, 3000);
	}, 3000);
}
repeatFunc3();

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