<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	session.setAttribute("persent", "1%");
%>

<style>
.carousel-image {
	text-align: center;
	height: 400px;
}

.carousel-image img {
	height: auto;
	width: 100%;
}

.calender {
	width: 100%;
	text-align: center;
}

#carouselBody {
	padding: 0;
	height: 400px;
	width: 60%;
	margin: 0 1% 8px 0;
}

.simpleFamous {
	padding: 0;
}

.simpleFamous li {
	width: 33.3333333333333333333333333333%;
	text-align: center;
}

.perfomance {
	width: 31.62526607%;
	height: 450px;
	background-color: #eaeff7;
	float: left;
	margin: 10px;
}

.nonePadding {
	padding-right: 0;
	padding-left: 0;
}

.popular {
	height: 400px;
	width: 39%;
	padding: 0 10px 0 10px;
	margin: 0 0 8px 0;
	background: #eeeeee;
}

.famousFund{
	width:auto;
	height: 260px; 
	padding:0;
	margin:4px 4px 0 4px;
	overflow:hidden;
}

.famousFundContent{
	width:auto;
	height: 182px; 
	padding:12px 8px 8px 8px;
	margin:0 4px 4px 4px;
	background-color: #ffffff;
}

.fundTitle{
	font-size: 1.6em;
	margin:0 0 20px 0;
}

.fundHost{
	margin:0 0 8px 0;
}

.row{
	margin-top:58px;
}

@MEDIA (max-width:1200px) {
	.perfomance{
		width:48%;
		padding:0;
		margin:8px 1% 8px 1%;
	}
}
@MEDIA (max-width:770px) {
	.perfomance{
		width:94%;
		padding:0;
		margin:8px 3% 8px 3%;
	}
}



@media ( max-width :992px) {
	#carouselBody {
		width: 100%;
	}
	.popular {
		width: 100%;
	}
}
</style>
<title>CAS</title>
<div class="row">
	<!-- 캐러셀 -->
	<div class="container col-md-8" id="carouselBody">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>




			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active carousel-image">
						<img src="<c:url value="resources/cal.jpg"/>">
				</div>

				<div class="item carousel-image">
					<img src="<c:url value="resources/cal.jpg"/>">
				</div>

				<div class="item carousel-image">
				<img src="<c:url value="resources/cal.jpg"/>">
				</div>
			</div>


			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<!-- 간략인기순위 -->
	<div class="col-md-4 popular">
		<ul class="nav nav-tabs simpleFamous">
			<li class="active"><a href="#home">펀딩</a></li>
			<li><a href="#menu1">영상</a></li>
			<li><a href="#menu2">Caser</a></li>
		</ul>
		<div class="tab-content simpleFamous">
			<div id="home" class="tab-pane fade in active"
				style="text-align: center;">
				<img src="<c:url value="resources/famous.jpg"/>"
					style="wdith: 100%; height: 150px; margin-top: 10px; margin-bottom: 10px;">
				<br>
				<table class="table table-hover">
					<tbody>
						<tr>
							<td>1</td>
							<td>뮤지컬-캣츠</td>
						</tr>
						<tr>
							<td>2</td>
							<td>영화 판도라</td>
						</tr>
						<tr>
							<td>3</td>
							<td>영화 7호실</td>
						</tr>
						<tr>
							<td>4</td>
							<td>영화 노무현입니다</td>
						</tr>
						<tr>
							<td>5</td>
							<td>영화 나미야 잡화점의 기적</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>

			</div>
			<div id="menu1" class="tab-pane fade">
				<h3>Menu 1</h3>
				<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
					laboris nisi ut aliquip ex ea commodo consequat.</p>
			</div>
			<div id="menu2" class="tab-pane fade">
				<h3>Menu 2</h3>
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
			</div>
		</div>
		<script>
			$(document).ready(function() {
				$(".nav-tabs a").click(function() {
					$(this).tab('show');
				});
			});
		</script>
	</div>

	<div class="col-xs-12 nonePadding" style="margin: 0;">
		<jsp:include page="calender.jsp"></jsp:include>
	</div>

	<div class="col-xs-12 nonePadding">
<!-- 		펀딩 폼 -->
		<a href="#">
			<label style="float:left; margin-top:10px;">크라우드펀딩</label><hr style="  border-top: 1px solid #f10505;">
			<div class="perfomance">
				<div class="famousFund">
					<img src='<c:url value='resources/famous.jpg'/>' style="width:100%;height: auto;">
				</div>
				<div class="famousFundContent">
					<div class="progress" style="margin-top:0; margin-bottom: 0;background: #b2ecff">
						<div class="progress-bar" role="progressbar" aria-valuenow="10"
							aria-valuemin="0" aria-valuemax="100" style="width: 100%">
							<span>130%</span>
						</div>
					</div>
					<label style="float:right; font-size: 0.8em;"> 목표금액 : 1,000,000</label>
					<label style="float:right; font-size: 0.8em;">달성금액 : 700,000 /</label><br>
					<label class="fundTitle"">Docswave! 대담한 미래!</label>
					<br><br>
					<label class="fundHost">소프트웨어인라이프</label>
					<br>
					<label class="fundCategory">문화</label>
				</div>
			</div>
		</a>
<!-- 		펀딩 폼 끝 -->

		<div class="perfomance"></div>
		<div class="perfomance"></div>
		
	</div>
	<div class="col-xs-12 nonePadding">
		<label style="float:left; margin-top:10px;">영상</label><hr style="  border-top: 1px solid #f10505;">
		<div class="perfomance"></div>
		<div class="perfomance"></div>
		<div class="perfomance"></div>
	</div>
	<div class="col-xs-12 nonePadding"></div>
	<div class="col-xs-12 nonePadding"></div>
</div>
