<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<!-- sweetalert하기 위한 링크 -->
<link rel="stylesheet" href="/cas/resources/css/sweetalert.css">
<script src="/cas/resources/js/sweetalert/sweetalert.min.js"></script>

   <link rel="stylesheet" href="/cas/resources/css/casSuccessDetail.css"
      type="text/css">
   <style>
#body {
   margin-top:
}

.center {
   margin-top: 50px;
}

.modal-header {
   padding-bottom: 5px;
}

.modal-footer {
   padding: 0;
}

.modal-footer .btn-group button {
   height: 40px;
   border-top-left-radius: 0;
   border-top-right-radius: 0;
   border: none;
   border-right: 1px solid #ddd;
}

.modal-footer .btn-group:last-child>button {
   border-right: 0;
}

div.company-wrap {
   overflow: hidden;
   width: 1000px;
   margin: -57px 212px;
}

.detail-top-wrap .top-title h3 {
   font-size: 29px;
   line-height: 42px;
   font-weight: 500;
   text-align: center;
   color: #fff;
}

.wd-layout-sub-content-inner {
   width: 1071px;
   /* width: 1000px; */
   margin: 0 -77px;
   padding: 0 80px;
   overflow: hidden;
   /* min-height: 700px; */
}
</style>
	<script type="text/javascript">
		
	</script>
	<div id="body">
		<div class="container">
			<div class="company-snb" style="float: left;">
				<h2>커뮤니티</h2>
				<div class="">
					<ul>
						<li class="active"><a href="freeboardList">자유게시판</a></li>
						<!--li><a href="people.php">PEOPLE</a></li-->
						<li><a href="#">공연홍보게시판</a></li>
						<li><a href="#">UCC</a></li>
					</ul>
				</div>
			</div>
			<div class="company-cont" style="width: 960px;">
				<h3 class="box">자유게시판</h3>
				<div class="row">
					<div class="col-lg-12">
						<div class="table-responsive">
							<table class="table table-bordered"
								style="text-align: left; width: 925px;">
								<tbody>
									<tr>
										<th
											style="width: 10%; text-align: center; background-color: #eeeeee">제목</th>
										<td>${articleVO.contentTitle}</td>
									</tr>
									<tr>
										<th style="text-align: center; background-color: #eeeeee">작성자</th>
										<td>${articleVO.contentWriter}</td>
									</tr>
									<tr>
										<th style="text-align: center; background-color: #eeeeee">작성일</th>
										<td>${articleVO.contentRegisDate}</td>
									</tr>
									<tr>
										<td colspan="3" style="background-color: #eeeeee;text-align:center;"><label
											for="InputMessage">내용</label></td>
									</tr>
									<tr>
										<td style="height: 200px;" colspan="5">${articleVO.contentContent }
										</td>
									</tr>
								</tbody>
							</table>
							<div class="form-group">
								<a href="freeboardList"><input type="button" name="submit"
									id="submit" value="목록" class="btn btn-info pull-right" /></a>
								<div class="form-group" style="float: left;">
									<button data-toggle="modal" data-target="#squarespaceModal"
										class="btn btn-primary center-block">신고</button>
								</div>
							</div>
						</div>
					</div>

					<!-- 자유게시판 상세 댓글 -->
					<div class="wdetail-comment">
						<p class="comment-num">
							<em>8</em>개의 댓글이 달려있습니다.
						</p>
						<form id="recommform" action="#" method="post">
							<div class="main-comment">
								<textarea placeholder="댓글을 입력하세요." id="commentCnt"
									onclick="isLoginUser()" name="body"
									style="overflow-y: hidden; height: 78px;"></textarea>
								<input id="depth" name="depth" type="hidden" value="0">
								<input id="groupId" name="groupId" type="hidden" value="2">
								<div class="btn-wrap">
									<button class="btn-comment" onclick="ajaxRegistComment();">댓글달기</button>
								</div>
							</div>
						</form>

						<div class="comment-box">

							<div class="comment-wrap">
								<div class="comment-info">


									<a href="javascript:goUserProfile(50437031)"><em
										style="background-image: url(https://wadizwww.imgix.net/wwwwadiz/green001/fb_profile_pics/1032341289.jpg?dpr=2&amp;amp;auto=format,compress&amp;amp;cs=tinysrgb&amp;amp;gifq=70&amp;amp;w=46&amp;amp;h=46)"></em><span
										class="name">최유진</span></a>
								</div>
								<p id="cmtCnt_1" class="comment-content">여러분의 모습이 참 멋지네요!
									응원할게요! :)</p>
								<input type="hidden" id="originRec-1"
									value="여러분의 모습이 참 멋지네요! 응원할게요!  :)">
								<div class="comment-bottom">
									<div id="modifyOffBtm_1">
										<button type="button" id="testBtn"
											onclick="$('#reply_1').show();$('#replyCnt_1').focus();">답글
											달기</button>
										<span class="date">2014.10.23 09:14:56</span>
									</div>
									<div id="btnModifyOn_1" style="display: none;">
										<button type="button" onclick="cancelModifyComment('1');">취소</button>
										<button type="button" onclick="ajaxModifyComment('1');">수정완료</button>
									</div>
								</div>
							</div>
							<script>
								$('#testBtn').click(function() {
									$('#reply_1').toggleClass("hide");
								});
							</script>
							<div id="reply_1" class="comment-wrap reply edit hide">
								<div class="comment-info">
									<em
										style="background-image: url(/resources/equity/img/_temp/profile-default.png)"></em><span
										class="name"></span>
								</div>
								<form id="replyForm_1">
									<textarea id="replyCnt_1" name="body"
										style="overflow-y: hidden;"></textarea>
									<input name="parentThread" type="hidden" value="2274000">
									<input name="groupId" type="hidden" value="2"> <input
										name="depth" type="hidden" value="1">
								</form>
								<div class="comment-bottom">
									<button type="button" onclick="$('#reply_1').hide();">취소</button>
									<button type="button" onclick="ajaxResgistCommentReply('1')">작성완료</button>
								</div>
							</div>

							<div class="comment-wrap reply">
								<div class="comment-info">

									<a href="javascript:goMakerProfile(29634030)"><em
										style="background-image: url(https://www.wadiz.kr/wwwwadiz/green001/2014/0906/FQZOYZGMUKJR.png)"></em><span
										class="name">집에가는길<i class="mark">메이커</i></span></a>
								</div>
								<p id="cmtCnt_2" class="comment-content">감사합니다!!! ㅎㅎ</p>
								<div class="comment-bottom">
									<div id="modifyOffBtm_2">
										<span class="date">2014.11.10 21:09:24</span>
									</div>
									<div id="btnModifyOn_2" style="display: none;">
										<button type="button" onclick="cancelModifyComment('2');">취소</button>
										<button type="button" onclick="ajaxModifyComment('2');">수정완료</button>
									</div>
								</div>
							</div>

							<div class="comment-wrap">
								<div class="comment-info">


									<a href="javascript:goUserProfile(30925631)"><em
										style="background-image: url(https://www.wadiz.kr/wwwwadiz/green001/2014/0825/DBGOEMZIWOVN.jpg)"></em><span
										class="name">최수연</span></a>
								</div>
								<p id="cmtCnt_3" class="comment-content">성폭력 피해자 분들께 진정으로
									도움이 되었으면 좋겠습니다. 응원해요!</p>
								<input type="hidden" id="originRec-3"
									value="성폭력 피해자 분들께 진정으로 도움이 되었으면 좋겠습니다. 응원해요!">
								<div class="comment-bottom">
									<div id="modifyOffBtm_3">
										<button type="button"
											onclick="$('#reply_3').show();$('#replyCnt_3').focus();">답글
											달기</button>
										<span class="date">2014.10.15 12:13:26</span>
									</div>
									<div id="btnModifyOn_3" style="display: none;">
										<button type="button" onclick="cancelModifyComment('3');">취소</button>
										<button type="button" onclick="ajaxModifyComment('3');">수정완료</button>
									</div>
								</div>
							</div>

							<div id="reply_3" class="comment-wrap reply edit">
								<div class="comment-info">
									<em
										style="background-image: url(/resources/equity/img/_temp/profile-default.png)"></em><span
										class="name"></span>
								</div>
								<form id="replyForm_3">
									<textarea id="replyCnt_3" name="body"
										style="overflow-y: hidden;"></textarea>
									<input name="parentThread" type="hidden" value="2052000">
									<input name="groupId" type="hidden" value="2"> <input
										name="depth" type="hidden" value="1">
								</form>
								<div class="comment-bottom">
									<button type="button" onclick="$('#reply_3').hide();">취소</button>
									<button type="button" onclick="ajaxResgistCommentReply('3')">작성완료</button>
								</div>
							</div>


							<div class="comment-wrap reply">
								<div class="comment-info">

									<a href="javascript:goMakerProfile(29634030)"><em
										style="background-image: url(https://www.wadiz.kr/wwwwadiz/green001/2014/0906/FQZOYZGMUKJR.png)"></em><span
										class="name">집에가는길<i class="mark">메이커</i></span></a>



								</div>
								<p id="cmtCnt_4" class="comment-content">응원해주셔서 감사합니다! 더욱
									노력하겠습니다!</p>
								<div class="comment-bottom">
									<div id="modifyOffBtm_4">
										<span class="date">2014.11.10 21:09:11</span>
									</div>
									<div id="btnModifyOn_4" style="display: none;">
										<button type="button" onclick="cancelModifyComment('4');">취소</button>
										<button type="button" onclick="ajaxModifyComment('4');">수정완료</button>
									</div>
								</div>
							</div>

							<div class="comment-wrap">
								<div class="comment-info">

									<a href="javascript:goUserProfile(30922531)"><em
										style="background-image: url(https://www.wadiz.kr/wwwwadiz/green001/2014/0825/XHVXHKDSOIGM.jpg)"></em><span
										class="name">최예슬</span></a>

								</div>
								<p id="cmtCnt_5" class="comment-content">노래 잘 들었습니다. 소름끼치는 그
									날 누군가의 기억, 이 음악으로 치유됐으면 합니다.</p>
								<input type="hidden" id="originRec-5"
									value="노래 잘 들었습니다. 소름끼치는 그 날 누군가의 기억, 이 음악으로 치유됐으면 합니다. ">
								<div class="comment-bottom">
									<div id="modifyOffBtm_5">
										<button type="button"
											onclick="$('#reply_5').show();$('#replyCnt_5').focus();">답글
											달기</button>
										<span class="date">2014.10.14 14:11:29</span>
									</div>
									<div id="btnModifyOn_5" style="display: none;">
										<button type="button" onclick="cancelModifyComment('5');">취소</button>
										<button type="button" onclick="ajaxModifyComment('5');">수정완료</button>
									</div>
								</div>
							</div>

							<div id="reply_5" class="comment-wrap reply edit">
								<div class="comment-info">
									<em
										style="background-image: url(/resources/equity/img/_temp/profile-default.png)"></em><span
										class="name"></span>
								</div>
								<form id="replyForm_5">
									<textarea id="replyCnt_5" name="body"
										style="overflow-y: hidden;"></textarea>
									<input name="parentThread" type="hidden" value="1981000">
									<input name="groupId" type="hidden" value="2"> <input
										name="depth" type="hidden" value="1">
								</form>
								<div class="comment-bottom">
									<button type="button" onclick="$('#reply_5').hide();">취소</button>
									<button type="button" onclick="ajaxResgistCommentReply('5')">작성완료</button>
								</div>
							</div>


							<div class="comment-wrap reply">
								<div class="comment-info">
									<a href="javascript:goMakerProfile(29634030)"><em
										style="background-image: url(https://www.wadiz.kr/wwwwadiz/green001/2014/0906/FQZOYZGMUKJR.png)"></em><span
										class="name">집에가는길<i class="mark">메이커</i></span></a>
								</div>
								<p id="cmtCnt_6" class="comment-content">감사합니다!</p>
								<div class="comment-bottom">
									<div id="modifyOffBtm_6">
										<span class="date">2014.11.10 15:53:11</span>
									</div>
									<div id="btnModifyOn_6" style="display: none;">
										<button type="button" onclick="cancelModifyComment('6');">취소</button>
										<button type="button" onclick="ajaxModifyComment('6');">수정완료</button>
									</div>
								</div>
							</div>


							<div class="comment-wrap">
								<div class="comment-info">

									<a href="javascript:goUserProfile(45415031)"><em
										style="background-image: url(/resources/equity/img/_temp/profile-default.png)"></em><span
										class="name">kamzi411</span></a>

								</div>
								<p id="cmtCnt_7" class="comment-content">화이팅입니다!</p>
								<input type="hidden" id="originRec-7" value="화이팅입니다!">
								<div class="comment-bottom">
									<div id="modifyOffBtm_7">
										<button type="button"
											onclick="$('#reply_7').show();$('#replyCnt_7').focus();">답글
											달기</button>
										<span class="date">2014.10.09 01:55:29</span>
									</div>
									<div id="btnModifyOn_7" style="display: none;">
										<button type="button" onclick="cancelModifyComment('7');">취소</button>
										<button type="button" onclick="ajaxModifyComment('7');">수정완료</button>
									</div>
								</div>
							</div>

							<div id="reply_7" class="comment-wrap reply edit">
								<div class="comment-info">
									<em
										style="background-image: url(/resources/equity/img/_temp/profile-default.png)"></em><span
										class="name"></span>
								</div>
								<form id="replyForm_7">
									<textarea id="replyCnt_7" name="body"
										style="overflow-y: hidden;"></textarea>
									<input name="parentThread" type="hidden" value="1800000">
									<input name="groupId" type="hidden" value="2"> <input
										name="depth" type="hidden" value="1">
								</form>
								<div class="comment-bottom">
									<button type="button" onclick="$('#reply_7').hide();">취소</button>
									<button type="button" onclick="ajaxResgistCommentReply('7')">작성완료</button>
								</div>
							</div>

							<div class="comment-wrap reply">
								<div class="comment-info">
									<a href="javascript:goMakerProfile(29634030)"><em
										style="background-image: url(https://www.wadiz.kr/wwwwadiz/green001/2014/0906/FQZOYZGMUKJR.png)"></em><span
										class="name">집에가는길<i class="mark">메이커</i></span></a>
								</div>
								<p id="cmtCnt_8" class="comment-content">응원해주셔서 감사합니다^^</p>
								<div class="comment-bottom">
									<div id="modifyOffBtm_8">
										<span class="date">2014.10.10 14:38:26</span>
									</div>
									<div id="btnModifyOn_8" style="display: none;">
										<button type="button" onclick="cancelModifyComment('8');">취소</button>
										<button type="button" onclick="ajaxModifyComment('8');">수정완료</button>
									</div>
								</div>
							</div>

						</div>

						<div class="main-comment">
							<p class="comment-num" style="text-align: center;">
								전체 <em>8</em>개의 댓글이 있습니다.
							</p>
							<div class="btn-wrap" style="text-align: center">
								<button class="btn-comment"
									onclick="location.href='/web/campaign/detail/qa/436'">댓글
									보러가기</button>
							</div>
						</div>

					</div>
					<!-- //[N] 프로젝트 상세 댓글 -->

					<!-- S : 추천의 글 -->
					<br>

					<!-- E : 댓글 리스트 include -->
				</div>
				<!-- E : 댓글 영역 -->
				<input type="hidden" id="movieembed" value="">
			</div>
			<!-- E : campaign 컨텐츠 -->
		</div>
	</div>

	<!-- 신고 modal폼 -->
	<div class="modal fade" id="squarespaceModal" tabindex="-1"
		role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h3 class="modal-title" id="lineModalLabel">신고하기</h3>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="exampleInputtext">신고분류</label>
							<div class="checkbox">
								<label> <input type="checkbox"> 광고(성인광고 포함)
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> 음란물
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> 혐오
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> 심한욕설
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> 악플(공격적 발언, 비아냥)
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> 기타
								</label>
							</div>
						<div class="form-group">
							<label for="exampleInputtext">신고자</label> <input type="text"
								class="form-control" id="text">
						</div>
						<div class="form-group">
							<label for="exampleInputtext">신고 내용</label> <input type="text"
								class="form-control" id="text">
						</div>
						</div>
						<input type="hidden" name="" value="${session.loginUser.memId}">
					</form>
				</div>
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group"
						aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-danger"
								data-dismiss="modal" role="button">닫기</button>
						</div>
						<div class="btn-group" role="group">
							<button type="submit" id="test"
								class="btn btn-primary" data-action="submit" role="button">신고하기</button>
								
							<script>
								$(function(){
									$('#test').on('click',function(){
										swal('신고완료','신고가 완료되었습니다.','success');
										$('.confirm').bind('click',function(){
											$('#squarespaceModal').modal('hide');
										});
									});
								});
							</script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
