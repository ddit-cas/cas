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
					<li class="active"><a href="/member/freeboardForm">자유게시판</a></li>
					<!--li><a href="people.php">PEOPLE</a></li-->
					<li><a href="#">공연홍보게시판</a></li>
					<li><a href="#">UCC</a></li>
				</ul>
			</div>
			<!--//tab-intro-->
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

	</div>

</body>
</html>