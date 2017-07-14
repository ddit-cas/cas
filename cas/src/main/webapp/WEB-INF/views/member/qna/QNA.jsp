<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
div#pageNum {
	padding: 10px;
	text-align: center;
}
div#wrap {
	width: 80%;
	min-width: 500px;
	max-width: 850px;
	margin: 100px auto;
}
</style>

<div id="wrap">
	<h3>1:1</h3>
	<hr>
	<form>
	<input class="col-sm-3" type="text" style="width: 200px;"><input class="col-sm-1" type="submit">
	</form>
	<div style="text-align: right;">
		<input type="button" value="글쓰기"/>
	</div>
	<table style="width: 100%; float: left; text-align: center;">
		<tr style="border: 1px solid; margin: 5px;">
			<td width="70%">제목</td><td>작성자</td><td>작성시간</td>
		</tr>
		<c:forEach var="i" begin="0" end="10">
		<tr>
			<td><a href="#">제목${i}</a></td><td><a href="#">작성자${i}</a></td><td>작성시간${i}</td>
		</tr>
		</c:forEach>
	</table>
	<div id="pageNum">		
	<c:forEach var="i" begin="1" end="5">
		<a href="uccForm?page=${i}">[${i}] </a>
	</c:forEach>
	</div>
</div>