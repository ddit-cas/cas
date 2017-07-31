<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<body>

<div class="divBox">
<!-- 	<div class="real"> -->
	
<!-- 		<img src="../resources/jisu.jpg" width="600" height="300"> -->

<!-- 		<button type="button" class="modalLink">수정</button> -->
<!-- 		<button type="button" class="btnDel">삭제</button> -->
	
<!-- 	</div> -->
 
	
</div>


<div class="container">
  <h2>캐러셀 관리</h2>
<button type="button" class="btn btn-default" onclick="carouselDetailGo();" id="btnAdd" style="float:right; margin: auto 30px;">추가</button>
  <table class="table table-striped">
    <thead>
      <tr>
        <th style="text-align:center;">캐러셀 대상</th>
        <th style="text-align:center;">캐러셀 제목</th>
        <th style="text-align:center;">캐러셀 이미지</th>
        <th style="text-align:center;">상태</th>
      </tr>
    </thead>
    <tbody>
    	<c:forEach items="${carouselList }" var="carousel" varStatus="index">
    		<tr style="text-align:center;">
				<td style="text-align:center; padding:30px;"><a href="${carousel.contentUrl }">대상글</a></td>
		        <td style="text-align:center; padding:30px;">${carousel.carouselTitle }</td>
				<td><img src="${carousel.carouselImage }" alt="carouselImg" width="150px;" height="100px;"></td>
				<td style="text-align:center; padding:30px;"><button class="btn" onclick="carouselDetailGo('${carousel.carouselNum }');">상세내용</button></td>
			</tr>
		</c:forEach>
    </tbody>
  </table>
</div>

<script>
	function carouselDetailGo(carouselNum){
		if (carouselNum!=null) {
			location.href="/cas/admin/carouselDetail?carouselNum="+carouselNum;
		}else{
			location.href="/cas/admin/carouselDetail";
		}
	}
</script>

</body>
</html>