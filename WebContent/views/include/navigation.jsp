<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<ul>
	<c:choose>
		<c:when test="${param.type == 'main'}" >
			<li class="selected"><a href="#">안대혁</a></li>
			<li><a href="">방명록</a></li>
			<li><a href="">게시판</a></li>
		</c:when>
		<c:when test="${param.type == 'board'}" >
			<li><a href="/mysite/">안대혁</a></li>
			<li><a href="">방명록</a></li>
			<li class="selected"><a href="">게시판</a></li>
		</c:when>
		<c:otherwise>
			<li><a href="/mysite/">안대혁</a></li>
			<li><a href="">방명록</a></li>
			<li><a href="">게시판</a></li>
		</c:otherwise>
	</c:choose>	
</ul>