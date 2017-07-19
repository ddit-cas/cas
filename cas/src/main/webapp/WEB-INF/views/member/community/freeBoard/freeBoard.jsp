<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
					<li class="active"><a href="freeBoard.jsp">자유게시판</a></li>
					<!--li><a href="people.php">PEOPLE</a></li-->
					<li><a href="#">공연홍보게시판</a></li>
					<li><a href="#">UCC</a></li>
				</ul>
			</div>
			<!--//tab-intro-->
			<table class="table table-hover" style="width:830px; margin:0 auto;" >
				<thead>
					<tr>
						<th style="width:70%; text-align: center; font-size: 15px;">제목</th>
						<th style="width:15%; text-align: center; font-size: 15px;">작성자</th>
						<th style="width:15%; text-align: center; font-size: 15px;">작성일</th>
					</tr>
				</thead>
				<tbody style="text-align: center; font-size: 15px;">
				<c:forEach var="content" items="${articleList}" >
					<tr>
						<td>${content.contentTitle}</td>
						<td>${content.contentWriter}</td>
						<td>${content.contentRegisDate}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<!--//company-snb-->

		<div class="company-cont">
			<h3 class="box">자유게시판</h3>
			<div class="tab-content">
				<div id="home" class="tab-pane fade in active">
					<div class="selectcheck">
						<form class="form-inline">
							<p>
								<img src="resources/images/free.png"
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
       <div class="row">
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

</body>
</html>
