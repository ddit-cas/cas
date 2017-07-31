<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
	
</script>

<body>

   <link rel="stylesheet" href="/cas/resources/css/casSuccessDetail.css"
      type="text/css">
   <style>
#body {
	width: 726px;
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
   width: 726px;
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

#contentTable video{
	max-width: 726px;
}

#contentTable img{
	max-width: 726px;
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
				<li class="active"><a href="/cas/freeboardList">자유게시판</a></li>
				<li><a href="/cas/promotionList">공연홍보</a></li>
				<li><a href="/cas/uccList">CAS-UCC</a></li>
			</ul>
		</div>
		 </div>
         <div class="company-cont" style="width: 960px;">
            <h3 class="box">CAS-UCC</h3>
            <div class="row">
               <div class="col-lg-12">
                  <div class="table-responsive">
                     <table class="table table-bordered" id="contentTable"
                        style="text-align: left; width: 910px;">
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
                              <td colspan="3" style="background-color: #eeeeee;text-align:center;">
                              <label for="InputMessage">내용</label>
                              <span class="pull-left zzim-after hide">
									<button type="button" class="btn-zzim on" style="height: 40px;">
										<i class="ico-star"><img  class="zzimImg" src="resources/images/icon_like_on.png"></i> <span id="zzim-cnt-on"></span>
									</button>
								</span> 
								<span class="pull-left zzim-before">
									<button type="button" class="btn-zzim" style="height: 40px;">
										
										<i class="ico-star"><img  class="zzimImg" src="resources/images/icon_like.png"> </i><span id="zzim-cnt">${articleVO.likenum }</span>
									</button>
								</span>
                              </td>
                           </tr>
                           <tr>
                              <td colspan="5">
                                   ${articleVO.contentContent }
                              </td>
                           </tr>
                        </tbody>
                     </table>
                     
                     <div class="form-group">
                        <a href="/cas/uccList"><input type="button" name="submit"
                           id="submit" value="목록" class="btn btn-info pull-right" /></a>
                        <div class="form-group" style="float: left;">
                           <button data-toggle="modal" data-target="#squarespaceModal"
                              class="btn btn-primary center-block">신고</button>
                              <c:if test="${not empty loginUser }">
                              <c:if test="${loginUser.memId==articleVO.contentWriter }">
                           <button onclick="updateGo();" class="btn btn-primary center-block">수정</button>
                              </c:if>
                              </c:if>
                        </div>
                        <script>
                        	function updateGo(){
                        		location.href="/cas/member/uccForm?contentNum=${articleVO.contentNum}";
                        	}
                        </script>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <c:choose>
	<c:when test="${not empty loginUser }">
<script>
// 하트표시바꾸기-------------------------------------------------------------

	var cnt = $('span#zzim-cnt').text();
	$('.btn-zzim').click(function(){

		var $param = $.param({contentNum:"${articleVO.contentNum}"});
		if($('.zzim-before').hasClass('hide')){
			$.post('/cas/member/unlikeContent', $param , 
					function(res){
			})
			cnt--;
			$('.zzim-before').removeClass('hide');
			$('.zzim-after').addClass('hide');
			$('#zzim-cnt').text(cnt);
		}else{
			//url, data , success function     
			$.post('/cas/member/likeContent', $param , 
					function(res){  
			})
			cnt++;
			$('.zzim-before').addClass('hide');
			$('.zzim-after').removeClass('hide');
			$('#zzim-cnt-on').text(cnt);
		}
	})
</script>
<c:if test="${isLike==1 }">
			<script>
				$('.zzim-before').addClass('hide');
				$('.zzim-after').removeClass('hide');
				$('#zzim-cnt-on').text(cnt);
			</script>
	</c:if>	
	</c:when>	
	<c:otherwise>
	<script>
// 하트표시바꾸기-------------------------------------------------------------

	$('.btn-zzim').click(function(){
		location.href="/cas/member/freeboardForm";
	})
	</script>
	</c:otherwise>				
	</c:choose>
   

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
