<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="modalLayer">

  <div class="modalContent"> 
  	<div class="bs-example" data-example-id="condensed-table">
  		<table class="table table-hover">
  		 <thead>
	  		 <tr>
		  		 <th>게시판</th>
		         <th>글제목</th>
		         <th>작성자</th>
	        </tr>
         </thead>
        	<tbody>
        		<c:forEach items="${noticeList }" var="article">
			        <tr class="articleRow" target="${article.contentTitle }" contentUrl="/cas/noticeDetail?articleId=${article.contentNum }">
			          <td>${article.boardName }</td>
			          <td>${article.contentTitle }</td>
			          <td>${article.contentWriter }</td>		          
			        </tr>
        		</c:forEach>
        		<c:forEach items="${fundList }" var="article">
			        <tr class="articleRow" target="${article.contentTitle }" contentUrl="/cas/fundDetail?contentNum=${article.contentNum }">
			          <td>크라우드펀딩</td>
			          <td>${article.contentTitle }</td>
			          <td>${article.contentWriter }</td>		          
			        </tr>
        		</c:forEach>
        		<c:forEach items="${promotionList }" var="article">
			        <tr class="articleRow" target="${article.contentTitle }" contentUrl="/cas/promotionDetail?contentNum=${article.contentNum }">
			          <td>공연홍보</td>
			          <td>${article.contentTitle }</td>
			          <td>${article.contentWriter }</td>		          
			        </tr>
        		</c:forEach>
        	</tbody>
  		</table>
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
  	<form id="subject" action="/cas/admin/${carouselUrl }" method="post" enctype="multipart/form-data">
  	<input type="hidden" value="${carousel.contentUrl }" id="contentUrl" name="contentUrl">
			        <div>
			        	<p>대상 글 </p>
			        	<p id="target"></p>
			        </div>
  	캐러셀 제목 등록  <br>
  		<input type="text" value="${carousel.carouselTitle }" name="carouselTitle" width="150"><br>
  	캐러셀 내용 등록 	
  		<textarea name="carouselContent" rows="10" cols="60">${carousel.carouselContent}</textarea>
  		
	  	<div id="image_preview">
		        <img class="img" id="image" src="${carousel.carouselImage }" width="450" height="300"/>
		        <input type="hidden" name="carouselImage" value="${carousel.carouselImage }">
		        <br />
			        <label for="image">Image:</label>
			        <br />
			        <input type="file" name="image" id="imageFile" value="${carousel.carouselImage }" />
    	</div>
    	<c:choose>
    	<c:when test="${not empty carousel }">
    		<input type="hidden" name="carouselNum" value="${carousel.carouselNum }">
  			<button>수정</button>
    	</c:when>
    	<c:otherwise>
  			<button>등록</button>
    	</c:otherwise>
    	</c:choose>
  	</form>
  			<button type="button" onclick="deleteCarousel(${carousel.carouselNum});">삭제</button>
  </div>
  <script>
  	function deleteCarousel(carouselNum){
  		location.href="carouselDelete?carouselNum="+carouselNum;
  	}
  </script>
  
</div>