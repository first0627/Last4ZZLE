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
    <title>퍼즐장 추가</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="sweetalert2/dist/sweetalert2.min.js"></script>

    <style>
        * {
            box-sizing: border-box;
            background-color: #121212;
            font-family: 'Noto Sans KR', sans-serif;
        }

        #container {
            padding: 0px;
        }

        input::placeholder {
         color: #121212;
         font-weight: bold;
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
		border: none;
}
    </style>
</head>

<body>
    <div id="container" align=center>
        <div style="width: 50%; min-width:450px; padding-top: 1%;">
            <div style="float: left; width: 50%;" align=left>
                <a href="/puzzle/addnetleader1.jsp"><img id="back" src="/img/back.png" style="width: 4%; min-width:15px;"></a>
            </div>
            <div style="float: left; width: 50%;" align=right>
                <img class="hover" id="close" src="/img/x.png" style="width: 7%; min-width:25px;">
            </div>
        </div>
        <div align=center style="width: 100%; padding-top: 30px;">
            <img src="/img/addnetleader3.png" style="margin-top:30px; width: 40%; min-width:450px;"><br>
            <button id="next" class="bigbtn" onclick = "location.href = '/puzzle/addnetleader3.jsp'" style="margin-top:40px;">다음</button>
        </div>
    </div>
</body>
<script>
    $("#close").on("click", function () {
        Swal.fire({
            background: '#121212',
            html: "입력된 정보가 저장되지 않아요.<br>퍼즐 생성을 그만하시겠어요?",
            color: '#ededed',
            showCancelButton: true,
            confirmButtonColor: '#7a07ee',
            cancelButtonColor: '#999999',
            confirmButtonText: '확인',
            cancelButtonText: '취소',
            reverseButtons: true
        }).then((result) => {
            if (result.isConfirmed) {
                location.href = "/puzzle/addpuzzle.jsp"
            }
        })
    });


</script>

</html>