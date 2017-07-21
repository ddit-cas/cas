<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>

#loginLogoDiv {
	text-align: center;
}

#loginLogoImg {
	height: 200px;
}

#loginForm {
	text-align: center;
}

#loginForm input {
	margin: 10px auto;
	width: 350px;
}

.securityLogin{
	width: 350px;
	height: 50px;
	border: 2px solid #34495e;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin: 24px auto;
}

.securitySignUp ,.securityFindMember {
	width: 49%;
	height: 40px;
	border: 2px solid #34495e;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin: 24px auto;
	float:left;
}
.securitySignUp{
	margin-right: 2%;
}

.securityLogin a{
	font-family: arial;
	font-size: 16px;
	color: #fff;
	text-decoration: none;
	line-height: 50px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
}

.securitySignUp a,.securityFindMember a{
	font-family: arial;
	font-size: 12px;
	color: #fff;
	text-decoration: none;
	line-height: 36px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
}

.eff-8 {
	width: 100%;
	height: 50px;
	border: 70px solid #34495e;
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
	box-sizing: border-box;
}


.securitySignUp:hover .eff-8,.securityLogin:hover .eff-8,.securityFindMember:hover .eff-8 {
	border: 0px solid #34495e;
}

.securitySignUp:hover a,.securityLogin:hover a,.securityFindMember:hover a {
	color: #34495e;
}

#securityFooterBtns{
	width: 350px;
	margin: 0 auto;
	padding:0;
}

#securityHr{
	width:350px; 
	margin-top: -15px; 
	margin-bottom:-15px; 
	padding:0;
}

#video { 
     position: fixed;
     top: 0px;
     left: 0px;
	 min-height: 100%;
	 min-width: 100%;
     z-index: -11;
	 overflow: hidden; 
}

#securityForm{
	background: rgba(150, 194, 237, 0.3);
	width: 100%;
	margin: 13% auto;
}

@media (max-width:380px){
	#securityHr{
		margin-top: 0px; 
	}
	.securitySignUp, .securityLogin, .securityFindMember{
		width: 94%;
		margin: 0 3% 9px 3%;
	}
	#loginForm input{
		width: 94%;
		margin: 10px 3%;
	}  
	
	#securityHr{
		width:94%; 
		margin-top: 0px; 
	}
	
	#securityFooterBtns{
		width: 100%;
		margin: 30px auto;
	}
}
</style>
<script>
	$(document).ready(
		function() {
			$('#id').keyup(
				function() {
					if ($(this).val().length > $(this).attr('maxlength')) {
						$(this).val($(this).val().substr(0,$(this).attr('maxlength')));
					}
				});
		}
	);
	function doLogin() {
		if(frm.j_username.value == "") {
			alert("아이디를 입력해주세요.");
			return;
		}
		if(frm.j_password.value == "") {
			alert("패스워드를 입력해주세요.");
			return;
		}
		
		frm.submit();
	}
</script>
<body>
	<video id="video" preload="auto" autoplay="autoplay" loop="loop" >
		<source src="/cas/resources/video/DeepBlueSky.mp4">
	</video>
	<div id="securityForm">
		<div id="body" class="container">
			<div id="loginLogoDiv">
				<a href="main"> <img src="/cas/resources/images/logo.png"
					id="loginLogoImg">
				</a>
			</div>
			<section class="loginform cf">
			<form id="loginForm" action="j_spring_security_check" method="post">
				<div>
					<input type="text" name="username" maxlength="12" placeholder="ID" required><br>
					<input type="password" name="password" maxlength="12" placeholder="PASSWORD" required><br>
					<div class="securityLogin">
						<div class="eff-8"></div>
						<a href="#"> 로그인 </a>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
			</form>
			</section>
			<hr id="securityHr">
			<div id="securityFooterBtns">
				<div class="securitySignUp">
					<div class="eff-8"></div>
					<a href="#"> 회원가입 </a>
				</div>
				<div class="securityFindMember">
					<div class="eff-8"></div>
					<a href="#"> 아이디/비밀번호 찾기 </a>
				</div>
			</div>
		</div>
	</div>
</body>