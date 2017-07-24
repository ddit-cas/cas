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
        		<c:forEach items="${articleList }" var="article">
			        <tr class="articleRow" contentUrl="${article.contentNum }">
			          <td>${article.boardName }</td>
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
  	캐러셀 제목 등록  <br>
  		<input type="text" value="${carousel.carouselTitle }" name="carouselTitle" width="150"><br>
  	캐러셀 내용 등록 	
  		<textarea name="carouselContent" rows="10" cols="60">${carousel.carouselContent}</textarea>
  		
	  	<div id="image_preview">
		        <img class="img" id="image" src="${carousel.carouselImage }" width="450" height="300"/>
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