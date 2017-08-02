<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
	.form-group{
		float:left;
		margin:0 10px 0 150px;
		margin-left:400px;
	}
	.btn{
	}
</style>

<div id="modalLayer">
  <div class="modalContent"> 
  	<div class="bs-example" data-example-id="condensed-table">
  		<table class="table table-hover">
  		 <thead>
	  		 <tr>
		  		 <th>#</th>
		  		 <th>게시판</th>
		         <th>글제목</th>
		         <th>작성자</th>
	        </tr>
         </thead>
        	<tbody>
        	 <c:choose>
				<c:when test="${articleList.size() > 0 }">
        		<c:forEach var="i" varStatus="status" begin="${firstRow}" end="${lastRow}">
			        <tr class="articleRow" target="${article.contentTitle }" contentUrl="/cas/promotionDetail?contentNum=${article.contentNum }">
			          <td>${status.index+1 }</td>
			          <td>${articleList[i].boardName }</td>
			          <td>${articleList[i].contentTitle }</td>
			          <td>${articleList[i].contentWriter }</td>		          
			        </tr>
        		</c:forEach>
       		    </c:when>
		         <c:otherwise>
				  <tr>
					<td colspan="4" style="text-align:center;">
						해당 내용이 없습니다.
					</td>
				  </tr>
		         </c:otherwise>
		     </c:choose>
        	</tbody>
  		</table>
  	</div>
  	<!-- 페이지수  -->
	<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
		<div class="row">
			<nav aria-label="...">
				<ul class="pager" role="tablist">
					<li class="previous">
						<a href="/cas/admin/carouselDetail?tab=${minNum-1}"><span aria-hidden="true">←</span>
							이전
						</a>
					</li>
					<c:forEach var="i" begin="${minNum}" end="${maxNum}">
					<c:choose>
					<c:when test="${index==i}">
					<li>
						<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/carouselDetail?tab=${i}">
							${i }
						</a>
					</li>
					</c:when>
					<c:otherwise>
					<li>
						<a aria-controls="tab1" href="/cas/admin/carouselDetail?tab=${i}">
							${i }
						</a>
					</li>
					</c:otherwise>
					</c:choose>
					</c:forEach>
					<li class="next">
						<a href="/cas/admin/carouselDetail?tab=${maxNum+1}">다음<span aria-hidden="true">→</span>
						</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
<script>
	$('tr.articleRow').on('click',function(){
		var contentUrl=$(this).attr('contentUrl');
		$("#contentUrl").val(contentUrl);
		$("#target").html($(this).attr('target'));
	});
	
	$(function(){
		$("#imageFile").change(function (){
// 	        var inputObj = $("#image");   
// 	        var fileLocation = $(this).val();          

// 	        inputObj.attr("src",fileLocation);
	        ext = $(this).val().split('.').pop().toLowerCase(); //확장자
// 	        //style 삭제
// 	        if($('.img[style="display"]')){
// 	           $('.img').attr('style','');
// 	        }
	        
	        //배열에 추출한 확장자가 존재하는지 체크
	        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
	            resetFormElement($(this)); //폼 초기화
	            window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
	        } else {
	            file = $('#imageFile').prop("files")[0];
	            blobURL = window.URL.createObjectURL(file);
	            $('#image').attr('src', blobURL);
	            $('#image').slideDown(); //업로드한 이미지 미리보기 
//	             $(this).slideUp(); //파일 양식 감춤
	        }
	    });
	})
</script>
	<div class="row">
    <div class="col-lg-12">  	
  	<form style="margin-left: 110px" id="subject" action="/cas/admin/${carouselUrl }" method="post" enctype="multipart/form-data">
  		<h2>케러셀 관리</h2>
  		<br>
  	<div class="table-responsive">
		<table class="table table-bordered"
			style="text-align: left; width: 895px;">
			<tbody>
				<tr>
					<input type="hidden" value="${carousel.contentUrl }" id="contentUrl" name="contentUrl"/>
					<th style="width: 20%; text-align: center; background-color: #eeeeee">대상 글</th>
					<td><label id="target"></label></td>
				</tr>
				<tr>
					<th style="width: 20%; text-align: center; background-color: #eeeeee">캐러셀 제목 등록 </th>
					<td><input type="text" class="form-control" value="${carousel.carouselTitle }" name="carouselTitle" width="150"></td>
				</tr>
				<tr>
					<th style="text-align: center; background-color: #eeeeee">캐러셀 내용 등록 </th>
					<td><textarea name="carouselContent" class="form-control" rows="10" cols="100">${carousel.carouselContent}</textarea></td>
				</tr>
				<tr>
				  	<th style="width: 20%; text-align: center; background-color: #eeeeee">Image</th>
				  	<td>
					        <img class="img" id="image" src="${carousel.carouselImage }"  style="float:center;" width="450" height="300"/>
					        <input type="hidden" name="carouselImage" value="${carousel.carouselImage }" width="450" height="300" >
						
					</td>	
				</tr>
					<tr>
						<th style="width: 20%; text-align: center; background-color: #eeeeee">첨부파일
						<td><input type="file" name="image" id="imageFile" value="${carousel.carouselImage }" width="450" height="300"/></td>
		    		</tr>
			</tbody>
			</table>
	</div>
	<div class="form-group" style="margin-bottom: 50px;margin-left: 450px;">
    	<c:choose>
    	<c:when test="${not empty carousel }">
    		<input type="hidden"  name="carouselNum" value="${carousel.carouselNum }">
  			<button type="submit" class="btn btn-primary">수정</button>
    	</c:when>
    	<c:otherwise>
  			<button type="submit" class="btn btn-primary">등록</button>
    	</c:otherwise>
    	</c:choose>
  			<button type="button" class="btn btn-danger" onclick="deleteCarousel(${carousel.carouselNum});">삭제</button>
  	</div>
  	</form>
  	</div>
  	</div>
  </div>
  <script>
  	function deleteCarousel(carouselNum){
  		location.href="carouselDelete?carouselNum="+carouselNum;
  	}
  </script>
  
</div>