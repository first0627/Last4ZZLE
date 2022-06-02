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
    <title>문의 작성</title>
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
	font-family: 'Noto Sans KR', sans-serif;
}

body {
	background-color: #121212;
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
	margin-top: 118px;
}

.navbar-nav>li {
	text-align: center;
	margin-left: 1rem;
	margin-right: 1rem;
	width: 100px;
}

.centered {
     margin-left:10rem;
}

#no {
background-color: inherit;
}

#login {
	background-color:#7A07EE;
}

#con5 {
	margin-top:160px;
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

	#row {
            width: 100%;
            border-top: 1px solid #2E2E2E;
        }

        #row div {
            float: left;
            width: 100%;
            height: 60px;
            text-align: center;
            line-height: 60px;
            border-bottom: 1px solid #2E2E2E;
            overflow: hidden;
        }

        #row .menu2 {
            float: left;
            width: 80%;
            text-align: left;
            padding-left: 4%;
        }

        #row .menu3 {
            color: #dddddd;
            float: left;
            width: 20%;
        }

		a {
    	text-decoration-line: none;
    	color: #ffffff;
        }
        
		a:hover{
		 color:#7A07EE;
		}
		
		.btn{
			font-family: 'Noto Sans KR';
			font-style: normal;
			font-weight: 700;
            height: 45px;
            line-height: 30px;
            font-weight: bold;
            background-color: #7A07EE;
            color: #FFFFFF;
            border-radius: 12px;
            width: 10%; 
            margin-top: 4%; 
            margin-bottom: 4%;
            border: none;
		}
		
		 input:focus, textarea:focus {
    	outline: none;
		}
		
		input, textarea {
 		border: none;
		color: #ffffff;
		background-color: #121212;
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
						<li class="nav-item"><a class="nav-link" href="./ifPartyExists.party">MY퍼즐</a></li>
						</c:when>
						<c:otherwise>
						<li class="nav-item"><a id="nopuzzle" class="nav-link">MY퍼즐</a></li>
						</c:otherwise>
						</c:choose>
						<li class="nav-item"><a class="nav-link" href="/contents/main.jsp">포즐피디아</a></li>

					</ol>
					<ol class="nav-pills navbar-nav w-100 justify-content-end centered" id=po>
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="/list.board?cpage=1" style="background-color:inherit;">고객센터</a></li>
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
	<div class="container" style="background-color: #121212;">
		<nav class="navbar navbar-expand navbar-light bg-light" style="background-color: #121212; padding: 0%; margin-bottom: 4%;">
            <div class="container-fluid" style="width: 100%; background-color: #121212; padding-top: 100px; font-weight: 700;">
                <a class="navbar-brand" href="/list.board?cpage=1" style="color: #ffffff; font-size: 40px; padding-left: 5%;">고객센터</a>
                <div class="collapse navbar-collapse" id="navbarNav" style="margin-left: 3%;">
                    <a class="nav-link active" aria-current="page" href="/list.board?cpage=1"
                        style="color: #FFFFFF; width: 15%;">공지사항</a>
                    <a class="nav-link" href="/list.qnaboard?cpage=1" style="color: #7A07EE; width: 15%;">문의</a>
                </div>
            </div>
        </nav>
        <form action="/save.qnaboard" method="post">
        <div id="notice" align=center style="color: #ededed; width: 100%; height: 80%;">
            <div id="row1" style="font-size : 25px; width: 100%; padding-bottom: 1%; border-bottom: 2px solid #2E2E2E; padding-left: 20px;" align=left>
            <input type=text name=title id=title placeholder="제목" style="width:97%;">
            </div>
            <div id="row3" style="font-size : 15px; width: 100%; height: 600px; padding-left: 35px; margin-top: 2%; border-bottom: 2px solid #2E2E2E; overflow: hidden;" align=left>
            <textarea name="contents" id="contents" style="width: 98%;" rows="30" placeholder="내용"></textarea>
            </div>
            <div id="row4" style="width: 100%; margin-bottom: 2%;" align=right>
                <a href="/list.qnaboard?cpage=1"><button type="button" class="btn">뒤로</button></a>
                <button type="submit" class="btn" style="margin-left:1%;">작성</button>
            </div>
        </div>
        </form>
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
	$(document).ready(function(){ $("#title").focus(); }); 
	
	$("#logout").on("click",function(){
		location.href = "/logout.member";
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
	
	$("#write").on("click",function() {
        if ($("#contents").val() == "") {
           Swal.fire({
                 background: '#121212',
                 html: "내용을 먼저 입력해주세요.",
                 color: '#ededed',
                 showCancelButton: false,
                 confirmButtonColor: '#7a07ee',
                 confirmButtonText: '확인'
                  });
                 $("#contents").focus();
                 return false;
        }
     });
  
  $("#write").on("click",function() {
        if ($("#title").val() == "") {
           Swal.fire({
                 background: '#121212',
                 html: "제목을 먼저 입력해주세요.",
                 color: '#ededed',
                 showCancelButton: false,
                 confirmButtonColor: '#7a07ee',
                 confirmButtonText: '확인'
                  });
                 $("#title").focus();
                 return false;
        }
     });
  
</script>

</html>