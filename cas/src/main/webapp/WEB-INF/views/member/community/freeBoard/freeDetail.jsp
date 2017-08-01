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
<script>

function freeBoardDis(){
	location.href="/cas/member/freeboardForm?articleId=${articleVO.contentNum}";
	
}


</script>
	<script type="text/javascript">
		
	</script>
	<div id="body">
		<div class="container">
			<div class="company-snb" style="float: left;">
			<h2>커뮤니티</h2>
			<div class="">
			<ul>
				<li class="active"><a href="/cas/freeboardList">자유게시판</a></li>
				<li><a href="/cas/promotionList">공연홍보</a></li>
				<li><a href="/cas/uccList">CAS-UCC</a></li>
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
										style="float:left;" class="btn btn-primary center-block">신고</button>
										<c:if test="${loginUser.memId==articleVO.contentWriter }">
									<button class="btn btn-primary center-block" onclick="freeBoardDis();">수정</button>
										</c:if>
								</div>
							</div>
						</div>
					</div>

					<!-- 자유게시판 상세 댓글 -->
					<!-- 	댓글부분 -->
	<div id="commentDiv" style="clear:both;">
		<form class="commentForm">
			<c:if test="${not empty loginUser.memId}">		
				<input type="hidden" name="contentWriter" value="${loginUser.memId }">
				<input type="hidden" name="contentTitle" value="${articleVO.contentTitle}">
				<input type="hidden" name="contentParentsContent" value="${articleVO.contentNum}">
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
					<c:if test="${comment.contentParentsContent eq articleVO.contentNum }">
							</div>
							<hr class="commentHr">
						</li>
					</c:if>
				</c:if>
				<c:choose>
					<c:when test="${comment.contentParentsContent eq articleVO.contentNum }">
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
											<input type="hidden" name="contentTitle" value="${articleVO.contentTitle}">
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
												<input type="hidden" name="contentTitle" value="${articleVO.contentTitle}">
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
		location.href="freeboardDetail?contentNum=${articleVO.contentNum}"
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
	
	
<script type="text/javascript">
</script>
	
	<!-- 신고 modal폼 -->
<form action="/cas/member/report" method="post" name="singo">
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
						<input type="hidden" name="contentWriter" value="${articleVO.contentWriter}">
						<input type="hidden" name="contentNum" value="${articleVO.contentNum}">
						<input type="hidden" name="boardCode" value="${articleVO.boardCode}">
					
				</div>
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
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group"
						aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-danger"
								data-dismiss="modal" role="button" id="close">닫기</button>
						</div>
						<div class="btn-group" role="group">
							<button type="submit" id="test" class="btn btn-primary" role="button">신고하기</button>
							
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
</body>
