<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<title></title>
<html lang="en">
<head>
<meta name="robots" content="noindex, nofollow">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<style>
#body {
	margin-top: 58px;
}

.fundTitle {
	font-size: 1.6em;
	margin: 0 0 20px 0;
}

.fundHost {
	margin: 0 0 8px 0;
}


</style>
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	window.alert = function() {
	};
	var defaultCSS = document.getElementById('bootstrap-css');
	function changeCSS(css) {
		if (css)
			$('head > link')
					.filter(':first')
					.replaceWith(
							'<link rel="stylesheet" href="'+ css +'" type="text/css" />');
		else
			$('head > link').filter(':first').replaceWith(defaultCSS);
	}
	$(document).ready(function() {
		var iframe_height = parseInt($('html').height());
		window.parent.postMessage(iframe_height, 'https://bootsnipp.com');
	});
</script>
<body>
	<div id="body">
		<div class="container">
			<h2 style="margin: 5px 20px 15px auto;">진행 중</h2>
			<div class="row-fluid">
				<ul class="thumbnails list-unstyled" style="padding: 0 ">
					<li class="col-md-4">
						<div class="thumbnail" style="padding: 0">
							<div style="padding: 4px; width: 100%;">
								<a href="cas/member/myPage/myfundingDeail.jsp"><img alt="funding1" style="width: 100%;"
									src="/cas/resources/funding1.PNG"></a>
							</div>
							<div class="caption" style="text-align: center; width:347px; height:135px;">
								<h2>
									단편영화<책방>제작 프로젝트 
								</h2>
								<b>서효리</b>
								<p>현책방에서 일어나는 의문의사건,그리고 기억</p>
							</div>
							<div class="modal-footer" style="text-align: left">
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="60"
										aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
										<span class="sr-only">60% Complete</span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<b>60%</b>
									</div>
									<div class="col-md-5" style="float: right;">
										<b>413,100원</b>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="col-md-4">
						<div class="thumbnail" style="padding: 0;">
							<div style="padding: 4px; width: 100%; height:258px;">
								<a href="cas/member/myPage/myfundingDeail.jsp"><img alt="funding2" style="width: 100%; height:252px;"
									src="/cas/resources/fungin04.jpg"></a>
							</div>
							<div class="caption" style="text-align: center;">
								<h2>
									희미해지지않게묶다, 노란리본이음팔찌2 
								</h2>
								<b>온프로젝트</b>
								<p>희미해지지않게묶다,노란리본이음팔찌</p>
							</div>
							<div class="modal-footer" style="text-align: left">
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="60"
										aria-valuemin="0" aria-valuemax="100" style="width: 12%;">
										<span class="sr-only">12% Complete</span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<b>12%</b>
									</div>
									<div class="col-md-5" style="float: right;">
										<b>36,300,000원</b>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li class="col-md-4">
						<div class="thumbnail"
							style="padding: 0;">
							<div style="padding: 4px">
								<a href=""><img alt="funding3" style="width: 100%"
									src="/cas/resources/funding6.jpg"></a>
							</div>
							<div class="caption" style="text-align: center;">
								<h2>
									영화<나와 봄날의 약속> 
								</h2>
								<b>만세영</b>
								<p>한국영화계 신선한 바람을 일으킬 옴니버스 영화</p>
							</div>
							<div class="modal-footer" style="text-align: left; margin: 10px;">
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="7"
										aria-valuemin="0" aria-valuemax="100" style="width: 7%;">
										<span class="sr-only">7% Complete</span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<b>7%</b>
									</div>
									<div class="col-md-5" style="float: right;">
										<b>3,900,000원</b>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		<div class="row-fluid">
				<h2>성공&마감</h2>
				<ul class="thumbnails list-unstyled">
				<li class="col-md-4">
					<div class="thumbnail" style="padding: 0">
							<div style="padding: 4px">
							<img alt="funding01" style="width: 100%"
								src="/cas/resources/fungin02.jpg">
						</div>
						<div class="caption" style="text-align: center;">
							<h2>장애아동음악회개최</h2>
							<b>사단법인한국 문화예술교육원</b>
							<p>한국문화예술원의 장애아동음악교육후원을 통한 음악회개최프로젝트입니다.</p>
						</div>
						<div class="modal-footer" style="text-align: left">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="100"
									aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
									<span class="sr-only">100% Complete</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<b>100%</b>
								</div>
								<div class="col-md-3" style="color:blue;">
									<b>성공</b>
								</div>
								<div class="col-md-5" style="float: right;">
									<b>1,060,000원</b>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li class="col-md-4">
					<div class="thumbnail" style="padding: 0">
						<div style="padding: 4px">
							<a href="cas/member/myPage/myfundingDeail.jsp"><img alt="funding01" style="width: 100%"
								src="/cas/resources/fungin01.jpg"></a>
						</div>
						<div class="caption" style="text-align: center;">
							<h2>드림씨어터프로젝트</h2>
							<b>꿈꾸는씨어터</b>
							<p>드림씨어터프로젝트는 소극장 과 공연예술후원 프로젝트입니다.</p>
						</div>
						<div class="modal-footer" style="text-align: left">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="100"
									aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
									<span class="sr-only">100% Complete</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<b>100%</b>
								</div>
								<div class="col-md-3" style="color:blue;">
									<b>성공</b>
								</div>
								<div class="col-md-5" style="float: right;">
									<b>5,000,000원</b>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li class="col-md-4">
					<div class="thumbnail" style="padding: 0">
						<div style="padding: 4px">
							<a href="cas/member/myPage/myfundingDeail.jsp"><img alt="funding01" style="width: 100%"
								src="/cas/resources/funding4.jpg"></a>
						</div>
						<div class="caption" style="text-align: center;">
							<h2>마이다스 쇼킹 페스티벌 in SEOUL</h2>
							<b>seoul</b>
							<p>난지한강 공원!이제껏 볼 수 없었던 인생 콘서트를 경험한다.</p>
						</div>
						<div class="modal-footer" style="text-align: left">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 12%;">
									<span class="sr-only">12% Complete</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<b>12%</b>
								</div>
								<div class="col-md-3" style="color:red;">
									<b>마감</b>
								</div>
								<div class="col-md-5" style="float: right;">
									<b>36,300,000원</b>
								</div>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
		</div>
</body>
</html>

