<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
.divclass{
	text-align: center;
}
.liclass{
	list-style: none;
	float: left;
}
.imgclass{
	width: 200px;
}
div#pageNum {
	padding: 10px;
	text-align: center;
}
div#wrap {
	width: 80%;
	min-width: 500px;
	max-width: 850px;
	margin: 0 auto;
}
</style>

<div id="wrap">
	<h3>영상게시판</h3>
	<hr>
	<table class="ulclass">
		<c:forEach var="i" begin="0" end="10">
		<tr class="liclass">
			<td class="divclass">
				<a href='<c:url value='/resources/logo.png' />'><img class="imgclass" alt="땡!!" src='<c:url value='/resources/logo.png' />'></a>
				<br><a href='<c:url value='/resources/logo.png' />'>${i}</a>
			</td>
		</tr>
		</c:forEach>
	</table>
	<div id="pageNum">		
		<c:forEach var="i" begin="1" end="5">
			<a href="messageList?page=${i}">[${i}] </a>
		</c:forEach>
	</div>
</div>