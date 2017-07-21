<%@page import="javax.mail.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">

<!-- 다음에디터를 쓰기위한 링크 -->
 <link rel="stylesheet" href="<c:url value="/resources/daumeditor/css/editor.css"/>" type="text/css" charset="utf-8"/>
 <link rel="stylesheet" href="<c:url value="/resources/daumeditor/css/content_view.css"/>" type="text/css" charset="utf-8"/>
 <script src="<c:url value="/resources/daumeditor/js/editor_loader.js"/>" type="text/javascript" charset="utf-8"></script>
 
<!--  비디오태그를 사용하기위한 링크 -->
 <link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet" />
<script src="http://vjs.zencdn.net/c/video.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script src="/cas/resources/js/sidr/jquery.sidr.min.js"></script>

<link rel="stylesheet" href="/cas/resources/css/BootSideMenu.css"/>

<script src="/cas/resources/js/BootSideMenu.js"></script>

<script src="/cas/resources/js/jquery.easing.1.3.js" type="text/javascript"></script>
<style>
body {
	margin: 0;
	padding: 0;
}

#body{
	margin-top: 58px;
}

#loginForm {
	padding: 70px 5px 0 5px;
	text-align: center;
	margin: 0 15px 0 15px;
}

#myInfoDiv {
	padding: 0;
	margin: auto;
	height: 220px;
	width:238px;
	border: solid 2px #222222;
}

.myInfoLabel {
	width: 100%;
	color:#ffffff;
}
#body{
	margin-top:58px;
}
#sidr {
	background-color: #2c2c2c;
}
#body{
	margin-top: 58px;
}

.loginText{
	width: 100%;
	font-size: 13px;
	padding: 5px;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	margin: 0 0 10px;
	border-radius: 2px;
	border: 0;
	background: rgba(0, 0, 0, 0.1);
	color: rgba(255, 255, 255, 0.6);
	display: block;
	clear: both;
}
/* Global Button Styles */
a.animated-button:link, a.animated-button:visited {
	display: block;
	margin: 5px auto 0;
	padding: 5px 15px;
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	text-transform: uppercase;
	overflow: hidden;
	letter-spacing: .08em;
	border-radius: 0;
	text-shadow: 0 0 1px rgba(0, 0, 0, 0.2), 0 1px 0 rgba(0, 0, 0, 0.2);
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}

/* Thar Buttons */
a.animated-button.thar-four {
	color: #fff;
	cursor: pointer;
	display: block;
	position: relative;
	border: 2px solid #222222;
	transition: all 0.4s cubic-bezier(0.42, 0, 0.58, 1);
	s;
}

a.animated-button.thar-four:hover {
	color: #000 !important;
	background-color: transparent;
	text-shadow: nfour;
}

a.animated-button.thar-four:hover:before {
	right: 0%;
	left: auto;
	width: 100%;
}

a.animated-button.thar-four:before {
	display: block;
	position: absolute;
	top: 0px;
	left: 0px;
	height: 100%;
	width: 0px;
	z-index: -1;
	content: '';
	color: #000 !important;
	background: #0099CC;
	transition: all 0.4s cubic-bezier(0.42, 0, 0.58, 1);
}


a {
    color: #666666;
    text-decoration: none;
}

div.company-wrap {
    overflow: hidden;
    width: 1000px;
    margin: 50px 18px;
}

div.company-snb {
    float: left;
    width: 182px;
    position: fixed;

}

div.company-snb h2 {
    background: #26bbe2;
    padding: 100px 0;
    text-align: center;
    color: #fff;
    font-size: 24px;
}

div.company-snb ul {
    margin-top: 10px;
}

div.company-snb ul li {
    margin-bottom: 5px;
    list-style:none;
}

div.company-snb ul li a {
    display: block;
    padding: 20px 0;
    color: #fff;
    text-align: center;
    color: #333;
    font-size: 16px;
    font-weight: 400;
}

div.company-snb ul li a:hover {
    background: #397a9a;
    color: #fff;
}

/* div.company-snb ul li.active a { */
/*     background: #8d8d8d; */
/*     color: #fff; */
/* } */

div.company-cont {
    width: 800px;
    float: right;
    height: 1100px;
    padding-left: 32px;
    
}

div.company-cont h3.box {
    background: #26bbe2;
    color: #fff;
    font-size: 20px;
    padding: 25px 0;
    text-align: center;
    font-weight: bold;
}

h2 {
    display: block;
    font-size: 1.5em;
    -webkit-margin-before: 0.83em;
    -webkit-margin-after: 0.83em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}

h3 {
    display: block;
    font-size: 1.17em;
    -webkit-margin-before: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}

@media (max-width:1000px){

	div.company-snb {
	    width: 100%;
		}
		
	div.company-cont {
	    width: 100%;
		}
		
	h3 {
		width:100%;
	    
	}
	div.company-snb ul li {
	    	width:100%;
		}
		
	div.company-wrap {
	    width: 100%;
		} 
	
	div.imgDiv img{
		width:100%;
		height:auto;
	}

}

@media (max-width:1000px){
	#map {
        width: 300px;
    	margin-left:0px;
   
      }
    div.company-wrap {
    	width: 100%;
	} 
	
	div.company-snb ul li {
    	width:100%;
	}
	
	h3 {
		width:100%;
	    
	}
	
	div.company-cont {
   	 width:100%;
	}
	
	div.company-snb {
    width: 100%;
	}
	
 @media (max-width:1000px){

	div.company-snb {
	    width: 100%;
		}
		
	div.company-cont {
	    width: 100%;
		}
		
	h3 {
		width:100%;
	    
	}
	div.company-snb ul li {
	    	width:100%;
		}
		
	div.company-wrap {
	    width: 100%;
		} 
	
	div.imgDiv img{
		width:100%;
		height:auto;
	}

}

</style>

</head>
<body style="background-color: #ffffff;">

	<!-- 사이드바 시작 -->

	<c:choose>
		<c:when test="${empty loginUser}">
			<!-- 	로그인이 되있지 않을 때 -->
			<div id="sidr">
				<!-- Your content -->
				<form id="loginForm" action="login" method="post"  accept-charset="utf-8">
					<input class="loginText" type="text"  name="memId" placeholder="아이디를 입력하세요"> 
					<input class="loginText" type="password" name="memPwd" placeholder="비밀번호를 입력하세요"> 
					<a href="#" onclick="login(); return false;" class="btn btn-sm animated-button thar-four">로그인</a> 
					<a href="/cas/joinMemberForm" class="btn btn-sm animated-button thar-four">회원가입</a> 
					<a href="#" class="btn btn-sm animated-button thar-four">아이디/비밀번호찾기</a>
				</form>
			</div>
			<script>
				function login(){
					alert("여기자체엔 들어옵니까 씨발?");
					$("#loginForm").submit();
				}
				var statue = "logout";
			</script>
		</c:when>
		<c:otherwise>
			<!-- 		로그인이 되어있을 때 -->
			<div id="sidr" style="text-align: center;">
				<!-- 				Your content -->
				<div id="myInfoDiv">
					<img src="/cas/resources/sinhea.jpg" class="img-circle"
						alt="Cinque Terre" style="width:65%; height:auto; margin-top: 15px;margin-bottom: 15px;"> 
					<label class="myInfoLabel">${loginUser.memName}</label> 
					<label class="myInfoLabel">${loginUser.memPoint} point</label>
				</div>
				<a href="myPagemModify.jsp" class="btn btn-sm animated-button thar-four">개인정보</a> 
				<a href="#" class="btn btn-sm animated-button thar-four">내 영상</a> 
				<a href="#" class="btn btn-sm animated-button thar-four">내 펀딩</a> 
				<a href="#" class="btn btn-sm animated-button thar-four">내 투자</a> 
				<a href="#" class="btn btn-sm animated-button thar-four">나의 CIM</a> 
				<a href="#" class="btn btn-sm animated-button thar-four">포인트관리</a> 
				<a href="#" class="btn btn-sm animated-button thar-four">1:1문의</a> 
				<a href="logout" class="btn btn-sm animated-button thar-four">로그아웃</a>
				<script>
					function logout() {

					}
				</script>
			</div>
			<script type="text/javascript">
				var statue = "login";
			</script>
		</c:otherwise>
	</c:choose>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidr').BootSideMenu({
				side : "right",
				statue : statue,
				pushBody : false,
				remember : false
			});
		});
	</script>


	<nav id="desktopNav" class="navbar navbar-inverse" style="z-index:20; position: fixed; width: 100%">
		<div class="container-fluid container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/cas/main"
					style="padding: 0; margin: 0 15px 0 15px;"> 
					<img src='<c:url value='/resources/images/logo.png' />' style="width: 80px; height: 50px;">
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="noticeBoard.jsp">CAS-이야기
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="/cas/noticeList">공지사항</a></li>
							<li><a href="#">CAS란</a></li>
							<li><a href="#">펀딩 성공 사례</a></li>
							<li><a href="#">공연 행사 일정</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">크라우드펀딩
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="fundList">진행중인 펀딩</a></li>
							<li><a href="#">종료된 펀딩</a></li>
							<li><a href="fundingExampleList">펀딩 성공 사례</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Caser
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="profileView">프로필뷰</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="/cas/freeboardList">자유게시판</a></li>
							<li><a href="#">공연홍보 게시판</a></li>
							<li><a href="/cas/member/uccForm">PR 영상</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">QnA
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="/cas/faqList">FAQ</a></li>
							<li><a href="/cas/qnaMain">1:1 문의사항</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- 사이드바 끝 -->
	<!--헤더파일 들어가는 곳 끝 -->
	<div class="container">
		<decorator:body />
	</div>
	<!-- 푸터 시작 -->
	<div class="clear"></div>

	<div id="footerWrap" class="container-fluid">
		<footer class="container"> </footer>
	</div>
</body>
</html>
