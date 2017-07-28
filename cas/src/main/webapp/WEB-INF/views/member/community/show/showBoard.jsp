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
<div class="company-snb" style="float: left; margin-top: 100px;">
	<h2>커뮤니티</h2>
	<div class="">
		<ul style="margin-right: 40px;">
			<li class="active"><a href="/cas/freeboardList">자유게시판</a></li>
			<li><a href="/cas/promotionList">공연홍보</a></li>
			<li><a href="/cas/uccList">CAS-UCC</a></li>
		</ul>
	</div>
</div>
<div id="body" style="float:right; width: 83%;">
	<div style="width:100%;overflow: hidden; height: 100px;">
		<img src="/cas/resources/images/free.png" style="width:100%;">
	</div>
	<h1 style="">공연홍보게시판</h1>
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
	  			<c:forEach var="promotion" items="${promotionList }">
					<tr>
						<td><a href="promotionDetail?contentNum=${promotion.contentNum }">${promotion.contentTitle }</a></td>
						<td>${promotion.genreName }</td>
						<td>${promotion.startDate } ~ ${promotion.endDate }</td>
						<td>${promotion.contentWriter }</td>
						<td>${promotion.recomCount }</td>
					</tr>	  			
	  			</c:forEach>
	  		</c:otherwise>
	  	</c:choose>
	  </tbody>
	</table>
	<ul class="pager">
		<li><a href="#">Previous</a></li>
		<li id="pagerCount">
		</li>
		<li><a href="#">Next</a></li>
	</ul>
</div>

<script>
function insertShowPage_go(){
	document.location.href = "/cas/member/PromotionForm";
}
</script>
