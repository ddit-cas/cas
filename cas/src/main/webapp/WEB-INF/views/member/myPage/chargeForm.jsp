<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<body>
<!-- glyphicon CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.text-danger strong {
	color: #337ab7;
}

.receipt-main {
	background: #ffffff none repeat scroll 0 0;
	border-bottom: 12px solid #333333;
	border-top: 12px solid #337ab7;
	margin-top: 50px;
	margin-bottom: 50px;
	padding: 40px 30px !important;
	position: relative;
	box-shadow: 0 1px 21px #acacac;
	color: #333333;
	font-family: open sans;
}

.receipt-main p {
	color: #333333;
	font-family: open sans;
	line-height: 1.42857;
}

.receipt-footer h1 {
	font-size: 15px;
	font-weight: 400 !important;
	margin: 0 !important;
}

.receipt-main::after {
	background: #414143 none repeat scroll 0 0;
	content: "";
	height: 5px;
	left: 0;
	position: absolute;
	right: 0;
	top: -13px;
}

.receipt-main thead {
	background: #414143 none repeat scroll 0 0;
}

.receipt-main thead th {
	color: #fff;
}

.receipt-right h5 {
	font-size: 16px;
	font-weight: bold;
	margin: 0 0 7px 0;
}

.receipt-right p {
	font-size: 12px;
	margin: 0px;
}

.receipt-right p i {
	text-align: center;
	width: 18px;
}

.receipt-main td {
	padding: 9px 20px !important;
}

.receipt-main th {
	padding: 13px 20px !important;
}

.receipt-main td {
	font-size: 13px;
	font-weight: initial !important;
}

.receipt-main td p:last-child {
	margin: 0;
	padding: 0;
}

.receipt-main td h2 {
	font-size: 20px;
	font-weight: 900;
	margin: 0;
	text-transform: uppercase;
}

.receipt-header-mid .receipt-left h1 {
	font-weight: 100;
	margin: 34px 0 0;
	text-align: right;
	text-transform: uppercase;
}

.receipt-header-mid {
	margin: 24px 0;
	overflow: hidden;
}

#container {
	background-color: #dcdc;
}

/* #body {
	
} */
#btnses {
	margin: 10px;
	text-align: center;
}

.image-preview-input input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0);
}

.image-preview-input {
	position: relative;
	overflow: hidden;
	margin: 0px;
	color: #333;
	background-color: #fff;
	border-color: #ccc;
}
#enter {
	width: 940px;
	height: 50px; 
}	
</style>
	<div id="body">
		<div class="container">

			<div
				class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				<div class="row">
					<div>
						<div class="c_header">
							<h3>구름이(<i class="fa fa fa-jsfiddle"></i>) 충전 신청</h3>
							<p class="contxt">구름이(<i class="fa fa fa-jsfiddle"></i>)를 충전해드리는 서비스입니다.</p>
						</div>
						<hr>

						<!-- [D] input type="text"에 focus 되었을때 class에 on 추가 (ie6,ie7 대응) -->
						<div class="section_delete">
							<h3 class="h_dropout">구름이(<i class="fa fa fa-jsfiddle"></i>) 충전 신청 전에 꼭 읽어 주세요!</h3>
							<p class="dropout_dsc">▶ 100원(<i class="fa fa fa-krw"></i>) 당 1구름(<i class="fa fa fa-jsfiddle"></i>)이로 충전이 됩니다.</p>
						</div>
					</div>
				</div>
			</div>

			<div
				class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				<div class="row">
					<form class="form-horizontal" action="/cas/member/insertPoint" id="chargeForm">
						<fieldset class="signup_cas_fs">
							<h3>개인정보</h3>
							<hr>
							<div class="form-group">
								<label class="control-label col-xs-2" for="name">이름</label>
								<div class="col-sm-8">
									<input type="text" readonly="readonly" class="form-control" id="mem_id" name="id" value="${loginUser.memName }" placeholder="아이디를 입력하세요.">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="tel">전화번호</label>
								<div class="col-sm-8">
									<input type="tel" readonly="readonly" value="${loginUser.memHp }" class="form-control" id="tel"
											placeholder="전화번호를 입력하세요." name="tel">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="email">이메일</label>
								<div class="col-sm-8">
										<input type="email" readonly="readonly" value="${loginUser.memEmail }" class="form-control" id="email"
											 name="email">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="addr">주소</label>
								<div class="col-sm-8">
									<input type="text" readonly="readonly" value="${loginUser.memAddr1 }" class="form-control">
									<input type="text" readonly="readonly" value="${loginUser.memAddr2 }" class="form-control">
									<input type="hidden"value="${loginUser.memAddr1 }${loginUser.memAddr2 }" class="form-control" id="add"
										 name="addr">
								</div>
							</div>
							<hr>
							<h3>계좌정보</h3>
							<hr>
							<br>
							<div class="form-group">
								<label class="control-label col-xs-2" for="id">충전액&nbsp;<i class="fa fa fa-krw"></i></label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="chargingAmount" name="chargingAmount" placeholder="충전금액을 100원 단위로 입력해주세요.">
								</div>
							</div>
						</fieldset>
					</form>
				</div>
				<hr>
				<br>
				<div class="row">
					<div id="btnses">
						<input type="button" onclick="chargePoint();"
							class="btn btn-primary" value="충전하기" />
							 <a href="/cas/member/point"><input type="button" class="btn btn-primary" value="취소" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#chargingAmount').change(function(){
			var ca = $('#chargingAmount').val();
			if(ca%100!=0){
				sweetAlert("충전 실패", "100원 단위로 충전해주세요.", "error");
				$('.confirm').on('click',function(){
					$('#chargingAmount').val('');
					$('#chargingAmount').focus();
				});
			}
		});
	</script>
	<script>
		function chargePoint(){
			var chargeForm = $("#chargeForm");
			chargeForm.submit();
		}
	</script>

</body>
</html>