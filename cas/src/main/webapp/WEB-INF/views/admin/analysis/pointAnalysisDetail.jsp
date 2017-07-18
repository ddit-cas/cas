<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<body>
	<!-- glyphicon CDN -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<style>
	#body {
		margin-top: 58px;
	}
	.signup_cas_ld {
		font-size: 24px;
		border-bottom: 1px dotted #c8c8c8;
		margin : 10px 0;
	}
</style>
	<form class="form-horizontal" action="#">
	<fieldset class="signup_cas_fs">
		<legend class="signup_cas_ld">구름 상세정보</legend>
		<div class="container">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">아이디</label>
				<div class="col-sm-6">
				    <input type="text" class="form-control" id="mem_id" name="id" value="pink202" readonly>
				</div>
				
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">이름(닉네임)</label>
				<div class="col-lg-6">
				    <input type="text" class="form-control" id="name"
						value="박미현(목대여신)" name="name" aria-label="name" readonly>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="ph">전화번호</label>
				<div class="col-lg-6">
				    <input type="text" class="form-control" id="ph"
						value="010-4545-8989" name="ph" aria-label="ph" readonly>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="totalCharge">총 충전금액(<i class="fa fa fa-krw"></i>)</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="totalCharge"
						value="18000" name="totalCharge" readonly>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="totalRefund">총 환급금액(<i class="fa fa fa-krw"></i>)</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="totalRefund"
						value="12000" name="totalRefund" readonly>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="remainPoint">잔여 구름(<i class="fa fa fa-jsfiddle"></i>)</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="remainPoint"
						value="60" name="remainPoint" readonly>
				</div>
			</div>
		</div>
	</fieldset>
	</form>
	<div class="row">
	<div class="col-sm-12">
		<div class="signup_cas_ld">구름 사용 내역</div>
		<div class="container">
		<div class="col-sm-11">
			<table class="table table-condensed">
				<thead>
		        	<tr>
			          	<th>#</th>
						<th>펀드명</th>   
						<th>구름사용액</th>   
						<th>사용날짜</th>   
		        	</tr>
			    </thead>
			    <tbody>
			        <!-- c태그 forEach 사용하여 테이블 로우 자동 생성 // 가능하면 페이징 처리도 해야 함.-->
			    	<tr>
			          <th scope="row">1</th>
					  <td>돈좀주세요</td>
					  <td><i class="fa fa fa-jsfiddle"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			    	</tr>
			    	<tr>
			          <th scope="row">2</th>
					  <td>돈좀주세요</td>
					  <td><i class="fa fa fa-jsfiddle"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			   		</tr>
			    	<tr>
			          <th scope="row">3</th>
					  <td>돈좀주세요</td>
					  <td><i class="fa fa fa-jsfiddle"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			    	</tr>
			    	<tr>
			          <th scope="row">4</th>
					  <td>돈좀주세요</td>
					  <td><i class="fa fa fa-jsfiddle"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			    	</tr>
			    </tbody>
			</table>
			</div>
		</div>
	</div>	
	</div>
	<div class="row">
	<div class="col-sm-6">
		<div class="signup_cas_ld">구름 충전 내역</div>
		<div class="container">
		<div class="col-sm-5">
			<table class="table table-condensed ">
				<thead>
		        	<tr>
			          	<th>#</th>
						<th>충전액</th>   
						<th>충전날짜</th>   
		        	</tr>
			    </thead>
			    <tbody>
			        <!-- c태그 forEach 사용하여 테이블 로우 자동 생성 // 가능하면 페이징 처리도 해야 함.-->
			    	<tr>
			          <th scope="row">1</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			    	</tr>
			    	<tr>
			          <th scope="row">2</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			   		</tr>
			    	<tr>
			          <th scope="row">3</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			    	</tr>
			    	<tr>
			          <th scope="row">4</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			    	</tr>
			    </tbody>
			</table>
			</div>
		</div>
	</div>
	
	<div class="col-sm-6">
		<div class="signup_cas_ld">구름 환급 내역</div>
		<div class="container">
			<div class="col-sm-5">		
			<table class="table table-condensed">
				<thead>
		        	<tr>
			          	<th>#</th>
						<th>환급액</th>   
						<th>환급날짜</th>   
		        	</tr>
			    </thead>
			    <tbody>
			        <!-- c태그 forEach 사용하여 테이블 로우 자동 생성 // 가능하면 페이징 처리도 해야 함.-->
			    	<tr>
			          <th scope="row">1</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			    	</tr>
			    	<tr>
			          <th scope="row">2</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			   		</tr>
			    	<tr>
			          <th scope="row">3</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			    	</tr>
			    	<tr>
			          <th scope="row">4</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;20</td>
					  <td>2017-07-14</td>
			    	</tr>
			    </tbody>
			</table>
			</div>
		</div>
	</div>
	</div>
<style>
	#btnses {
		float:right;
		margin-left : 20px;
		margin-bottom: 50px;
	}
</style>
	<div class="row">	
		<input type="button" id="btnses" onclick="admin_main_go();" class="btn btn-primary" value="메인화면" />
		<input type="button" id="btnses" onclick="history.go(-1);" class="btn btn-danger" value="뒤로가기" />
	</div>
<script>
	function admin_main_go(){
		location.href="main";
	}
</script>	
</body>
