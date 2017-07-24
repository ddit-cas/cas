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
	<div class="container">
		<div class="company-snb">
			<h2>cas-이야기</h2>
			<div class="">
				<ul>
					<li class="active"><a href="noticeList">공지사항</a></li>
					<!--li><a href="people.php">PEOPLE</a></li-->
					<li><a href="#">CAS란</a></li>
					<li><a href="#">공연 행사 일정</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="company-cont">
		<h3 class="box">공지사항</h3>
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div class="selectcheck">
					<form class="form-inline">
						<p>
							<img src="resources/images/free.png"
								style="width: 800px; height: 190px; background-size: cover; margin: 0 0 10px 0;">
						</p>
						<!-- 검색 -->
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
						</form>
					</div>
				</div>
				<!--테이블 리스트-->
				<table class="table table-hover"
					style="width: 800px; margin: 0 auto;">
					<thead>
						<tr>
							<th style="width: 30%; text-align: center; font-size: 15px;">제목</th>
							<th style="width: 8%; text-align: center; font-size: 15px;">작성자</th>
							<th style="width: 15%; text-align: center; font-size: 15px;">작성일</th>
						</tr>
					</thead>
					<tbody style="text-align: center; font-size: 15px;">
						<c:forEach var="content" items="${articleList}">
							<tr>
								<td><a href="noticeDetail">${content.contentTitle}</a></td>
								<td>${content.contentWriter}</td>
								<td>${content.contentRegisDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!--//company-snb-->
		</div>
	</div>
<!-- 페이지수  -->
<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
	<div class="row">
		<nav aria-label="...">
			<ul class="pager" role="tablist">
				<li class="previous" onclick="goTo(1);"><a href="#"><span
						aria-hidden="true">←</span> Previous</a></li>
				<li class="active" id="first"><a aria-controls="tab1"
					data-toggle="tab" href="#tab1" role="tab">1</a></li>
				<li><a aria-controls="tab2" data-toggle="tab" href="#tab2"
					role="tab">2</a></li>
				<li><a aria-controls="tab3" data-toggle="tab" href="#tab3"
					role="tab">3</a></li>
				<li class="next" onclick="goTo(2);"><a href="#">Next <span
						aria-hidden="true">→</span></a></li>
			</ul>
		</nav>
	</div>
</div>

