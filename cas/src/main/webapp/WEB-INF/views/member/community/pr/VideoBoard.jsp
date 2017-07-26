<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/cas/resources/css/fundList.css"
		type="text/css">
<style>
.form-inline {
	display: block;
	text-align: right;
}

.board-menu li {
	position: relative;
	float: left;
	width: 20%;
	font-size: 16px;
	border: 1px solid #d7dce7;
	border-left: 0 none;
}

td {
	text-align: center;
	font-size: 16px;
}

th {
	text-align: center;
	font-size: 16px;
}

li a:hover {
	background-color: #666;
}

#body {
	margin-top: 58px;
}
</style>

<script>
</script>
<div class="company-wrap">
	<div class="company-snb" style="float: left;">
		<h2>커뮤니티</h2>
		<div class="">
			<ul>
				<li class="active"><a href="/cas/freeboardList">자유게시판</a></li>
				<li><a href="/cas/promotionList">공연홍보</a></li>
				<li><a href="/cas/uccList">PR영상</a></li>
			</ul>
		 </div>
	</div>
	<div class="company-cont" style="height: auto;">
		<h3 class="box">영상게시판</h3>
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div class="selectcheck">
					<div class="form-group">
						<input class="form-control" id="focusedInput" type="text"
							placeholder="   검색    " style="margin: 0 auto 5px;"> <input
							type="button" id="search" class="form-control" value="검색">
						<input type="button" class="form-control" id="list" value="목록">
					</div>
					<c:forEach var="i" begin="${firstRow}" end="${lastRow}">
					<div class="col-md-4" style="height: 600px;">
						<div class="single-blog-item">
							<div>
								<a href='<c:url value='/uccDetail?contentNum=${articleList[i].contentNum }' />'>
									<img class="imgclass" alt="땡!!" src='<c:url value='${articleList[i].contentImg }' />'>
								</a>
								<div class="blog-content">
									<br><a href='<c:url value="/uccDetail?contentNum=${articleList[i].contentNum }" />'>${articleList[i].contentTitle}</a>
									<br><a href="${articleList[i].contentWriter }">${articleList[i].contentWriter }</a>
									<br>${articleList[i].contentRegisDate }
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
			</div>
		</div>
	</div>
</div>


<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3" style="text-align: center;">
	<div class="row">
		<nav aria-label="...">
			<ul class="pager" role="tablist">
				<li class="previous">
					<a href="/cas/uccList?tab=${minNum-1}"><span aria-hidden="true">←</span>
						이전
					</a>
				</li>
				<c:forEach var="i" begin="${minNum}" end="${maxNum}">
				<c:choose>
				<c:when test="${index==i}">
				<li>
					<a style="background: #337ab7; color: #fff;" aria-controls="tab1" href="/cas/uccList?tab=${i}">
						${i }
					</a>
				</li>
				</c:when>
				<c:otherwise>
				<li>
					<a aria-controls="tab1" href="/cas/uccList?tab=${i}">
						${i }
					</a>
				</li>
				</c:otherwise>
				</c:choose>
				</c:forEach>
				<li class="next">
					<a href="/cas/uccList?tab=${maxNum+1}">다음<span aria-hidden="true">→</span>
					</a>
				</li>
			</ul>
		</nav>
	</div>
</div>

</div>
