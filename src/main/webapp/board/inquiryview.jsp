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
<title>문의</title>
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

body {
	background-color: #121212;
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
	margin-top: 118px;
}

.navbar-nav>li {
	text-align: center;
	margin-left: 1rem;
	margin-right: 1rem;
	width: 100px;
}

#nopuzzle:hover{
cursor:pointer;
}

.centered {
	margin-left: 10rem;
}

#no {
	background-color: inherit;
}

#login {
	background-color: #7A07EE;
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

a:hover {
	color: #7A07EE;
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
            width:120px;
            border: none;
            margin-left:10px;
		}

input:focus, textarea:focus {
	outline: none;
}

input, textarea {
	border: none;
	color: #ffffff;
	background-color: #121212;
}

.rcontainer {
	border: none;
	margin: auto;
	margin-top: 20px;
	padding-left: 2%;
	padding-right: 1.5%;
	margin-bottom: 20px;
	height: 150px;
}

#rrow1 #rleft {
	float: left;
	height: 100%;
	width: 70%;
	font-weight: bold;
}

#rrow1 #rright {
	float: left;
	height: 100%;
	width: 30%;
	padding-right: 12px;
	line-height: 25px;
	font-size: 10px;
}

#rrow2 {
	height: 15%;
}

#rrow2 button {
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
	border: none;
	margin-left: 1%;
}

#row8 {
	border: 1px solid white;
	border-radius: 12px;
	margin-bottom: 35px;
}

/* #row8 div{ */
/* 	border:1px solid dodgerblue; */
/* } */
.redit, .rdelete, .btn2 {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	height: 45px;
	line-height: 30px;
	font-weight: bold;
	background-color: #7A07EE;
	color: #FFFFFF;
	border-radius: 12px;
	width: 40%;
	border: none;
	margin-left: 1%;
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

#contents{
   overlow-y:scroll;
}

</style>
</head>
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
		<div class="col-12 d-none d-md-block">
			<nav class="navbar navbar-expand navbar-light bg-light"
				style="background-color: #121212; padding: 0%; margin-bottom: 4%; font-weight: 700;">
				<div class="container-fluid"
					style="width: 100%; background-color: #121212; padding-top: 100px;">
					<a class="navbar-brand" href="/list.board?cpage=1"
						style="color: #ffffff; font-size: 40px; padding-left: 5%;">고객센터</a>
					<div class="collapse navbar-collapse" id="navbarNav"
						style="margin-left: 3%;">
						<a class="nav-link active" aria-current="page"
							href="/list.board?cpage=1" style="color: #FFFFFF; width: 200px;">공지사항</a>
						<a class="nav-link" href="/list.qnaboard?cpage=1"
							style="color: #7A07EE; width: 200px;">문의</a>
					</div>
				</div>
			</nav>
		</div>
		<div class="col-12 d-block d-md-none">
			<div style="font-size: 40px; color:white; margin-bottom:50px; padding-left: 3%; font-weight: 700;">고객센터</div>
			<nav class="navbar navbar-expand navbar-light"
				style="background-color: #121212; padding: 0%; margin-bottom: 4%; font-weight: 700;">
					<div class="collapse navbar-collapse" id="navbarNav">
						<a class="nav-link active" aria-current="page"
							href="/list.board?cpage=1" style="color: #7A07EE; width: 50%;">공지사항</a>
						<a class="nav-link" href="/list.qnaboard?cpage=1"
							style="color: #FFFFFF; width: 50%;">문의</a>
					</div>
			</nav>
		</div>
			<form action="/update.qnaboard" method="post">
				<input type="hidden" value="${dto.seq}" name=seq>
				<div id="notice" align=center
					style="color: #ededed; width: 100%; height: 80%;">
					<div id="row1"
						style="font-size: 25px; width: 100%; padding-bottom: 1%; border-bottom: 1px solid #2E2E2E; padding-left: 20px;"
						align=left>
						<input id="title" name="title" class="editable" type="text"
							value="${dto.title}" disabled>
					</div>
					<div id="row2"
						style="width: 100%; font-size: 12px; height: 30px; padding-bottom: 0.5%; border-bottom: 2px solid #2E2E2E; padding-left: 20px; margin-top: 0.5%;"
						align=left>
						<div id="left" style="float: left; width: 50%;">${dto.writerName}</div>
						<div id="right"
							style="float: left; width: 50%; padding-right: 20px;" align=right>
							<fmt:formatDate value="${dto.write_date}" type="both"
								pattern="yyyy-MM-dd" />
						</div>
					</div>
					<div id="row3"
						style="font-size: 15px; width: 100%; height: 600px; padding-left: 35px; margin-top: 2%; border-bottom: 2px solid #2E2E2E; overflow: hidden;"
						align=left>
						<textarea name="contents" class="editable" id="contents"
							style="width: 98%;" rows="30" disabled>${dto.contents}</textarea>
						</div>
					 <div id="row4" style="width: 100%; margin-top: 25px; margin-bottom: 25px;" align=right>
						<button class="btn" id="modify" type="button">수정</button>
						<button class="btn" id="delete" type="button"
							style="margin-left: 1%;">삭제</button>
						<a href="/list.qnaboard?cpage=${cpage}"><button type="button"
								id="back" class="btn" style="margin-left: 1%;">목록</button></a>
					</div>
			</form>
			<form action="/insert.reply" method=post>
			<c:choose>
				<c:when test="${loginID eq 'admin@admin.com'}">
				<input type=hidden name="pseq" value=${dto.seq}>
					<div id="row5"
						style="width: 100%; height: 250px; border-top: 2px solid #2E2E2E; padding-top: 25px; padding-bottom: 25px;">
						<div style="float: left; width: 80%;">
							<textarea name="contents" id="" cols="30" rows="7"
								style="width: 100%; color: #ededed; border: 1px solid white; border-radius: 12px; padding:1%;"></textarea>
						</div>
						<div style="float: left; width: 20%;" align=center>
							<button class="btn" style="width: 150px; margin-top: 70px;">등록</button>
						</div>
					</div>
				</c:when>
			</c:choose>
			</form>
		</div>
	</div>
<c:forEach var="i" items="${reply_list}">
	<div class="container">
		<div id="row8">
			<div class="rcontainer" style="color: white;">
				<div id="rrow1">
					<div id="rleft">관리자</div>
					<div id="rright" align="right">
					<fmt:formatDate value="${i.write_date}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/>
					</div>
				</div>
				<div id="rrow2">
					<input type=hidden value="${i.seq}" class="rseq" name="rseq">
					<input type=hidden value="${dto.seq}" class="pseq" name="pseq">
				</div>
				<div id="rrow3" style="height: 85%;">
					<div style="float: left; width: 80%; height: 90%; margin-top:1%;">
						<textarea class="ceditable" id="ccomment" name="ccomment"
							style="width: 98%;" rows="4" disabled>${i.contents}</textarea>	
<%-- 						<input type=textarea value="${i.contents}" disabled --%>
<!-- 							class="ceditable" id="ccomment" name="ccomment" -->
<!-- 							style="width: 98%;" rows="7" cols="30"> -->
					</div>
					<c:if test="${loginID eq 'admin@admin.com'}">
						<div id="rrow4" style="float: left; width: 20%; height: 100%; padding-top: 2%;" align=right>
							<button type="button" class="redit">수정</button>
							<button type="button" value="${i.seq}" name="rseq"
								class="rdelete" style="margin-left: 5%;">삭제</button>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
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
					<a href="/list.qnaboard?cpage=1" style="text-decoration:none; color:white;">1:1 문의</a>
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
$("#modify").on("click",function() {
	$(".editable").removeAttr("disabled");
	$("#title").focus();

	$("#modify").css("display", "none");
	$("#delete").css("display", "none");
	$("#back").css("display", "none");

	let okBtn = $("<button>");
	okBtn.text("수정");
	okBtn.css("margin-left","1.3%");
	okBtn.addClass("btn");
	
	let cancelBtn = $("<button>");
	cancelBtn.attr("type","button");
	cancelBtn.text("취소");
	cancelBtn.addClass("btn");

	cancelBtn.on("click", function() {
		location.reload();
	})

	$("#row4").prepend(okBtn);
	$("#row4").prepend(cancelBtn);
	
});

$("#logout").on("click",function(){
	location.href = "/logout.member";
	});
	
$("#delete").on("click", function() {
	let result = confirm("삭제하시겠습니까?");
	if(result) {
		location.href = "/delete.qnaboard?seq="+${dto.seq};
	}
});

$(".rdelete").on("click", function(){
	let result = confirm("댓글을 삭제하시겠습니까?");
	if(result){
		$.ajax({
			url:"/delete.reply",
			data:{rseq:$(this).val()}
			}).done(function(resp){
				if (resp == 1) {
					location.reload();
				}
			});
		}
	})

$(".redit").on("click",function(){
				$(".ceditable").removeAttr("disabled");
				$(".ceditable").focus();
										
				$(".rdelete").css("display","none");
				$(".redit").css("display","none");
										
				let rokBtn = $("<button>");
				rokBtn.text("수정");
				rokBtn.attr("type","button");
				rokBtn.addClass("btn2");
				rokBtn.attr("id","rok");
										
				let rcancelBtn = $("<button>");
				rcancelBtn.attr("type","button");
				rcancelBtn.text("취소");
				rcancelBtn.css("margin-left","6.4%");
				rcancelBtn.addClass("btn2");
										
 				rcancelBtn.on("click", function() {
				location.reload();
				})

				$("#rrow4").prepend(rcancelBtn);
				$("#rrow4").prepend(rokBtn);								
			})
			
			$(document).on("click", "#rok", function() {
			$.ajax({
				url:"/update.reply",
				data:{rseq:$(this).closest("#rrow3").siblings("#rrow2").children(".rseq").val(), pseq:$(this).closest("#rrow3").siblings("#rrow2").children(".pseq").val(), contents:$(this).closest("#rrow3").find("#ccomment").val()}
			}).done(function(){
					location.reload();
			});
	})
	
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