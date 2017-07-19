<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
#showTitleImg {
	height: 400px;
	width: 40%;
	float: left;
	padding-left: 26px;
	margin-bottom: 20px;
}

#detailShowInfo {
	border-top: 2px solid #666;
	float: left;
	margin: 22px 0 6px 50px;
	padding-top: 5px;
	width: 51%;
}

#detailShowInfo tr td:nth-child(1) {
	padding: 14px 0;
	border-bottom: 1px solid #ddd;
	width: 40%;
	background-color: #eee;
	text-align: center;
}

#detailShowInfo tr td:nth-child(2) {
	padding: 14px 0;
	border-bottom: 1px solid #ddd;
	width: 60%;
}

#showDetailInfoBtn {
	padding-right: 32px;
}

#showDetailContent {
	width: 100%;
	height: auto;
	border: 3px solid #ddd;
	border-radius: 0 2em 0 2em;
	overflow: hidden;
}

#showDetailContent img {
	width: 100%;
}

#commentDiv {
	border: 3px solid #ddd;
	border-radius: 0 2em 0 2em;
	height: auto;
	margin-top: 50px;
	padding: 9px 9px 24px 9px;
}

.commentText {
	width: 83%;
	height: 57px;
	border-radius: 0 1em 0 1em;
}
.recommentText {
    width: 74%;
    height: 57px;
    border-radius: 0 1em 0 1em;
}
.reRecommentText{
    width: 82%;
    height: 57px;
    border-radius: 0 1em 0 1em;
}
.commentWrite {
	width: 16%;
	height: 56px;
	border-radius: 1em;
}

.recommentBtn {
	border: 0;
	outline: 0;
}
</style>

<div class="company-snb" style="float:left; margin-top: 100px;">
      <h2>CAS-이야기</h2>
      <div class="">
         <ul style="margin-right: 40px;">
            <li class="active"><a href="fundList">공지사항</a></li>
         <li><a href="#">CAS란</a></li>
         <li><a href="fundingExampleList">행사일정</a></li>
         </ul>
      </div>
   </div>

<div id="body" style="float:right; width: 80%">
	<h1>공연정보</h1>
	<hr style="border-top: 2px solid #333;margin-top: 0;margin-bottom: 13px;">
	<div>
		<div>
			<img id="showTitleImg" src="/cas/resources/ogtopPost.jpg">
		</div>
		<div>
			<table class="table" id="detailShowInfo">
				<tr>
					<td><strong>공연제목</strong></td>
					<td>Doe</td>
				</tr>
				<tr>
					<td><strong>공연기간</strong></td>
					<td>Doe</td>
				</tr>
				<tr>
					<td><strong>공연시간</strong></td>
					<td>Doe</td>
				</tr>
				<tr>
					<td><strong>공연장소</strong></td>
					<td>Doe</td>
				</tr>
				<tr>
					<td><strong>공연장르</strong></td>
					<td>Doe</td>
				</tr>
				<tr>
					<td><strong>티켓가격</strong></td>
					<td>Doe</td>
				</tr>
				<tr>
					<td><strong>티켓구매처</strong></td>
					<td>Doe</td>
				</tr>
				<tr>
				</tr>
			</table>
		</div>
	</div>
	<div id="showDetailInfoBtn">
		<button style="float:right; margin-left: 6px;">좋아요</button>
		<a href="#" style="float:right; "><img src="/cas/resources/listBtnImg.gif"></a>
	</div>
	<hr style="clear:both;">
	<div id="showDetailContent">
		<img src="/cas/resources/ogtop.jpg">
	</div>
	
	<div id="commentDiv">
		<input type="text" class="commentText"> 
		<input type="button" class="commentWrite" value="댓글달기">
		<hr style="margin-top: 5px; margin-bottom: 10px; border-top: 1px solid #666;">
		
		<div>
			<div style="width: 9%; float: left; text-align: center;">
				<img src="/cas/resources/jim.png" style="width: 60px;height: 60px;"> 
			</div>
			<div style="width: 100%">
				<a href="#"><strong>아이디</strong></a> <label>입력날짜</label><br>
				공연잘봤어요!
				<button type="button" class="recommentBtn" data-toggle="collapse" data-target="#1Write">댓글달기</button>
				<button type="button" class="recommentBtn" data-toggle="collapse" data-target="#1Recomment">댓글보기</button>
				
				<div style="float: right;">
					<input type="button" value="수정">
					<input type="button" value="삭제">
				</div>
				
				<div id="1Write" class="collapse recommentWrite" style="padding-top: 10px;">
					<input type="text" class="recommentText"> 
					<input type="button" class="commentWrite" value="댓글달기">
				</div>



				<div id="1Recomment" class="collapse" style="padding: 10px 0 0 80px;">
<!-- 						댓글을 넣는 Div -->
					<div style="width: 9%; float: left; text-align: center;">
						<img src="/cas/resources/jim.png"
							style="width: 40px; height: 40px;">
					</div>
					<div style="width: 100%">
						<a href="#"><strong>아이디</strong></a> <label>입력날짜</label><br>
						공연잘봤어요!
						<button type="button" class="recommentBtn" data-toggle="collapse"
							data-target="#2Write">댓글달기</button>


						<div style="float: right;">
							<input type="button" value="수정">
							<input type="button" value="삭제">
						</div>
						<div id="2Write" class="collapse recommentWrite"
							style="padding: 10px 0 0 65px;">
							<input type="text" class="reRecommentText"> <input
								type="button" class="commentWrite"  value="댓글달기">
						</div>
						
					</div>





				</div>
		</div>
		
		
		<hr style="margin-top: 24px; margin-bottom: 10px; border-top: 1px solid #666;">
	</div>
</div>
