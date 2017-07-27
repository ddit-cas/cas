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

<!-- 다음에디터를 쓰기위한 링크 -->
 <link rel="stylesheet" href="<c:url value="/resources/daumeditor/css/editor.css"/>" type="text/css" charset="utf-8"/>
 <link rel="stylesheet" href="<c:url value="/resources/daumeditor/css/content_view.css"/>" type="text/css" charset="utf-8"/>
 <script src="<c:url value="/resources/daumeditor/js/editor_loader.js"/>" type="text/javascript" charset="utf-8"></script>
 
<!--  비디오태그를 사용하기위한 링크 -->
 <link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet" />
<script src="http://vjs.zencdn.net/c/video.js"></script>

<!-- sweetalert하기 위한 링크 -->
<link rel="stylesheet" href="/cas/resources/css/sweetalert.css">
<script src="/cas/resources/js/sweetalert/sweetalert.min.js"></script>
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
				<a class="navbar-brand" href="main"
					style="padding: 0; margin: 0 15px 0 15px;"> <img
					src=<c:url value='/resources/images/logo.png' /> style="width: 80px; height: 50px;">
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="carousel">캐러셀 관리</a>
					</li>
					<li><a href="fundAnalysis">펀드관리</a>
					</li>
					<li><a href="pointAnalysis">구름 관리</a>
						
					</li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">게시판 관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">공지사항</a></li>
							<li><a href="reportList">신고</a></li>
							<li><a href="#">cas 소개</a></li>
							<li><a href="#">펀딩 성공 사례</a></li>
							<li><a href="#">자유 게시판</a></li>
							<li><a href="#">공연 홍보</a></li>
							<li><a href="#">pr 영상</a></li>
							<li><a href="#">QnA</a></li>
							<li><a href="#">클라우드 펀딩</a></li>
						</ul>
					</li>
					<li><a href="memberAnalysis">회원관리</a>
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