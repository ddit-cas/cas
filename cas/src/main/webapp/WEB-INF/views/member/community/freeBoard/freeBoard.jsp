<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<div class="company-wrap">
	<div class="company-snb">
		<h2>커뮤니티</h2>
		<div class="">
			<ul>
				<li class="active"><a href="freeBoard.jsp">자유게시판</a></li>
				<!--li><a href="people.php">PEOPLE</a></li-->
				<li><a href="#">공연홍보게시판</a></li>
				<li><a href="#">UCC</a></li>
			</ul>
		</div>
	</div>
	<div class="company-cont">
		<h3 class="box">자유게시판</h3>
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div class="selectcheck">
					<form class="form-inline">
						<p>
							<img src="resources/images/free.png"
								style="width: 800px; height: 190px; background-size: cover; margin: 0 0 10px 0;">
						</p>
						<div class="searchgroup" style="float: right">
							<select class="form-control">
								<option value="title">제목</option>
								<option value="writer" selected>작성자</option>
								<option value="date">작성일</option>
							</select>
							<div class="form-group">
								<input class="form-control" id="focusedInput" type="text"
									placeholder="   검색    " style="margin: 0 auto 5px;"> <input
									type="button" id="search" class="form-control" value="검색">
								<input type="button" class="form-control" id="list" value="목록">
							</div>
						</div>
					</form>
				</div>
				<!--//tab-intro-->
				<table class="table table-hover"
					style="width: 800px; height: 1100px; margin: 0 auto;">
					<thead>
						<tr>
							<th style="width: 30%; text-align: center; font-size: 15px;">제목</th>
							<th style="width: 8%; text-align: center; font-size: 15px;">작성자</th>
							<th style="width: 15%; text-align: center; font-size: 15px;">작성일</th>
						</tr>
					</thead>
					<tbody style="text-align: center; font-size: 15px;">
					<c:forEach var="i" begin="${index*7}" end="${index*7+6}">
						<tr>
							<td>${articleList[i].contentTitle}</td>
							<td>${articleList[i].contentWriter}</td>
							<td>${articleList[i].contentRegisDate}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<!--//company-snb-->
		</div>
	</div>
</div>
<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
	<div class="row">
		<nav aria-label="...">
			<ul class="pager" role="tablist">
				<li class="previous">
					<a href="#"><span aria-hidden="true">←</span>
						Previous
					</a>
				</li>
				<c:forEach var="i" begin="${minNum}" end="${maxNum}">
				<li class="active">
					<a aria-controls="tab1" href="/cas/freeboardList?tab=${i}">
						${i }
					</a>
				</li>
				</c:forEach>
				<li class="next">
					<a href="#">Next<span aria-hidden="true">→</span>
					</a>
				</li>
			</ul>
		</nav>
	</div>
</div>
