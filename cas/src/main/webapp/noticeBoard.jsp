<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시판</title>
</head>
<style>
.container{
	margin:5px auto;
}

h2 {
	width: 960px;
	margin: 0 auto;
	margin-bottom: 10px;
}

table {
	border-collapse: collapse;
	width: 960px;
	margin: 0 auto;
	margin-bottom: 10px;
}

th, td {
	padding: 8px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color: #f5f5f5
}

.board-search {
	width: 960px;
	margin: auto;
	text-align: right;
}
</style>
</head>
<body>
	<div id="container">
		<div id="subContainer">
			<div id="subCotents">
				<!-- 2015. 11  ~  board단계 추가 시작 -->
				<div class="board-wrap">
					<!-- board_list 테이블 -->
					<div class="board-list">
						<div class="board-search">
							<form name="search_form" action="?" method="get"
								enctype="multipart/form-data" onsubmit="return validate(this)">
								<input type="hidden" name="bbs_code" value="notice">
								<!--  <input
									type="hidden" name="seq" value=""> <input type="hidden"
									name="skin" value=""> -->
								<input type="checkbox" class="chk" name="ss[st]" value="1"
									checked><label>제목</label>&nbsp;&nbsp; <input
									type="checkbox" class="chk" name="ss[sc]" value="1" checked><label>작성자</label>&nbsp;&nbsp;
								<input type="text" name="kw" id="kw" value=""
									class="search_word" title="검색어" hname="검색어" required> <input
									type="submit" class="search_btn btn_cmn" title="검색" value="검색">
								<input type="button" class="list_btn btn_cmn" title="목록"
									value="목록"
									onclick="location.href='?&seq=&skin=&bbs_code=notice'">
							</form>
						</div>
					</div>
					<br>
					<table>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>