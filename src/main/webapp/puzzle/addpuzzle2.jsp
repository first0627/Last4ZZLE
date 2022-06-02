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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@700&family=Nanum+Myeongjo&display=swap"
        rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            background-color: #121212;
        }

        #container {
            padding: 0px;
        }

        .hover:hover {
            cursor: pointer;
        }
        
        .navbar-nav a:hover {
    	color: crimson;
    	background-color: #7A07EE;
		}
        
        .dropdown:hover .dropdown-menu {
  		display: block;
    	margin-top: 0; 
 		}
        
    </style>
</head>

<body>
    <div id="container" style="overflow: auto;">
        <div id="banner" style="width: 100%;" align=center>
            <img src="./img/banner.jpg" style="width: 100%; opacity: 0.6;">
        </div>
        <nav class="navbar sticky-top navbar-expand-lg navbar-dark" style="background-color: #0C0C0C; padding-top: 1%; padding-bottom: 1%;">
            <div class="container-fluid" style="background-color: #0C0C0C;">
                <a class="navbar-brand" href="./index.jsp" style="background-color: #0C0C0C;">
                    <img src="./img/logo.png" alt="" width="200" style="margin-left: 12%; background-color: #0c0c0c;">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 3%; background-color: #0c0c0c;">
                    <div class="me-auto navbar-nav" style="width: 50%; margin-left: 3%; background-color: #0c0c0c;">
                        <a class="nav-link active" aria-current="page" href="./index.jsp"
                            style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">홈</a>
                        <a class="nav-link" href="./guide.jsp" style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">가이드</a>
                        <a class="nav-link" href="/ifPartyExists.party" style="color: #7A07EE; width: 30%; background-color: #0c0c0c;">MY퍼즐</a>
                        <a class="nav-link" href="/contents/main.jsp" style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">포즐피디아</a>
                    </div>
                    <div class="navbar-nav" style="width: 30%; background-color: #0c0c0c;">
                        <a class="nav-link" href="./list.board?cpage=1" style="color: #EDEDED; width: 50%; background-color: #0c0c0c;">고객센터</a>
                        <c:choose>
						<c:when test="${loginID != null}">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false" style="color: #EDEDED; background-color: #0c0c0c;">
                                ${nickname}님
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"
                                style="background-color: #121212;">
                                <li><a class="dropdown-item" href="/myPage.member" style="color: #EDEDED;">마이페이지</a></li>
                                <li><a id="logout" class="dropdown-item" href="#" style="color: #EDEDED;">로그아웃</a></li>
                            </ul>
                        </li>
                        </c:when>
						<c:otherwise>
						<a class="nav-link" href="./login.jsp" style="color: #EDEDED; width: 30%; background-color: #0c0c0c;">로그인</a>
						</c:otherwise>
						</c:choose>
                    </div>
                </div>
        </nav>
        <div id="steps" align=center>
            <div id="step1" style="width: 70%; padding-top: 2%;">
                <div style="color: #EDEDED; margin-left: 4%; font-size: 25px; padding-bottom: 2%;" align=left>보고싶은 OTT를 선택하세요</div>
                <img class="hover" id="p1" src="/img/addp1.png" alt="">
                <img class="hover" id="p2" src="/img/addp2.png" alt="">
                <img class="hover" id="p3" src="/img/addp3.png" alt="">
                <img class="hover" id="p4" src="/img/addp4.png" alt=""><br>
                <img id="p5" src="/img/addp5.png" style="padding-top: 3%; display: none;">
                <img id="p6" src="/img/addp6.png" style="padding-top: 3%; display: none;">
                <img id="p7" src="/img/addp7.png" style="padding-top: 3%; display: none;">
                <img id="p8" src="/img/addp8.png" style="padding-top: 3%; display: none;">
                <br><img class="hover" id="next" src="/img/next.png" style="padding-top: 3%; padding-bottom: 3%; display: none; width: 20%;">
            </div>
            <div id="step2" style="width: 70%; padding-top: 2%; display:none;">
                <div style="color: #EDEDED; margin-left: 4%; font-size: 25px; padding-bottom: 2%;" align=left>이용 역할을 선택해주세요</div>
                <img class="hover" id="p10" src="/img/addp10.png" style="width: 10%;">
                <img class="hover" id="p11" src="/img/addp11.png" style="width: 10%; opacity: 0.8;"><br>
                <div id="role1">
                    <img id="p12" src="/img/addp12.png" style="width: 50%; margin-top : 3%; margin-bottom: 3%;">
                    <img id="p13" src="/img/addp13.png" style="width: 50%;"><br>
                    <img class="hover" id="leader" src="/img/addp15.png" style="width: 20%; margin-top: 3%; margin-bottom: 5%;">
                </div>
                <div id="role2" style="display: none;">
                    <img id="p14" src="/img/addp14.png" style="width: 50%; margin-top : 2%;"><br>
                    <img class="hover" src="/img/addp16.png" style="width: 20%; margin-top: 3%; margin-bottom: 5%;">
                </div>             
            </div>
        </div>
    </div>
</body>
<script>
    $(function(){
        $("#p1").click(function(){
                $("#p5").show();
                $("#next").show();
                $("#p6").hide();
                $("#p7").hide();
                $("#p8").hide();
                var offset = $('#step1').offset(); 
                $('html').animate({scrollTop : offset.top}, 400);
        });

        $("#p2").click(function(){
                $("#p6").show();
                $("#next").show();
                $("#p5").hide();
                $("#p7").hide();
                $("#p8").hide();
                var offset = $('#step1').offset(); 
                $('html').animate({scrollTop : offset.top}, 400);
        });

        $("#p3").click(function(){
                $("#p7").show();
                $("#next").show();
                $("#p5").hide();
                $("#p6").hide();
                $("#p8").hide();
                var offset = $('#step1').offset(); 
                $('html').animate({scrollTop : offset.top}, 400);
        });

        $("#p4").click(function(){
                $("#p8").show();
                $("#next").show();
                $("#p6").hide();
                $("#p7").hide();
                $("#p5").hide();
                var offset = $('#step1').offset(); 
                $('html').animate({scrollTop : offset.top}, 400);
        });

        $("#next").click(function(){
                $("#step2").show(400);
                var offset = $('#step2').offset(); 
                $('html').animate({scrollTop : offset.top}, 400);
        });

        $("#p10").click(function(){
                $("#p10").css("opacity",1.0);
                $("#p11").css("opacity",0.8);
                $("#role1").show();
                $("#role2").hide();
                var offset = $('#step2').offset(); 
                $('html').animate({scrollTop : offset.top}, 400);
        });

        $("#p11").click(function(){
                $("#p11").css("opacity",1.0);
                $("#p10").css("opacity",0.8);
                $("#role2").show();
                $("#role1").hide();
                var offset = $('#step2').offset(); 
                $('html').animate({scrollTop : offset.top}, 400);
        });

        $("#leader").click(function(){
                if($("#p5").is(":visible") == true) {
                    location.href = "./addnetleader1.jsp"
                }else if($("#p6").is(":visible") == true) {
                    location.href = "./addwatleader1.jsp"
                }else if($("#p7").is(":visible") == true) {
                    location.href = "./addtvleader1.jsp"
                }else if($("#p8").is(":visible") == true) {
                    location.href = "./adddpleader1.jsp"
                }
        });
    });
    
    $("#logout").on("click",function(){
    	location.href = "/logout.member";
    	});
</script>

</html>