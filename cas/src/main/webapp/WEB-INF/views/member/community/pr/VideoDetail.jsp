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
                     <label for="exampleInputtext">닉네임</label> <input type="text"
                        class="form-control" id="text">
                  </div>
                  <div class="form-group">
                     <label for="exampleInputtext">내용</label> <input type="text"
                        class="form-control" id="text">
                  </div>
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
                        <label for="exampleInputtext">신고내용</label>
                        <textarea style="width: 100%; height: 50px" name="note">무분별한 노잼따</textarea>
                     </div>
                  </div>
               </form>
            </div>
            <div class="modal-footer">
               <div class="btn-group btn-group-justified" role="group"
                  aria-label="group button">
                  <div class="btn-group" role="group">
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal" role="button">닫기</button>
                  </div>
                  <div class="btn-group" role="group">
                     <button type="button" id="submit"
                        class="btn btn-default btn-hover-green" data-action="submit"
                        role="button">신고하기</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>