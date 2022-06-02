<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style>
div {
width:200px;
height:400px;

border:1px solid crimson;
}
</style>
</head>
<body>
	<div id="articleView">
       <div>1</div>
       <div>2</div>
       <div>3</div> 
	</div>
</body>
<script>
$(document).ready(function () {
	  $(document).scroll(function() {
	    let maxHeight = $(document).height();
	    let currentScroll = $(window).scrollTop() + $(window).height();

	    if (maxHeight <= currentScroll + 100) {
// 	      $.ajax({
	    	  $("#articleView").append("<div>Hello</div>");
// 	      })
	    }
	  })
	});
</script>
</html>