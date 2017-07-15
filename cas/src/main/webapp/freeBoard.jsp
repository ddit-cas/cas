<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
</head>
<style>
.container {
	width: 960px;
}

h2 {
	width: 960px;
	margin: 0 auto;
}

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
}

li a:hover{
	background-color: #666;
}
</style>
<body>
<div id="body">
	<nav class="navbar navbar-default" style="width: 830px; margin:0 auto 20px; text-align:center;">
		<div class="container-fluid" style=" width: 830px; margin:0 auto;">
			<ul class="nav navbar-nav">
				<li><a href="noticeBoard.jsp" style=" width: 198px;">공지사항</a></li>
				<li><a href="freeBoard.jsp" style=" width: 198px;">자유게시판</a></li>
				<li><a href="#" style=" width: 198px;">공연홍보게시판</a></li>
				<li><a href="#" style=" width: 198px;">PR영상</a></li>
			</ul>
		</div>
	</nav>
	<p><img src="resources/images/free.png" style="width:829px; height:188px; margin:0 160px auto; background-size:cover;"></p>
	<div class="container">
		<div class="content">
			<div class="selectcheck">
				<form class="form-inline">
					<div class="searchgroup" style="width:405px; margin:0 582px auto;">
						<select class="form-control">
							<option value="title">제목</option>
							<option value="writer" selected>작성자</option>
							<option value="date">작성일</option>
						</select>
						<div class="form-group">
							<input class="form-control" id="focusedInput" type="text"
								placeholder="   검색    " style="margin:0 0 0;"> <input type="button"
								id="search" class="form-control" value="검색"> <input
								type="button" class="form-control" id="list" value="목록">
						</div>
					</div>
				</form>
			</div>
			<table class="table table-hover" style="width:830px; margin:0 auto;" >
				<thead>
					<tr>
						<th style="text-align: center; font-size: 15px;">제목</th>
						<th style="text-align: center; font-size: 15px;">작성자</th>
						<th style="text-align: center; font-size: 15px;">작성일</th>
					</tr>
				</thead>
				<tbody style="text-align: center; font-size: 15px;">
					<tr>
						<td>Doe</td>
						<td>john@example.com</td>
						<td>2017-07-10</td>
					</tr>
					<tr>
						<td>Moe</td>
						<td>mary@example.com</td>
						<td>2017-07-10</td>
					</tr>
					<tr>
						<td>Dooley</td>
						<td>july@example.com</td>
						<td>2017-07-10</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</div>
</body>
</html>