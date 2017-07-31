<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
   $(function(){
      setPager(1);
   })
   
   function setPager(nowPage){
      var code="";
      lastContent=80;
      $('#1').addClass('nowPage');
      for(var i=1; i<=5;i++){
         if(nowPage<=3){
            code+='<a id="'+i+'" onclick="setPager('+i+')">['+i+']</a>';
         }else{
            code+='<a id="'+(i+nowPage-3)+'" onclick="setPager('+(i+nowPage-3)+')">['+(i+nowPage-3)+']</a>';
         }
      }
      $('#pagerCount').html(code);
   }

</script>

<div class="company-wrap">
   <div class="company-snb">
      <h2>커뮤니티</h2>
      <div class="">
         <ul>
            <li class="active"><a href="/cas/freeboardList">자유게시판</a></li>
            <li><a href="/cas/promotionList">공연홍보</a></li>
            <li><a href="/cas/uccList">CAS-UCC</a></li>
         </ul>
      </div>
   </div>

   <div class="company-cont" style="height: auto;">
      <h3 class="box">공연 홍보 게시판</h3>
         <div class="container">
            <div class="row">
               <div class="form-group">
               <select style="height: 33px;" id="searchKeyword">
	               	<option selected="selected" id="title" value="title">제목</option>
	               	<option id="writer"value="writer">작성자</option>
               </select>
               <input type="text" style="height: 32px;" id="searchWord">
               <input type="button" style="width:8%; display:inline;" class="form-control" value="검색" onclick="searchPromotion()">
               <input type="submit" style="width:10%; display:inline;" class="form-control" onclick="insertShowPage_go()" value="공연등록">
               </div>
               <table class="table table-hover" style="width:750px; height: auto; margin: 0;">
                  <thead>
                     <tr>
                        <th style="text-align: center; font-size: 15px;">제목</th>
                        <th style="text-align: center; font-size: 15px;">장르</th>
                        <th style="text-align: center; font-size: 15px;">기간</th>
                        <th style="text-align: center; font-size: 15px;">작성자</th>
                        <th style="text-align: center; font-size: 15px;">좋아요</th>
                     </tr>
                  </thead>
                  <tbody id="showBoardTbody"
                     style="text-align: center; font-size: 15px;">

                     <c:choose>
                        <c:when test="${empty promotionList}">
                           <tr>
                              <td colspan="5" style="text-align: center;">등록된 공연이 없습니다.</td>
                           </tr>
                        </c:when>
                        <c:otherwise>
                           <c:forEach var="i" begin="${firstRow}" end="${lastRow}">
                              <tr onclick="showDetail_go(${promotionList[i].contentNum });">
                                 <td><a href=#>${promotionList[i].contentTitle }</a></td>
                                 <td>${promotionList[i].genreName }</td>
                                 <td>${promotionList[i].startDate }~
                                    ${promotionList[i].endDate }</td>
                                 <td>${promotionList[i].contentWriter }</td>
                                 <td>${promotionList[i].recomCount }</td>
                              </tr>
                           </c:forEach>
                        </c:otherwise>
                     </c:choose>
                  </tbody>
               </table>
            </div>
      </div>
      <div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
         <div class="row">
            <nav aria-label="...">
               <ul class="pager" role="tablist">
                  <li class="previous"><a
                     href="${pageUrl}${minNum-1}${searchUrl}"><span
                        aria-hidden="true">←</span> 이전 </a></li>
                  <c:forEach var="i" begin="${minNum}" end="${maxNum}">
                     <c:choose>
                        <c:when test="${index==i}">
                           <li><a style="background: #aaa;" aria-controls="tab1"
                              href="${pageUrl}${i}${searchUrl}"> ${i } </a></li>
                        </c:when>
                        <c:otherwise>
                           <li><a aria-controls="tab1"
                              href="${pageUrl}${i}${searchUrl}"> ${i } </a></li>
                        </c:otherwise>
                     </c:choose>
                  </c:forEach>
                  <li class="next"><a
                     href="${pageUrl}${maxNum+1}${searchUrl}">다음<span
                        aria-hidden="true">→</span>
                  </a></li>
               </ul>
            </nav>
         </div>
      </div>

<script>
	function insertShowPage_go(){
	   document.location.href = "/cas/member/PromotionForm";
	}
	
	function showDetail_go(contentNum){
	   location.href="promotionDetail?contentNum="+contentNum;
	}
	function searchPromotion(){
		if($('#searchWord').val()!=null){
			location.href="promotionSearch?"+$("#searchKeyword option:selected").val()+"="+$('#searchWord').val();
		}else{
			location.href="promotionList";
		}
	}
</script>




