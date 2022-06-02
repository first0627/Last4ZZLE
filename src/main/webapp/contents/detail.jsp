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

body {
   background-color: black;
}

#container {
   padding: 0px;
   background-color: #121212;
}

/*  div {  */
/*  border:1px solid crimson;  */
/*  }  */
.left {
   float: left;
   width: 50%;
   height: 100%;
}

.right {
   float: left;
   width: 50%;
   bottom: 0px;
   height: 100%;
}

.title {
   font-weight: 700;
   font-size: 40px;
   color: #ededed;
}

.genre {
   color: #777777;
   font-size: 15px;
}

.review {
   padding-top: 100px;
}

input:focus, textarea:focus {
   outline: none;
}

input, textarea {
   border: none;
   color: #ffffff;
   background-color: #121212;
}

.btn, .rdelete2, .redit2 {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   height: 45px;
   line-height: 30px;
   font-weight: bold;
   background-color: #7A07EE;
   color: #FFFFFF;
   border-radius: 12px;
   width: 150px;
   margin-top: 20px;
   margin-bottom: 20px;
   border: none;
   margin-left: 10px;
}

.rcontainer {
   border: none;
   margin: auto;
   margin-top: 20px;
   padding-left: 10px;
   padding-right: 10px;
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
   width: 29%;
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
   /*    margin-top: 50px; */
}

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
</style>
</head>

<body>
   <div id="container" align=center>
      <div style="width: 70%; min-width: 450px; padding-top: 15px;">
         <div style="width: 100%;" align=left>
            <a href="/contents/main.jsp"><img id="back" src="/img/back.png"
               style="width: 20px;"></a>
         </div>
      </div>
      <div style="width: 70%; min-width: 400px; margin-top: 50px;">
         <div class="col-12 d-none d-md-block p-0">
            <div class="left" align=right style="padding-right: 50px;">
               <img src="${list[0].img}" style="border-radius: 15px;">
            </div>
            <div class="right" align=left
               style="height: 400px; position: relative;">
               <div class="title"
                  style="padding-left: 50px; width: 100%; bottom: 0; position: absolute; left: 0; word-break: break-all;">
                  <c:forEach var="i" items="${ottlist}">
                     <c:choose>
                        <c:when test="${i.ott == 4}">
                           <img style="width: 50px; height: 50px;" src="/img/n.png">
                        </c:when>
                        <c:when test="${i.ott == 5}">
                           <img style="width: 50px; height: 50px;" src="/img/w.png">
                        </c:when>
                        <c:when test="${i.ott == 10}">
                           <img style="width: 50px; height: 50px;" src="/img/t.png">
                        </c:when>
                        <c:when test="${i.ott == 17}">
                           <img style="width: 45px; height: 45px;" src="/img/Group25.png">
                        </c:when>
                     </c:choose>
                  </c:forEach>
                  <br>${list[0].ktitle}<br> <span style="font-size: 20px;">${list[0].etitle}</span><br>
                  <span class="genre"> <c:choose>
                        <c:when test="${list[0].score != null}">
                           <img style="margin-right: 5px; width: 20px; height: 20px;"
                              src="/img/tomato.png"
                              title="전 세계에서 가장 널리 인용되는 로튼 토마토의 '토마토 지수'">
                  ${list[0].score}%<br>
                        </c:when>
                     </c:choose> <c:choose>
                        <c:when test="${list[0].type == 'DRAMA'}">
                  TV
                  </c:when>
                        <c:when test="${list[0].type == 'MOVIE'}">
                  영화
                  </c:when>
                     </c:choose> <c:forEach var="i" items="${genrelist}">
                        <c:choose>
                           <c:when test="${i.genre == 1}">
                   · 드라마
                  </c:when>
                           <c:when test="${i.genre == 2}">
                   · 코미디
                  </c:when>
                           <c:when test="${i.genre == 3}">
                   · 액션
                  </c:when>
                           <c:when test="${i.genre == 4}">
                   · 멜로
                  </c:when>
                           <c:when test="${i.genre == 5}">
                   · 스릴러
                  </c:when>
                           <c:when test="${i.genre == 6}">
                   · 미스터리
                  </c:when>
                           <c:when test="${i.genre == 7}">
                   · 공포
                  </c:when>
                           <c:when test="${i.genre == 8}">
                   · 어드벤처
                  </c:when>
                           <c:when test="${i.genre == 9}">
                   · 범죄
                  </c:when>
                           <c:when test="${i.genre == 10}">
                   · 가족
                  </c:when>
                           <c:when test="${i.genre == 11}">
                   · 판타지
                  </c:when>
                           <c:when test="${i.genre == 12}">
                   · SF
                  </c:when>
                           <c:when test="${i.genre == 13}">
                   · 서부극
                  </c:when>
                           <c:when test="${i.genre == 14}">
                   · 서사
                  </c:when>
                           <c:when test="${i.genre == 15}">
                   · 애니메이션
                  </c:when>
                           <c:when test="${i.genre == 16}">
                   · 다큐멘터리
                  </c:when>
                           <c:when test="${i.genre == 17}">
                   · 전쟁
                  </c:when>
                           <c:when test="${i.genre == 18}">
                   · 뮤지컬
                  </c:when>
                           <c:when test="${i.genre == 20}">
                   · 성인
                  </c:when>
                           <c:when test="${i.genre == 21}">
                   · 음악
                  </c:when>
                           <c:when test="${i.genre == 22}">
                   · 공연
                  </c:when>
                           <c:when test="${i.genre == 23}">
                   · 서스펜스
                  </c:when>
                           <c:when test="${i.genre == 25}">
                   · 예능
                  </c:when>
                        </c:choose>
                     </c:forEach>
                  </span>
               </div>
            </div>
         </div>

         <div class="col-12 d-block d-md-none p-0" style="margin-top: 50px;">
            <div class="top" style="height: 500px;">
               <img src="${list[0].img}" style="border-radius: 15px;">
            </div>
            <div class="bottom" style="height: 200px; position: relative;">
               <div class="title"
                  style="width: 100%; bottom: 0; position: absolute; left: 0; word-break: break-all">
                  <c:forEach var="i" items="${ottlist}">
                     <c:choose>
                        <c:when test="${i.ott == 4}">
                           <img style="width: 50px; height: 50px;" src="/img/n.png">
                        </c:when>
                        <c:when test="${i.ott == 5}">
                           <img style="width: 50px; height: 50px;" src="/img/w.png">
                        </c:when>
                        <c:when test="${i.ott == 10}">
                           <img style="width: 50px; height: 50px;" src="/img/t.png">
                        </c:when>
                        <c:when test="${i.ott == 17}">
                           <img style="width: 45px; height: 45px;" src="/img/Group25.png">
                        </c:when>
                     </c:choose>
                  </c:forEach>
                  <br>${list[0].ktitle}<br> <span style="font-size: 20px;">${list[0].etitle}</span><br>
                  <span class="genre"> <c:choose>
                        <c:when test="${list[0].score != null}">
                           <img style="margin-right: 5px; width: 20px; height: 20px;"
                              src="/img/tomato.png"
                              title="전 세계에서 가장 널리 인용되는 로튼 토마토의 '토마토 지수'">
                  ${list[0].score}%<br>
                        </c:when>
                     </c:choose> <c:choose>
                        <c:when test="${list[0].type == 'DRAMA'}">
                  TV
                  </c:when>
                        <c:when test="${list[0].type == 'MOVIE'}">
                  영화
                  </c:when>
                     </c:choose> <c:forEach var="i" items="${genrelist}">
                        <c:choose>
                           <c:when test="${i.genre == 1}">
                   · 드라마
                  </c:when>
                           <c:when test="${i.genre == 2}">
                   · 코미디
                  </c:when>
                           <c:when test="${i.genre == 3}">
                   · 액션
                  </c:when>
                           <c:when test="${i.genre == 4}">
                   · 멜로
                  </c:when>
                           <c:when test="${i.genre == 5}">
                   · 스릴러
                  </c:when>
                           <c:when test="${i.genre == 6}">
                   · 미스터리
                  </c:when>
                           <c:when test="${i.genre == 7}">
                   · 공포
                  </c:when>
                           <c:when test="${i.genre == 8}">
                   · 어드벤처
                  </c:when>
                           <c:when test="${i.genre == 9}">
                   · 범죄
                  </c:when>
                           <c:when test="${i.genre == 10}">
                   · 가족
                  </c:when>
                           <c:when test="${i.genre == 11}">
                   · 판타지
                  </c:when>
                           <c:when test="${i.genre == 12}">
                   · SF
                  </c:when>
                           <c:when test="${i.genre == 13}">
                   · 서부극
                  </c:when>
                           <c:when test="${i.genre == 14}">
                   · 서사
                  </c:when>
                           <c:when test="${i.genre == 15}">
                   · 애니메이션
                  </c:when>
                           <c:when test="${i.genre == 16}">
                   · 다큐멘터리
                  </c:when>
                           <c:when test="${i.genre == 17}">
                   · 전쟁
                  </c:when>
                           <c:when test="${i.genre == 18}">
                   · 뮤지컬
                  </c:when>
                           <c:when test="${i.genre == 20}">
                   · 성인
                  </c:when>
                           <c:when test="${i.genre == 21}">
                   · 음악
                  </c:when>
                           <c:when test="${i.genre == 22}">
                   · 공연
                  </c:when>
                           <c:when test="${i.genre == 23}">
                   · 서스펜스
                  </c:when>
                           <c:when test="${i.genre == 25}">
                   · 예능
                  </c:when>
                        </c:choose>
                     </c:forEach>
                  </span>
               </div>
            </div>
         </div>
         <form action="/insert.review" method="post" id="reviewform">
            <div class="col-12 d-none d-md-block p-0">
               <div style="float: left; width: 80%; margin-top: 100px;">
                  <input type="hidden" name="titlekr" value="${list[0].ktitle}">
                  <input type="hidden" name="imgurl" value="${list[0].img}">
                  <textarea name="contents" id="contents" cols="30" rows="7"
                     placeholder="짧게라도 좋으니 작품에 대해 감상을 기록해보세요."
                     style="width: 100%; height: 200px; color: #ededed; border: 1px solid white; border-radius: 12px; padding: 20px;"></textarea>
               </div>
               <div style="float: left; width: 20%;" align=center>
                  <button id="write" type="submit" class="btn"
                     style="margin-top: 170px;">등록</button>
               </div>
            </div>
         </form>
         <form action="/insert.review" method="post" id="reviewform">
            <div class="col-12 d-block d-md-none p-0">
               <div style="float: left; width: 100%; margin-top: 100px;">
                  <input type="hidden" name="titlekr" value="${list[0].ktitle}">
                  <input type="hidden" name="imgurl" value="${list[0].img}">
                  <textarea name="contents" id="contents" cols="30" rows="7"
                     placeholder="짧게라도 좋으니 작품에 대해 감상을 기록해보세요."
                     style="width: 100%; height: 200px; color: #ededed; border: 1px solid white; border-radius: 12px; padding: 2%;"></textarea>
               </div>
               <div style="width: 100%;" align=center>
                  <button id="write" type="submit" class="btn"
                     style="margin-top: 15px;">등록</button>
               </div>
            </div>
         </form>
         <!--                <div id="rrow3" style="height: 200px;"> -->
         <!--                <div style="height: 200px; border: 1px solid white; border-radius: 12px;"> -->
         <!--                <div style="float: left; width: 80%; height: 100%;"> -->
         <!--                   <textarea class="ceditable" id="ccomment" name="ccomment" -->
         <%--                      style="width: 98%;" rows="7" disabled>${i.contents}</textarea>    --%>
         <!--                </div> -->
         <%-- <%--                <c:if test="${loginID eq 'admin@admin.com'}"> --%>
         <!--                   <div id="rrow4" style="float: left; width: 20%; height: 100%;" align=center> -->
         <!--                      <button type="button" class="redit">수정</button> -->
         <%--                      <button type="button" value="${i.seq}" name="rseq" --%>
         <!--                         class="rdelete" style="margin-left: 5%;">삭제</button> -->
         <!--                   </div> -->
         <%-- <%--                </c:if> --%>
         -
         <!--                </div> -->
         <!--             </div> -->

         <!-- 나는 큰 창 리뷰 -->
         <div style="margin-bottom: 100px;"></div>
         <c:forEach var="i" items="${reviewlist}">
            <div class="container p-0" style="margin-bottom: 50px;">
               <div class="col-12 d-none d-md-block p-0" style="margin-top: 50px;">
                  <div id="row8">
                     <div class="rcontainer" style="color: white;">
                        <div id="rrow1">
                           <div id="rleft" align=left style="margin-left: 5px;">${i.writerName}</div>
                           <div id="rright" align="right">
                              <fmt:formatDate value="${i.write_date}" type="both"
                                 pattern="yyyy-MM-dd" />
                           </div>
                        </div>
                        <form action="/update.review" method="post">
                           <div id="rrow2">
                              <input type=hidden value="${i.seq}" class="rseq" name="rseq">
                           </div>
                           <div id="rrow3" style="height: 85%;">
                              <div
                                 style="float: left; width: 80%; height: 90%; margin-top: 1%;">
                                 <textarea class="ceditable" id="ccomment" name="contents"
                                    style="width: 98%; overflow-x: hidden;" rows="4" disabled>${i.contents}</textarea>
                                 <%--                   <input type=textarea value="${i.contents}" disabled --%>
                                 <!--                      class="ceditable" id="ccomment" name="ccomment" -->
                                 <!--                      style="width: 98%;" rows="7" cols="30"> -->
                              </div>
                              <c:if test="${loginID eq i.writerId}">
                                 <div id="rrow4"
                                    style="float: left; width: 20%; height: 100%; padding-top: 25px;"
                                    align=right>
                                    <button type="button" class="redit" id="redit">수정</button>
                                    <button type="button" value="${i.seq}" name="rseq"
                                       class="rdelete" style="margin-left: 5%;">삭제</button>
                                 </div>
                              </c:if>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </c:forEach>
         <!-- 창 줄이면 댓글보여줘 -->

         <c:forEach var="i" items="${reviewlist}">
            <form action="/update.review" method="post">
               <div class="col-12 d-block d-md-none p-0"
                  style="margin-bottom: 50px;">
                  <div style="width: 100%;">
                     <div id="findrow"
                        style="width: 100%; height: 200px; color: #ededed; border: 1px solid white; border-radius: 12px; padding: 2%;"
                        align=left>
                        <div style="float: left; width: 50%; font-weight: bold;">${i.writerName}</div>
                        <div
                           style="float: left; width: 50%; font-size: 12px; margin-bottom: 15px;"
                           align=right>
                           <fmt:formatDate value="${i.write_date}" type="both"
                              pattern="yyyy-MM-dd" />
                        </div>
                        <input type=hidden value="${i.seq}" class="rseq" name="rseq">
                        <textarea class="ceditable" id="ccomment" name="contents"
                           style="width: 100%; height: 80%; overflow-x: hidden;" rows="4"
                           disabled>${i.contents}</textarea>
                        <%--                   <div style="width: 100%; height: 80%; overflow-x: hidden;">${i.contents}</div> --%>
                     </div>
                     <c:if test="${loginID eq i.writerId}">
                        <div id="rrow5" style="width: 100%;" align=center>
                           <button type="button" class="redit2">수정</button>
                           <%--                         <button type="button" value="${i.seq}" name="rseq" --%>
                           <!--                                        class="rdelete" style="margin-left: 5%;">삭제</button> -->
                           <button type="button" value="${i.seq}" name="rseq"
                              class="rdelete2" style="margin-left: 20px; margin-top: 15px;">삭제</button>
                        </div>
                     </c:if>
                  </div>
               </div>
            </form>
         </c:forEach>
      </div>
   </div>
</body>
<script>
$("#reviewform").on("submit",function() {
   if ($("#contents").val() == "") {
      Swal.fire({
            background: '#121212',
            html: "내용을 먼저 입력해주세요.",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
             })
            $("#contents").focus();
            return false;
   }
});

$(".rdelete,.rdelete2").on("click", function() {
   Swal.fire({
        background: '#121212',
        html: "삭제하시겠어요?",
        color: '#ededed',
        showCancelButton: true,
        confirmButtonColor: '#7a07ee',
        cancelButtonColor: '#999999',
        confirmButtonText: '확인',
        cancelButtonText: '취소',
    }).then((result) => {
        if (result.isConfirmed) {
           $.ajax({
                url : "/delete.review",
                data : {
                   rseq : $(this).val()
                }
             }).done(function(result) {
                console.log(result)
                if (result == 1) {
                   location.reload();
                }
             })
        }else {
                  return false;
}
    })
});


//    $(".rdelete,.rdelete2").on("click", function() {
//       Swal.fire({
//            background: '#121212',
//            html: "삭제하시겠습니까?",
//            color: '#ededed',
//            showCancelButton: true,
//            confirmButtonColor: '#7a07ee',
//            confirmButtonText: '확인'
//             })
//       if (res) {
//          $.ajax({
//             url : "/delete.review",
//             data : {
//                rseq : $(this).val()
//             }
//          }).done(function(result) {
//             console.log(result)
//             if (result == 1) {
//                location.reload();
//             }
//          });
//       }
//    })

   $(".redit").on("click", function() {
	  $(this).closest("#rrow3").find(".ceditable").removeAttr("disabled");
      $(this).closest("#rrow3").find(".ceditable").focus();

      $(".rdelete").css("display", "none");
      $(".redit").css("display", "none");

      let rokBtn = $("<button>");
      rokBtn.text("수정");
      rokBtn.attr("type", "button");
      rokBtn.addClass("btn2");
      rokBtn.attr("id", "rok");

      let rcancelBtn = $("<button>");
      rcancelBtn.attr("type", "button");
      rcancelBtn.text("취소");
      rcancelBtn.css("margin-left", "6.4%");
      rcancelBtn.addClass("btn2");

      rcancelBtn.on("click", function() {
         location.reload();
      })

      $("#rrow4").prepend(rcancelBtn);
      $("#rrow4").prepend(rokBtn);
   })

   
   
   $(".redit2").on("click", function() {
      $(".ceditable").removeAttr("disabled");
      $(this).parent().siblings("#findrow").find("#ccomment").focus();

      $(".rdelete2").css("display", "none");
      $(".redit2").css("display", "none");

      let rokBtn = $("<button>");
      rokBtn.text("수정");
      rokBtn.attr("type", "button");
      rokBtn.addClass("redit2");
      rokBtn.attr("id", "rok");

      let rcancelBtn = $("<button>");
      rcancelBtn.attr("type", "button");
      rcancelBtn.text("취소");
      rcancelBtn.css("margin-left", "4.7%");
      rcancelBtn.addClass("rdelete2");

      rcancelBtn.on("click", function() {
         location.reload();
      })

      $("#rrow5").prepend(rcancelBtn);
      $("#rrow5").prepend(rokBtn);
   })

   $(document).on("click","#rok",function() {
      Swal.fire({
           background: '#121212',
           html: "수정하시겠어요?",
           color: '#ededed',
           showCancelButton: true,
           confirmButtonColor: '#7a07ee',
           cancelButtonColor: '#999999',
           confirmButtonText: '확인',
           cancelButtonText: '취소',
       }).then((result) => {
           if (result.isConfirmed) {
            $.ajax(
                  {
                     url : "/update.review",
                     data : {
                        rseq : $(this).closest("#rrow3").siblings(
                              "#rrow2").children(".rseq").val(),
                        pseq : $(this).closest("#rrow3").siblings(
                              "#rrow2").children(".pseq").val(),
                        contents : $(this).closest("#rrow3").find(
                              "#ccomment").val()
                     }
                  }).done(function(result) {
                         location.reload();
                   })
              }else {
                        return false;
      }
         })
   })
   
   $("#reviewform").on("submit",function() {
   if ("${loginID}" == "") {  
      Swal.fire({
            background: '#121212',
            html: "로그인 후에 글을 작성할 수 있어요.",
            color: '#ededed',
            showCancelButton: false,
            confirmButtonColor: '#7a07ee',
            confirmButtonText: '확인'
             })
            $("#contents").val("");
            return false;
   }
	});
         
         
         /* $("#rok").on("click", function() {
   Swal.fire({
        background: '#121212',
        html: "수정하시겠습니까?",
        color: '#ededed',
        showCancelButton: true,
        confirmButtonColor: '#7a07ee',
        cancelButtonColor: '#999999',
        confirmButtonText: '확인',
        cancelButtonText: '취소',
    }).then((result) => {
        if (result.isConfirmed) {
           $.ajax({
                url : "/update.review",
                data : {
                   rseq : $(this).val()
                }
             }).done(function(result) {
                console.log(result)
                if (result == 1) {
                   location.reload();
                }
             })
        }else {
                  return false;
}
    })
}); */
</script>
</html>