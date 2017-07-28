<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

<body>
	<style>
#body {
	margin-top: 58px;
}

table{
    font-family:'Calibri';
    font-size:15px;
    background-color:#fff;
    color:#333;
}
.modal-header{
    background-color:#333;
    color:#fff;
}

</style>
	<script type="text/javascript">
	$(document).ready(function(){
		   $(".update").click(function(){
		       var id = $(this).data("uid");
		       var f1 = $("#f1").html();
		       var l1 = $("#l1").html();
		       var m1 = $("#m1").html();
		       var f2 = $("#f2").html();
		       var l2 = $("#l2").html();
		       var m2 = $("#m2").html();
		       if(id==1){
		           $("#fn").val(f1);
		           $("#mn").val(m1);
		           $("#ln").val(l1);
		       }else if(id==2){
		           $("#fn").val(f2);
		           $("#mn").val(m2);
		           $("#ln").val(l2);
		       }
		       $("#up").click(function(){
		           if(id==1){
		               var fn = $("#fn").val();
		               var mn = $("#mn").val();
		               var ln = $("#ln").val();    
		               $("#f1").html(fn);
		               $("#m1").html(mn);
		               $("#l1").html(ln);
		           }else if(id==2){
		               var fn = $("#fn").val();
		               var mn = $("#mn").val();
		               var ln = $("#ln").val();    
		               $("#f2").html(fn);
		               $("#m2").html(mn);
		               $("#l2").html(ln);              
		           }
		       });
		   });
		   $(".delete").click(function(){
		      var id = $(this).data("uid");
		      $("#del").click(function(){
		          if(id==1){
		              $("#d1").html('');
		          }else if(id==2){
		              $("#d2").html('');
		          }
		      });
		   });
		});
	</script>
	<div id="body">
		<div class="container">
		<div class="company-cont" style="height: auto; width: 960px;">
			<h3 class="box" style="background-color:;">My투자</h3>
			<h2>현재 투자 중 펀딩 리스트</h2>
			<div class="row">
				<table class="table table-hover table-responsive">
					<thead>
						<tr>
							<th>펀딩이름</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>회원명</th>
							<th>형태</th>
							<th>전화번호</th>
							<th>날짜</th>
							<th>cancel</th>
						</tr>
					</thead>
					<tbody>
						<tr id="d1">
							<td id="f1">단편영화<책방>제작 프로젝트</td>
							<td id="f2">hori11</td>
							<td id="l1">서효리</td>
							<td id="l2">서효리</td>
							<td id="l2">후원형</td>
							<td id="m2">010-1234-5289</td>
							<td id="m3">2017-07-05</td>
							<td><button type="button" data-toggle="modal"
									data-target="#delete" data-uid="1"
									class="delete btn btn-danger btn-sm">
									<span>cancel</span>
								</button></td>
						</tr>
						<tr id="d2">
							<td id="f1">단편영화<책방>제작 프로젝트</td>
							<td id="f2">hori11</td>
							<td id="l1">서효리</td>
							<td id="l2">서효리</td>
							<td id="l2">투자형</td>
							<td id="m2">010-1234-5289</td>
							<td id="m3">2017-05-26</td>
							<td><button type="button" data-toggle="modal"
									data-target="#delete" data-uid="1"
									class="delete btn btn-danger btn-sm">
									<span>cancel</span>
								</button></td>
						</tr>
					</tbody>
				</table>
			</div>
			<hr>
			<h2>투자한 펀딩 리스트</h2>
			<div class="row">
				<table class="table table-hover table-responsive">
					<thead>
						<tr>
							<th>펀딩이름</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>회원명</th>
							<th>형태</th>
							<th>전화번호</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr id="d1">
							<td id="f1">단편영화<책방>제작 프로젝트</td>
							<td id="f2">hori11</td>
							<td id="l1">서효리</td>
							<td id="l2">서효리</td>
							<td id="l2">후원형</td>
							<td id="m2">010-1234-5289</td>
							<td id="m3">2017-07-05</td>
						</tr>
						<tr id="d2">
							<td id="f1">단편영화<책방>제작 프로젝트</td>
							<td id="f2">hori11</td>
							<td id="l1">서효리</td>
							<td id="l2">서효리</td>
							<td id="l2">투자형</td>
							<td id="m2">010-1234-5289</td>
							<td id="m3">2017-07-05</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div style="float:right;"><h3>나의 이익: ￦ 300,000</h3></div>								
		</div>
		</div>
		<div class="btn-ground" style="margin: auto; text-align:center;">
			<a href="fundList"><input type="button" class="btn btn-primary" value="나가기" /></a>
		</div>
		<div id="delete" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">펀딩 취소하기</h4>
					</div>
					<div class="modal-body">
						<strong>펀딩 취소 하겠습니까?</strong>
					</div>
					<div class="modal-footer">
						<button type="button" id="del" class="btn btn-danger"
							data-dismiss="modal">취소하기</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		
</body>