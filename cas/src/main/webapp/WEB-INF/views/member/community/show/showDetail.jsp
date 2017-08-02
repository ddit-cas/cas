<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
.commentTextStyle {
	width: 83%;
	height: 57px;
	border-radius: 0 1em 0 1em;
}
.recommentTextStyle {
    width: 74%;
    height: 57px;
    border-radius: 0 1em 0 1em;
}
.reRecommentTextStyle{
    width: 82%;
    height: 57px;
    border-radius: 0 1em 0 1em;
}
.commentWrite {
	width: 16%;
	height: 56px;
	border-radius: 1em;
}

.commentBtn {
	border: 0;
	outline: 0;
}
#profileImg{
	width: 9%; 
	float: left; 
	text-align: center;
}
.commentHr{
	margin-top: 24px; 
	margin-bottom: 10px; 
	border-top: 1px solid #666;
}
</style>
<div class="company-snb" style="float:left; margin-top: 100px;">
      	<h2>커뮤니티</h2>
		<div class="">
			<ul>
				<li class="active"><a href="/cas/freeboardList">자유게시판</a></li>
				<li><a href="/cas/promotionList">공연홍보</a></li>
				<li><a href="/cas/uccList">CAS-UCC</a></li>
			</ul>
		</div>
   </div>
<div id="body" style="float:right; width: 80%">
	<h1>공연정보</h1>
	<hr style="border-top: 2px solid #333;margin-top: 0;margin-bottom: 13px;">
	<div>
		<div>
			<img id="showTitleImg" src="${promotionVO.contentImg}">
		</div>
		<div>
			<table class="table" id="detailShowInfo">
				<tr>
					<td><strong>공연제목</strong></td>
					<td>${promotionVO.contentTitle}</td>
				</tr>
				<tr>
					<td><strong>공연기간</strong></td>
					<td>${promotionVO.startDate}~${promotionVO.endDate}</td>
				</tr>
				<tr>
					<td><strong>공연시간</strong></td>
					<td>${promotionVO.consertTime}</td>
				</tr>
				<tr>
					<td><strong>공연장소</strong></td>
					<td>${promotionVO.consertPlace}</td>
				</tr>
				<tr>
					<td><strong>공연장르</strong></td>
					<td>${promotionVO.consertGenre}</td>
				</tr>
				<tr>
					<td><strong>주최자</strong></td>
					<td>${promotionVO.contentWriter}</td>
				</tr>
				<tr>
					<td><strong>티켓구매처</strong></td>
					<td><a onclick="go_link()">바로가기</a></td>
				</tr>
				<tr>
				</tr>
			</table>
		</div>
	</div>
	<div id="showDetailInfoBtn" style="float: right; ">
	<div class="btn-group" style="float: right;">
												<button type="button" class="btn btn-primary" style="  height: 24px; padding: 1px 8px;">&nbsp;Social</button>
												
												<button type="button"
													class="btn btn-primary dropdown-toggle"
													data-toggle="dropdown"
													style=" height: 24px; padding: 1px 5px;">
													<span class="caret"></span><span class="sr-only">&nbsp;Social</span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li style="width: 66px; float: left;"><a
														href="javascript:toSNS('facebook','공유테스트중','192.168.204.46/cas/promotionDetail?contentNum=${promotionVO.contentNum }')"
														title="페이스북으로 가져가기"><img
															src="resources/images/facebook.png" style="width: 40px;"></a></li>
													<li style="float: right;"><a
														href="javascript:toSNS('twitter','테스트중입니다.','192.168.204.46/cas/promotionDetail?contentNum=${promotionVO.contentNum }')"
														title="트위터로 가져가기"><img
															src="resources/images/twitter.png" style="width: 40px;"></a></li>
												</ul>
											</div> <script>
												// send to SNS
												function toSNS(sns, strTitle,
														strURL) {
													var snsArray = new Array();
													var strMsg = strTitle + " "
															+ strURL;
													var image = "이미지경로";

													snsArray['twitter'] = "http://twitter.com/home?status="
															+ encodeURIComponent(strTitle)
															+ ' '
															+ encodeURIComponent(strURL);
													snsArray['facebook'] = "http://www.facebook.com/share.php?u="
															+ encodeURIComponent(strURL);
													window.open(snsArray[sns]);
												}

												function copy_clip(url) {
													var IE = (document.all) ? true
															: false;
													if (IE) {
														window.clipboardData
																.setData(
																		"Text",
																		url);
														alert("이 글의 단축url이 클립보드에 복사되었습니다.");
													} else {
														temp = prompt(
																"이 글의 단축url입니다. Ctrl+C를 눌러 클립보드로 복사하세요",
																url);
													}
												}
											</script>
		<span class="pull-left zzim-after hide" style="margin-right: 6px;">
		   <button type="button" class="btn-zzim on" id="unlike" style="height: 24px;">
		      <i class="ico-star"><img  class="zzimImg" src="/cas/resources/images/icon_like_on.png" style="width:15px; height:15px;"></i> <span id="zzim-cnt-on"></span>
		   </button>
		</span> 
		<span class="pull-left zzim-before"  style="margin-right: 6px;">
		   <button type="button" class="btn-zzim" id="like" style="height: 24px;">
	          <i class="ico-star"><img  class="zzimImg" src="/cas/resources/images/icon_like.png" style="width:15px; height:15px;"> </i><span id="zzim-cnt"></span>
	       </button>
	    </span>
		<a href="promotionList" style="margin-right: 3px;"><img src="/cas/resources/listBtnImg.gif"></a>
	</div>
	<hr style="clear:both;">
	<div id="showDetailContent">
		${promotionVO.contentContent}
	</div>
	<h3 style="width:78px; float:left;">오시는길</h3>
	<button onclick="focusPlace()" style="margin-top:13px;">공연장소</button>
	<div id="map" style="width:100%;height:310px;margin-top:10px;"></div>

<!-- 	댓글부분 -->
	<div id="commentDiv">
		<form class="commentForm">
			<c:if test="${not empty loginUser.memId}">		
				<input type="hidden" name="contentWriter" value="${loginUser.memId }">
				<input type="hidden" name="contentTitle" value="${promotionVO.contentTitle}">
				<input type="hidden" name="contentParentsContent" value="${promotionVO.contentNum}">
				<input type="hidden" name="contentImg" value="${loginUser.memFrofileimage}">
			</c:if>
			<input type="text" class="commentTextStyle commentText" id="contentContent" name="contentContent"> 
			<input type="button" class="commentWrite" onclick="comment('.commentForm')" value="댓글달기">
			<hr class="commentHr">
			<c:if test="${commentList.size() eq 1}">
				<h2 style="text-align: center;">댓글이 없습니다.</h2>
			</c:if>
		</form>
		
		
		
		
		<ul id="commentView" style="padding:0">
		
			
			<c:forEach var="comment" items="${commentList }" begin="1" varStatus="status">
				<c:if test="${status.count ne 1 }">
					<c:if test="${comment.contentParentsContent eq promotionVO.contentNum }">
							</div>
							<hr class="commentHr">
						</li>
					</c:if>
				</c:if>
				<c:choose>
					<c:when test="${comment.contentParentsContent eq promotionVO.contentNum }">
						<li style="margin-bottom:20px;">
							<div id="profileImg">
								<img src="${comment.contentImg }" style="width: 60px;height: 60px;"> 
							</div>
							<div style="width: 100%">
								<a href="#"><strong>${comment.contentWriter }</strong></a> <label>${comment.contentRegisDate }</label><br>
								<label style="margin-right: 2%;">${comment.contentContent}</label>
								<c:if test="${not empty loginUser.memId}">
								<button type="button" class="commentBtn recommentBtn " target="#Write${comment.contentNum }">댓글달기</button>
								</c:if>
								<c:if test="${comment.contentCount ne 0 }">
									<button type="button" class="commentBtn recommentView" data-toggle="collapse" data-target="#recomment${comment.contentNum}">댓글보기(${comment.contentCount})</button>
								</c:if>
								<div style="float: right;">
									<c:if test="${comment.contentWriter eq loginUser.memId}">
										<button type="button" data-toggle="modal" class="btn btn-primary" data-target="#myModal${comment.contentNum }">수정</button>
										
										<div class="modal fade" id="myModal${comment.contentNum }" role="dialog">
										    <div class="modal-dialog modal-sm">
									      		<div class="modal-content">
										       		<div class="modal-header">
									        	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
									         	 		<h4 class="modal-title">댓글수정</h4>
											        </div>
									        		<div class="modal-body">
										          		<input type="text" id="updateContent${comment.contentNum }" style="width:100%;" placeholder="${comment.contentContent}">
											        </div>
										        	<div class="modal-footer">
										          		<button type="button" class="btn btn-default" data-dismiss="modal" onclick="updateComment('${comment.contentNum}')">수정</button>
										          		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
									        		</div>
										      	</div>
										    </div>
									  	</div>
										
										<button type="button"  class="btn btn-primary" onclick="deleteComment('${comment.contentNum}')">삭제</button>
									</c:if>
									<c:if test="${not empty loginUser.memId}">
										<button data-toggle="modal" data-target="#squarespaceModal${comment.contentNum}" class="btn btn-primary">신고</button>
										<!-- 신고 modal폼 -->
										<form action="/cas/member/report" method="post" name="singo">
											<div class="modal fade" id="squarespaceModal${comment.contentNum }" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">
																<span aria-hidden="true">×</span><span class="sr-only">Close</span>
															</button>
															<h3 class="modal-title" id="lineModalLabel">신고하기</h3>
														</div>
														<div class="modal-body">
																<div class="form-group">
																	<label for="exampleInputtext">신고분류</label>
																	<div class="checkbox" id="checks">
																		<label> <input type="checkbox" class="clear" name="chk" value="광고" onClick="setCheckBoxAsRadio(singo.chk, this);"> 광고(성인광고 포함)
																		</label>
																	<div class="checkbox">
																		<label> <input type="checkbox" class="clear" name="chk" value="음란물" onClick=""> 음란물
																		</label>
																	</div>
																	<div class="checkbox">
																		<label> <input type="checkbox" class="clear" name="chk" value="혐오" onClick=""> 혐오
																		</label>
																	</div>
																	<div class="checkbox">
																		<label> <input type="checkbox" class="clear" name="chk" value="심한욕설" onClick=""> 심한욕설
																		</label>
																	</div>
																	<div class="checkbox">
																		<label> <input type="checkbox" class="clear" name="chk" value="악플" onClick=""> 악플(공격적 발언, 비아냥)
																		</label>
																	</div>
																	<div class="checkbox">
																		<label> <input type="checkbox"  class="clear" name="chkbox" value="기타" onClick="checkDisable(this.form)"> 기타
																		</label>
																	</div>
																	</div>
																
																<div class="form-group">
																	<label for="exampleInputtext">신고 내용</label> 
																	<input type="text" class="form-control" id="content" name="textbox" disabled>
																</div>
																</div>
																<input type="hidden" name="report_date" value="${report.report_date}">
																<input type="hidden" name="contentWriter" value="${comment.contentWriter}">
																<input type="hidden" name="contentImg" value="${loginUser.memFrofileimage}">
																<input type="hidden" name="contentNum" value="${comment.contentNum}">
																<input type="hidden" name="boardCode" value="B007">
															
														</div>
														<div class="modal-footer">
															<div class="btn-group btn-group-justified" role="group"
																aria-label="group button">
																<div class="btn-group" role="group">
																	<button type="button" class="btn btn-danger"
																		data-dismiss="modal" role="button" id="close">닫기</button>
																</div>
																<div class="btn-group" role="group">
																	<button type="submit" id="test" class="btn btn-primary" role="button">신고하기</button>
										
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</form>
									</c:if>
								</div>
								
								<div id="Write${comment.contentNum }" class="hideDiv " style="padding-top: 10px; display:none;">
									<form class="commentForm${comment.contentNum }">
										<c:if test="${not empty loginUser.memId}">
											<input type="hidden" name="contentWriter" value="${loginUser.memId }">
											<input type="hidden" name="contentTitle" value="${promotionVO.contentTitle}">
											<input type="hidden" name="contentImg" value="${loginUser.memFrofileimage}">
											<input type="hidden" name="contentParentsContent" value="${comment.contentNum}">
										</c:if>
										<input type="text" class="recommentTextStyle commentText" name="contentContent" style="margin-left:9%;"> 
										<input type="button" class=" commentWrite" onclick="comment('.commentForm${comment.contentNum }')" value="댓글달기">
									</form>
								</div>
							<div id="recomment${comment.contentNum }" class="collapse" style="padding: 10px 0 0 80px; margin-bottom: 20px;">
						</c:when>
						<c:otherwise>
				<!--  				리댓글부분 -->
				<!-- 						댓글을 넣는 Div -->
							<div style="margin-bottom:10px ">
								<div style="width: 9%; float: left; text-align: center;">
									<img src="${comment.contentImg }" style="width: 40px; height: 40px;">
								</div>
								<div style="width: 100%">
									<a href="#"><strong>${comment.contentWriter}</strong></a> <label>${comment.contentRegisDate }</label><br>
									${comment.contentContent}
									<c:if test="${not empty loginUser.memId}">
									<button type="button" class="commentBtn recommentBtn" target="#Write${comment.contentNum }">댓글달기</button>
									</c:if>
									<div style="float: right;">
										<c:if test="${comment.contentWriter eq loginUser.memId}">
											<button class="btn btn-primary" type="button" data-toggle="modal" data-target="#myModal${comment.contentNum }">수정</button>
											
											<div class="modal fade" id="myModal${comment.contentNum }" role="dialog">
											    <div class="modal-dialog modal-sm">
										      		<div class="modal-content">
											       		<div class="modal-header">
										        	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
										         	 		<h4 class="modal-title">댓글수정</h4>
												        </div>
										        		<div class="modal-body">
											          		<input type="text" id="updateContent${comment.contentNum }" style="width:100%;" placeholder="${comment.contentContent}">
												        </div>
											        	<div class="modal-footer">
											          		<button type="button" class="btn btn-default" data-dismiss="modal" onclick="updateComment('${comment.contentNum}')">수정</button>
											          		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
										        		</div>
											      	</div>
											    </div>
										  	</div>
											
											
											<button class="btn btn-primary" type="button" onclick="deleteComment('${comment.contentNum}')">삭제</button>
										</c:if>
										<c:if test="${not empty loginUser.memId}">
											<button type="button" class="btn btn-primary" data-target="#squarespaceModal${comment.contentNum}">신고</button>
											<form action="/cas/member/report" method="post" name="singo">
											<div class="modal fade" id="squarespaceModal${comment.contentNum }" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">
																<span aria-hidden="true">×</span><span class="sr-only">Close</span>
															</button>
															<h3 class="modal-title" id="lineModalLabel">신고하기</h3>
														</div>
														<div class="modal-body">
																<div class="form-group">
																	<label for="exampleInputtext">신고분류</label>
																	<div class="checkbox" id="checks">
																		<label> <input type="checkbox" class="clear" name="chk" value="광고" onClick="setCheckBoxAsRadio(singo.chk, this);"> 광고(성인광고 포함)
																		</label>
																	<div class="checkbox">
																		<label> <input type="checkbox" class="clear" name="chk" value="음란물" onClick=""> 음란물
																		</label>
																	</div>
																	<div class="checkbox">
																		<label> <input type="checkbox" class="clear" name="chk" value="혐오" onClick=""> 혐오
																		</label>
																	</div>
																	<div class="checkbox">
																		<label> <input type="checkbox" class="clear" name="chk" value="심한욕설" onClick=""> 심한욕설
																		</label>
																	</div>
																	<div class="checkbox">
																		<label> <input type="checkbox" class="clear" name="chk" value="악플" onClick=""> 악플(공격적 발언, 비아냥)
																		</label>
																	</div>
																	<div class="checkbox">
																		<label> <input type="checkbox"  class="clear" name="chkbox" value="기타" onClick="checkDisable(this.form)"> 기타
																		</label>
																	</div>
																	</div>
																
																<div class="form-group">
																	<label for="exampleInputtext">신고 내용</label> 
																	<input type="text" class="form-control" id="content" name="textbox" disabled>
																</div>
																</div>
																<input type="hidden" name="report_date" value="${report.report_date}">
																<input type="hidden" name="contentWriter" value="${comment.contentWriter}">
																<input type="hidden" name="contentNum" value="${comment.contentNum}">
																<input type="hidden" name="boardCode" value="B007">
															
														</div>
														<div class="modal-footer">
															<div class="btn-group btn-group-justified" role="group"
																aria-label="group button">
																<div class="btn-group" role="group">
																	<button type="button" class="btn btn-danger"
																		data-dismiss="modal" role="button" id="close">닫기</button>
																</div>
																<div class="btn-group" role="group">
																	<button type="submit" id="test" class="btn btn-primary" role="button">신고하기</button>
										
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</form>
										</c:if>
									</div>
									<div id="Write${comment.contentNum }" class="hideDiv " style="padding-top: 10px; display:none;">
										<form class="commentForm${comment.contentNum }">
											<c:if test="${not empty loginUser.memId}">		
												<input type="hidden" name="contentWriter" value="${loginUser.memId }">
												<input type="hidden" name="contentTitle" value="${promotionVO.contentTitle}">
												<input type="hidden" name="contentParentsContent" value="${comment.contentParentsContent}">
												<input type="hidden" name="contentImg" value="${loginUser.memFrofileimage}">
											</c:if>
											<input type="text" class="reRecommentTextStyle commentText" name="contentContent"> 
											<input type="button" class="commentWrite" onclick="comment('.commentForm${comment.contentNum }')" value="댓글달기">
										</form>
									</div>
								</div>
							</div>
						</c:otherwise>
						</c:choose>
				</c:forEach>
					</div>
					<c:if test="${commentList.size() ne 1}">
						<hr class="commentHr">
					</c:if>
			</li>
		</ul>
	</div>
</div>

<c:choose>
<c:when test="${not empty loginUser }">
<script>
// 체크박스 하나만 체크되도록.
function setCheckBoxAsRadio(targetObj, inObj){
 var len = targetObj.length;
 
 if(len>1){ // 객체가 배열이라면. 배열이 아니면 그냥 체크박스로 작동
  for(var i=0; i<len; i++){
   if(targetObj[i] != inObj)
    targetObj[i].checked = false;
  }
 }
}

function checkDisable(frm)
{
    if( frm.chkbox.checked == true ){
	   frm.textbox.disabled = false;
	} else 
	{
	   frm.textbox.disabled = true;
	}
}

</script>
<script>

// 	function report_go(){
// 		location.href="/cas/member/report";
// 	}
$(function(){
	$('#test').on('click',function(){
		swal('신고완료','신고가 완료되었습니다.','success');
		$('.confirm').bind('click',function(){
			$('#squarespaceModal').modal('hide');
		});
	});
	
});
	
	
// 		$('#close').on('click',function(){
// 			$('.clear').prop('checked',false);
// 		});

	
</script>

<script>
// 하트표시바꾸기-------------------------------------------------------------

	var cnt = ${recomCount};
	var isLike = ${isLike};
	if (isLike == 1) {
		chageListBtn();
		$('span#zzim-cnt-on').text(cnt);
		$('span#zzim-cnt').text(cnt - 1);
	} else {
		$('span#zzim-cnt-on').text(cnt + 1);
		$('span#zzim-cnt').text(cnt);
	}
	
	$('#like').click(function() {
		var contentNum=${promotionVO.contentNum};
		$.ajax({
			url : "member/likeContent",
			type : 'post',
			data : "contentNum="+contentNum,
			dataType : 'html',
			success : function() {
			}
		})
		chageListBtn();
	})
	$('#unlike').click(function() {
		var contentNum=${promotionVO.contentNum};
		$.ajax({
			url : "member/unlikeContent",
			type : 'post',
			data : "contentNum="+contentNum,
			dataType : 'html',
			success : function() {
			}
		})
		chageListBtn();
	})
	function chageListBtn() {
		$('.zzim-after').toggleClass('hide');
		$('.zzim-before').toggleClass('hide');
	}
	function go_link(){
		window.open('${promotionVO.consertTicket}');
	}
</script>
</c:when>
<c:otherwise>
	<script>
	$('#like').click(function() {
		location.href="/cas/member/freeboardForm";
	})
	</script>
</c:otherwise>
</c:choose>


<script>
	function deleteComment(id){
		$.ajax({
			url : "member/deleteCommnet",
			type : 'post',
			data : "contentNum="+id,
			dataType : 'html',
			success : function(res) {
				alert(res.message);
				resetPage();
			}
		})
	}
	function updateComment(id){
		var updateContent=$('#updateContent'+id).val();
		if(updateContent==''){
			alert('댓글을 입력하지 않아 실패하였습니다.')
		}else{
			$.ajax({
				url : "member/updateCommnet",
				type : 'post',
				data : "contentNum="+id+"&contentContent="+updateContent,
				dataType : 'html',
				success : function() {
					resetPage();
				}
			})
		}
	}
	
// 	댓글을 저장하는 부분
	function comment(formName) {
		var comment = $(formName).serialize();
		$.ajax({
			url : "member/insertCommnet",
			type : 'post',
			data : comment,
			dataType : 'html',
			success : function() {
				resetPage();
				alert('댓글이 성공적으로 입력되었습니다.');
			}
		})
	}
	function resetPage() {
		location.href="promotionDetail?contentNum=${promotionVO.contentNum}&recomCount=${recomCount}"
	}
	// 	댓글달기를 숨겼다 보였다하는 부분
	$('.recommentBtn').on('click', function() {
		var target = $(this).attr('target');
		if ($(target).css('display') == 'none') {
			$('.hideDiv').slideUp('500');
			$(target).slideDown('500');
		} else {
			$('.hideDiv').slideUp('500');
		}
	})

	$('.recommentView').on('click', function() {
		$('.hideDiv').slideUp('500');
	})
	
</script>


<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//apis.daum.net/maps/maps3.js?apikey=9a20b2d2c43d60d0f3d0b90e8ac05e07&libraries=services"></script>
<script>
	var geograp="${promotionVO.consertGeograp}".split('/');
	var lat=geograp[0];
	var lng=geograp[1];

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(lat,lng), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
 	// 마커가 표시될 위치입니다 
    var markerPosition  = new daum.maps.LatLng(lat, lng); 

    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    
    

    var iwContent = '<h4 style="text-align:center;">'+'${promotionVO.consertPlace}'.split('(')[0]+'</h4>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        iwPosition = new daum.maps.LatLng(lat, lng); //인포윈도우 표시 위치입니다

    // 인포윈도우를 생성합니다
    var infowindow = new daum.maps.InfoWindow({
        position : iwPosition, 
        content : iwContent 
    });
      
    // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
    infowindow.open(map, marker); 
    
    function focusPlace(){
    	// 해당 주소에 대한 좌표를 받아서
        var coords = new daum.maps.LatLng(lat, lng);
    	// 지도 중심을 변경한다.
        map.setCenter(coords);
    }
</script>

