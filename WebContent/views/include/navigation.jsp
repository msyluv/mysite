<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/board.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./jquery/jquery-1.9.0.js"></script>
<style>
	ul li.selected {
		background-color:#FFCC66;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("ul li").onmouseover(function(){
			var $liSelected = $("li.selected");
			$liSelected.removeClass("selected");
			
			var $li = $(this);
			$li.addClass("selected");
		});
	});
</script>
</head>
<body>

<ul>
	<c:choose>
		<c:when test="${param.type == 'main'}" >
			<li class="selected"><a href="#">양채호</a></li>
			<li><a href="guestbook">방명록</a></li>
			<li><a href="board">게시판</a></li>
		</c:when>
		<c:when test="${param.type == 'board'}" >
			<li><a href="/mysite/">양채호</a></li>
			<li><a href="guestbook">방명록</a></li>
			<li class="selected"><a href="#">게시판</a></li>
		</c:when>
		<c:when test="${param.type == 'guestbook'}" >
			<li><a href="/mysite/">양채호</a></li>
			<li class="selected"><a href="#">방명록</a></li>
			<li><a href="board">게시판</a></li>
		</c:when>
		<c:otherwise>
			<li><a href="/mysite/">양채호</a></li>
			<li><a href="guestbook">방명록</a></li>
			<li class="selected"><a href="board">게시판</a></li>
		</c:otherwise>
	</c:choose>	
</ul>

</body>
</html>
