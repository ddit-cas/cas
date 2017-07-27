<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<li><a href="/cas/uccList">PR영상</a></li>
			</ul>
		</div>
	</div>
	<div class="company-cont" style="height: auto;">
	<h3 class="box">공연홍보게시판</h3>
	<p>
		<img src="/cas/resources/images/free.png" 
			style="width: 800px; height: 190px; background-size: cover; margin: 0 0 10px 0;">
	</p>
	<div>
		<button style="float:right; margin-bottom: 5px;" onclick="insertShowPage_go()">공연등록</button>
	</div>
	<hr style="clear:both;">
	<div></div>
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th>제목</th>
	      <th>장르</th>
	      <th>기간</th>
	      <th>작성자</th>
	      <th>좋아요</th>
	    </tr>
	  </thead>
	  <tbody id="showBoardTbody">
	  	
	  	<c:choose>
	  		<c:when test="${empty promotionList}">
	  			<tr>
	  				<td colspan="5" style="text-align: center;">
	  					등록된 공연이 없습니다.
	  				</td>
	  			</tr>
	  		</c:when>
	  		<c:otherwise>
	  			<c:forEach var="i" begin="${firstRow}" end="${lastRow}">
					<tr>
						<td><a href="promotionDetail?contentNum=${promotionList[i].contentNum }">${promotionList[i].contentTitle }</a></td>
						<td>${promotionList[i].genreName }</td>
						<td>${promotionList[i].startDate } ~ ${promotionList[i].endDate }</td>
						<td>${promotionList[i].contentWriter }</td>
						<td>${promotionList[i].recomCount }</td>
					</tr>	  			
	  			</c:forEach>
	  		</c:otherwise>
	  	</c:choose>
	  </tbody>
	</table>
</div>
<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
   <div class="row">
      <nav aria-label="...">
         <ul class="pager" role="tablist">
            <li class="previous">
               <a href="/cas/promotionList?tab=${minNum-1}${searchUrl}"><span aria-hidden="true">←</span>
                  이전
               </a>
            </li>
            <c:forEach var="i" begin="${minNum}" end="${maxNum}">
            <c:choose>
            <c:when test="${index==i}">
            <li>
               <a style="background: #aaa;" aria-controls="tab1" href="/cas/promotionList?tab=${i}${searchUrl}">
                  ${i }
               </a>
            </li>
            </c:when>
            <c:otherwise>
            <li>
               <a aria-controls="tab1" href="/cas/promotionList?tab=${i}${searchUrl}">
                  ${i }
               </a>
            </li>
            </c:otherwise>
            </c:choose>
            </c:forEach>
            <li class="next">
               <a href="/cas/promotionList?tab=${maxNum+1}${searchUrl}">다음<span aria-hidden="true">→</span>
               </a>
            </li>
         </ul>
      </nav>
   </div>
</div>

<script>
function insertShowPage_go(){
	document.location.href = "/cas/member/PromotionForm";
}
</script>
