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
				<li class="active"><a href="/cas/freeboardList">자유게시판</a></li>
				<li><a href="/cas/promotionList">공연홍보</a></li>
				<li><a href="/cas/uccList">PR영상</a></li>
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
                              <td colspan="3" style="background-color: #eeeeee;text-align:center;">
                              <label for="InputMessage">내용</label></td>
                           </tr>
                           <tr>
                              <td colspan="5">
                                   ${articleVO.contentContent }
                              </td>
                           </tr>
                        </tbody>
                     </table>
                     <div class="form-group">
                        <a href="/cas/freeboardList"><input type="button" name="submit"
                           id="submit" value="목록" class="btn btn-info pull-right" /></a>
                        <div class="form-group" style="float: left;">
                           <button data-toggle="modal" data-target="#squarespaceModal"
                              class="btn btn-primary center-block">신고</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- 신고 modal폼 -->
   <form action="" method="post" name="singo">
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
				
<script type="text/javascript">
	
</script>
				
				<div class="modal-body">
						<div class="form-group">
							<label for="exampleInputtext">신고분류</label>
							<div class="checkbox" id="checks">
								<label> <input type="checkbox" id="chk_1" class="clear" name="chk" value="광고" onClick="setCheckBoxAsRadio(singo.chk, this);"> 광고(성인광고 포함)
								</label>
							<div class="checkbox">
								<label> <input type="checkbox" id="chk_2" class="clear" name="chk" value="음란물" onClick="setCheckBoxAsRadio(singo.chk, this);"> 음란물
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" id="chk_3" class="clear" name="chk" value="혐오" onClick="setCheckBoxAsRadio(singo.chk, this);"> 혐오
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"  id="chk_4" class="clear" name="chk" value="심한욕설" onClick="setCheckBoxAsRadio(singo.chk, this);"> 심한욕설
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"  id="chk_5" class="clear" name="chk" value="악플" onClick="setCheckBoxAsRadio(singo.chk, this);"> 악플(공격적 발언, 비아냥)
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" id="chk_6" class="clear" name="chk" value="기타" onClick="setCheckBoxAsRadio(singo.chk, this);"> 기타
								</label>
							</div>
							</div>
						<div class="form-group">
							<label for="exampleInputtext">신고자</label> 
							<input type="text" class="form-control" id="text" name="report_mem" value="${report.report_mem }">
						</div>
						<div class="form-group">
							<label for="exampleInputtext">신고 내용</label> 
							<input type="text" class="form-control" id="content" name="report_content">
						</div>
						</div>
						<input type="hidden" name="report_date" value="${report.report_date}">
						<input type="hidden" name="content_num" value="${session.loginUser.memId}">
					
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

</script>
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group"
						aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-danger"
								data-dismiss="modal" role="button" id="close">닫기</button>
						</div>
						<div class="btn-group" role="group">
							<button type="submit" id="test" class="btn btn-primary" data-action="submit" role="button">신고하기</button>
							
<script>
	$(function(){
		$('#test').on('click',function(){
			swal('신고완료','신고가 완료되었습니다.','success');
			$('.confirm').bind('click',function(){
				$('#squarespaceModal').modal('hide');
			});
		});
		
		$('#close').on('click',function(){
			$('.clear').prop('checked',false);
		});
	});
</script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
</body>