<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	<nav class="navbar navbar-default" style="width: 830px; margin:0 auto 20px; text-align:center;">
		<div class="container-fluid" style=" width: 830px; margin:0 auto;">
			<ul class="nav navbar-nav">
				<li><a href="#" style=" width: 198px;">공지사항</a></li>
				<li><a href="#" style=" width: 198px;">자유게시판</a></li>
				<li><a href="#" style=" width: 198px;">공연홍보게시판</a></li>
				<li><a href="#" style=" width: 198px;">PR영상</a></li>
			</ul>
		</div>
	</nav>
			<p><img src="resources/images/noticee.png"
			style="width:829px; height:188px; margin:0 160px auto; background-size:cover;"></p>
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
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<title>자유게시판</title>
<body>
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
	font-size:16px;
}

th{
	text-align: center;
	font-size:16px;
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
					<li class="active"><a href="freeBoard.jsp">공지사항</a></li>
					<!--li><a href="people.php">PEOPLE</a></li-->
					<li><a href="noticeBoard.jsp">CAS란</a></li>
					<li><a href="cas-contact.jsp">공연 행사 일정</a></li>
				</ul>
			</div>
			<!--//tab-intro-->
		</div>
		<!--//company-snb-->

		<div class="company-cont">
			<h3 class="box">공지사항</h3>
			<div class="tab-content">
				<div id="home" class="tab-pane fade in active">
					<div class="selectcheck">
						<form class="form-inline">
							<p>
								<img src="resources/images/noticee.png"
									style="width: 800px; height: 188px; background-size: cover; margin:0 0 10px 0;">
							</p>
							<div class="searchgroup" style="float: right">
								<select class="form-control">
									<option value="title">제목</option>
									<option value="writer" selected>작성자</option>
									<option value="date">작성일</option>
								</select>
								<div class="form-group">
									<input class="form-control" id="focusedInput" type="text"
										placeholder="   검색    " style="margin:0 auto 5px;"> <input type="button"
										id="search" class="form-control" value="검색"> <input
										type="button" class="form-control" id="list" value="목록">
								</div>
							</div>
						</form>
					</div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
							</tr>
						</thead>
						
					</table>
				</div>
			</div>
		</div>
		<!--//company-cont-->
		<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
       <div class="row" style="margin:0 0 auto;">
        	<nav aria-label="..." >
            	<ul class="pager" role="tablist">
                    <li class="previous" onclick="goTo(1);"><a href="#"><span aria-hidden="true">←</span> Previous</a></li>
                    <li class="active" id="first">
                        <a aria-controls="tab1" data-toggle="tab" href="#tab1" role="tab">1</a>
                    </li>
                    <li>
                        <a aria-controls="tab2" data-toggle="tab" href="#tab2" role="tab">2</a>
                    </li>
                    <li>
                        <a aria-controls="tab3" data-toggle="tab" href="#tab3" role="tab">3</a>
                    </li>
                    <li>
                        <a aria-controls="tab4" data-toggle="tab" href="#tab4" role="tab">4</a>
                    </li>
                    <li id="last">
                        <a aria-controls="tab5" data-toggle="tab" href="#tab5" role="tab">5</a>
                    </li>                    
                    <li class="next" onclick="goTo(2);"><a href="#">Next <span aria-hidden="true">→</span></a></li>
                </ul>
            </nav>
        </div>
	</div>
	</div>

</body>
</html>
