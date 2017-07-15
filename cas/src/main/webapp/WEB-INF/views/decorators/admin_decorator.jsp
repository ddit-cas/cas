<%@page import="javax.mail.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.min.js'></script>


</head>
<body>
<nav id="desktopNav" class="navbar navbar-inverse">
		<div class="container-fluid container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"
					style="padding: 0; margin: 0 15px 0 15px;"> 
					<img src=<c:url value='/resources/images/logo.png' /> style="width: 80px; height: 50px;">
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">캐러셀 관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">캐러셀 리스트</a></li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">크라우드펀드관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">클라우드 펀딩 결제관리</a></li>
							<li><a href="#">클라우드 펀딩 카운트관리</a></li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">포인트 관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							
							<li><a href="#">펀딩 카운트</a></li>
							<li><a href="#">포인트 카운트</a></li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">게시판 관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">신고</a></li>
							<li><a href="#">cas 소개</a></li>
							<li><a href="#">펀딩 성공 사례</a></li>
							<li><a href="#">자유 게시판</a></li>
							<li><a href="#">공연 홍보</a></li>
							<li><a href="#">pr 영상</a></li>
							<li><a href="#">QnA</a></li>
							<li><a href="#">클라우드 펀딩</a></li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">회원관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">회원관리</a></li>
							<li><a href="#">회원카운트</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	
	<div class="container">
		<decorator:body />
	</div>

	<div class="clear"></div>

	<div id="footerWrap" class="container-fluid">
		<footer class="container"> </footer>
	</div>

</body>
</html>
