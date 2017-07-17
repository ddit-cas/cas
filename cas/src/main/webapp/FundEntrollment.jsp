<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>펀딩등록 초기페이지</title>
<body>

	<!-- glyphicon CDN -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
	
	p.move {
	  font: normal 40px/50px Arial, sans-serif;
 	  color: #c8c8c8;
	  height: 50px;
	  float: left;
	  margin-right: 0.3em;
	}
	b.move {
		font: normal 40px/50px Arial, sans-serif;
 		color: #999;
		float: left;
		overflow: hidden;
		position: relative;
		height: 50px;
	}
	span1 {
		display: inline-block;
		color: #e74c3c;
		position: relative;
		white-space: nowrap;
		top: 0;
		left: 0;
		-webkit-animation: move 5s;
		-webkit-animation-iteration-count: infinite;
		-webkit-animation-delay: 2s;
	}
	
	@keyframes move {
	0%  { top: 0px; }
	20% { top: -50px; }
	40% { top: -100px; }
	60% { top: -150px; }
	80% { top: -200px; }
	}

	body {
		background-image: url("./resources/images/entrollment.jpg");
		
	}
	.body {
		margin-top: 58px;
	}
	div.header {
		
		margin-top: 150px;
		margin-bottom: 80px;
		
	}
	h1.title {
		padding : 0;
		margin: 30px auto;
		text-align: center;
		color:#c8c8c8;
	}
	.content {
		background-image: url("./resources/images/bg-black-register.png");
		background-repeat: repeat-x;
		background-repeat: repeat-y;
		
	}
	.wrap {
		font-size: 18px;
		color:#c8c8c8;
	}
	#guideWrap {
		margin: 0 auto;
	}
	#guideBtn {
		font-size: 28px;
		margin: 0 auto;
	}
	#guideDownBtn{
		font-size: 28px;
	}
	
	.text {
		width : 525px;
		height : 225px;
	}
	
	.left {
	
	}
	.right {
	
	}
	div.bottom>input {
		font-size: 28px;
		margin: 0 auto;
	}
</style>
<div class="body">
	<div class="header">
		<p class="move">나는</p>
		<b class="move">
		  <span1>
		    이양호<br /> 
		    설승민<br />
		    김민환<br />
		    박성빈<br />
		    박미현<br />
		    김진성<br />
		    </span1>
		</b>

		<!-- 
		<h1 class="title">여러분의 열정을</h1>
		<h1 class="title">CAS와 함께 실현해보세요.</h1>
		 -->
	</div>
	<div class="content">	
		<div class="col-lg-12">
			<div class="wrap">
				<div class="col-md-6">
				<div class="left">
					<div class="text">
						반갑습니다! 예비 프로젝트 진행자님 어떤 프로젝트를 개설하려고 하나요 ?
						저희 Culture Art-contents Social media potal(이하 CAS)는 더불어 사는 사회를 지향하고, 
						더 나은 세상을 바꾸는 프로젝트를 대중들에게 소개하는 크라우드펀딩 플랫폼입니다. 
						CAS를 통해 여러분의 아이디어를 실현시킬 추진동력 끌어올려보세요.
						우선, 크라우드펀딩 프로젝트 개설하기 전 진행자를 위한 가이드를 꼭 읽어주세요.
						크라우드펀딩 진행방식, 프로젝트 스토리 구성, 리워드 설정 등 성공적인 프로젝트 개설을 위한 안내서가 준비되어 있습니다.
					</div>
					<div id="guideWrap" class="col-sm-6">
						<input class="btn btn-primary" type="button" id="guideBtn" value="펀딩 진행자 가이드 보기">
					</div>
				</div>
					
						
				</div>
				<div class="col-md-6">
				<div class="right">
					<div class="text">
						프로젝트 가이드를 읽어보셨나요?
						CAS 프로젝트를 개설 내용을 업로드 하기 전 다음 사항을 확인해주세요.
					</div>
					
					<div id="guideWrap" class="col-sm-6">
						<input class="btn btn-primary" type="button" id="guideDownBtn" value="펀딩 업로드 안내서 다운로드">
					</div>
				</div>
				</div>
				<div class="bottom" class="col-sm-6" >
					<input class="btn btn-primary" type="button" id="registerBtn" value="펀딩 등로하기">
				</div>
			</div>
		</div>
	</div>
</div>		
</body>
