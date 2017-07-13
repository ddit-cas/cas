<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>




<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

</head>

<body>

<div class="divBox">
<!-- 	<div class="real"> -->
	
<!-- 		<img src="../resources/jisu.jpg" width="600" height="300"> -->
<!-- 		<button type="button" class="modalLink">수정</button> -->
<!-- 		<button type="button" class="btnDel">삭제</button> -->
	
<!-- 	</div> -->
 
	
</div>

<button type="button" id="btnAdd">추가</button>

<style>
	a{
	
	color:#000;
	
	}

	.mask{
		width:100%; height:100%; position:fixed;
	    left:0; top:0; z-index:10; background:#000; 
	    opacity:.5; filter:alpha(opacity=50);
	}

	#modalLayer{
		display:none; position:relative;
	}
	#modalLayer .modalContent{
		width:1000px; height:800px; padding:20px;
        border:1px solid #ccc; position:fixed; 
        left:15%; top:10%; z-index:11; background:#fff;
      }
	#modalLayer .modalContent button{
		position:absolute; right:0; 
		top:0; cursor:pointer;
	}
	.bs-example{
		border:1px solid black;
		overflow:hidden;
		height:auto;
		width:38%;	
		float:left;
	}
	#subject{
		 margin-left: 500px;
	}
	#btn1{
		margin-top:730px;
		margin-right:230px;
	}

</style>

<div id="modalLayer">

  <div class="modalContent"> 
  	<div class="bs-example" data-example-id="condensed-table">
  		<table class="table table-condensed">
  		 <thead>
	  		 <tr>
	          <th>#</th>
	          <th>사진</th>
	          <th>글제목</th>
	          <th>글내용</th>
	        </tr>
         </thead>
        	<tbody>
		        <tr>
		          <th scope="row">1</th>
		          <td><a href="#">asdf212</a></td>
		          <td>김선도</td>
		          <td>갓성빈은도대체</td>		          
		        </tr>
		        <tr>
		          <th scope="row">1</th>
		          <td><a href="#">asdf212</a></td>
		          <td>김선도</td>
		          <td>갓성빈은정말..도덕책..</td>
		        </tr>
		        <tr>
		          <th scope="row">1</th>
		          <td><a href="#">asdf212</a></td>
		          <td>김선도</td>
		          <td>갓성빈이 도덕책...</td>
		        </tr>
        	</tbody>
  		</table>
  	</div>
  	
  	<form id="subject">
  	캐러셀 제목 등록  <br>
  		<input type="text" name="캐러셀 제목 등록" width="150"><br>
  	캐러셀 내용 등록 	
  		<textarea rows="10" cols="60"></textarea>
  		
	  	<div id="image_preview">
		        <img class="img" src="../resources/jisu.jpg" width="450" height="300"/>
		        <br />
		      
				        <label for="image">Image:</label>
				        <br />
				        <input type="file" name="image" id="image" />
						<a href="#">Remove</a>
    	</div>
  <button type="button" id="btn1" value="qjxm">변경하기</button>
  	</form>
  	
  	<button></button>	
    <button type="button">닫기</button>
  </div>
  
</div>


<script>
$(function(){
	  $("#btnAdd").click(function(){ //btnAdd라는 버튼을 눌렀을때 ->이벤트 등록
	     
	     var html = '<div class="copy">';
	     html += '<img src="../resources/jim.png" width=600 height=300>'; 
	     html += ' <button type="button" class="modalLink">수정</button>'; 
	     html += ' <button type="button" class="btnDel">삭제</button>';
	     html += '</div>';
	     
	     $(".divBox").append(html); //emptyDiv라는 아이디에 html을 추가해라
	  });
	  
	  $(".divBox").on("click", ".btnDel", function() { 
		    $(this).parent().remove(); 
		  });
	  $(".divBox").on("click", ".modalLink", function() { 
		  var modalLayer = $("#modalLayer");
		  var modalLink = $(".modalLink");
		  var modalCont = $(".modalContent");
		  var marginLeft = modalCont.outerWidth()/2;
		  var marginTop = modalCont.outerHeight()/2; 

		  modalLink.click(function(){
		    modalLayer.fadeIn("slow");
		    modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
		    $(this).blur();
		    $(".modalContent > a").focus(); 
		    return false;
		  });

		  $(".modalContent > button").click(function(){
		    modalLayer.fadeOut("slow");
		    modalLink.focus();
		  });		
		    
		  });  
	  
	  
	})
	
// 	여기서부터는 수정 안에 캐러셀 이미지 등록하기 위한 부분
	
$('#image').on('change', function() {
        
        ext = $(this).val().split('.').pop().toLowerCase(); //확장자
        //style 삭제
        if($('.img[style="display"]')){
        	$('.img').attr('style','');
        }
        
        //배열에 추출한 확장자가 존재하는지 체크
        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
            resetFormElement($(this)); //폼 초기화
            window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
        } else {
            file = $('#image').prop("files")[0];
            blobURL = window.URL.createObjectURL(file);
            $('#image_preview img').attr('src', blobURL);
            $('#image_preview').slideDown(); //업로드한 이미지 미리보기 
//             $(this).slideUp(); //파일 양식 감춤
        }
    });

    /**
    onclick event handler for the delete button.
    It removes the image, clears and unhides the file input field.
    */
    $('#image_preview a').bind('click', function() {
        $('.img').attr("src",""); //전달한 양식 초기화
        $('#image').slideDown(); //파일 양식 보여줌
        $('.img').slideUp(); //미리 보기 영역 감춤
        return false; //기본 이벤트 막음
    });
        

    /** 
    * 폼요소 초기화 
    * Reset form element
    * 
    * @param e jQuery object
    */
    function resetFormElement(e) {
        e.wrap('<form>').closest('form').get(0).reset(); 
        //리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) , 
        //요소를 감싸고 있는 가장 가까운 폼( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
        //DOM에서 제공하는 초기화 메서드 reset()을 호출
        e.unwrap(); //감싼 <form> 태그를 제거
    }	
	


</script>

</body>
</html>