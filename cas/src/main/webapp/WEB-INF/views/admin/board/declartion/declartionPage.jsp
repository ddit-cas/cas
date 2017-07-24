<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<body>
<div class="bs-example" data-example-id="condensed-table">
   	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 최근 UCC 게시글</h3>
			</div>
			<div class="panel-body">
			
<script>
$(function(){
	$('tr').on('click',function(){
		location.href="reportDetail";
	});
});
</script>			
			    <table class="table table-hover">
			      <thead>
			        <tr>
			          <th>#</th>
			          <th>분류</th>
			          <th>신고자 닉네임</th>
			          <th>내용</th>
			          <th>사유</th>
			          <th>처리여부</th>
			        </tr>
			      </thead>
			      <tbody>
			        <tr>
			          <th scope="row">1</th>
			          <td>게시글</td>
			          <td>zxcv123</td>
			          <td><a href="reportDetail">너무너무재미있는디디아이티</a></td>
			          <td>무분별한 노잼따</td>
			          <td>미처리</td>
			        </tr>
			        <tr>
			          <th scope="row">2</th>
			          <td>댓글</td>
			          <td>느그어머니만수무강</td>
			          <td>느그느근그느그늑느그어머니!</td>
			          <td>뒤에서 나야나를 부를 죄</td>
			          <td>처리</td>
			       </tr>
			       <tr>
			          <th scope="row">3</th>
			          <td>댓글</td>
			          <td>어쩜좋니</td>
			          <td>ㅋㅌㅊㅍㅁㄴㄷㄹㄷㅈ</td>
			          <td>오유를 한 죄</td>
			          <td>미처리</td>
			       </tr>
			        <tr>
			          <th scope="row">4</th>
			          <td>댓글</td>
			          <td>어쩜좋니</td>
			          <td>ㅁㄴㅇㄻㅇㄴㄹㅋㅊㅌㅍ</td>
			          <td>오유를 한 죄</td>
			          <td>처리</td>
			       </tr>
			       <tr>
			          <th scope="row">5</th>
			          <td>댓글</td>
			          <td>어쩜좋니</td>
			          <td>ㅇㄶㅁㄴㅁㄴㅇ러민ㅇ러</td>
			          <td>오유를 한 죄</td>
			          <td>처리</td>
			       </tr>
			      </tbody>
			    </table>
   			</div>
		</div>
	</div>
   </div>
   


</body>
</html>