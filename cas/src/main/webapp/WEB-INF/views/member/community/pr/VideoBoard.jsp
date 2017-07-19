<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
.tdclass{

}
.trclass{
	text-align: left;
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
	margin: 100px auto;
}
</style>
<script>
</script>
<div id="wrap">
	<h3>영상게시판</h3>
	<hr>
	<div>
		<input class="col-sm-3" type="text" style="width: 200px; color: black;"/>
		<input class="col-sm-1" type="submit" value="검색"/>
	</div>
	<div style="text-align: right;">
		<button>글쓰기</button>
	</div>
	<table class="ulclass">
		<c:forEach var="i" begin="0" end="1">
		<tr class="trclass">
			<td class="tdclass">
				<div>
					<a href='<c:url value="/resources/images/logo.png" />'>
						<img class="imgclass" alt="땡!!" src='<c:url value='/resources/images/logo.png' />'>
					</a>
					<br><a href='<c:url value="/resources/images/logo.png" />'>${i}</a>
					<br><a href="#">글쓴이</a>
					<br>작성일
				</div>
			</td>
		</tr>
		</c:forEach>
	</table>

	<div id="pageNum">		
		<c:forEach var="i" begin="1" end="5">
			<a href="uccForm?page=${i}">[${i}] </a>
		</c:forEach>
	</div>

</div>
