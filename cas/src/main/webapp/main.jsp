<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<style>
#carousel-image {
	text-align: center;
	height: 400px;
}

#carousel-image img {
	height: auto;
	width: 100%;
}

.calender {
	width: 100%;
	text-align: center;
}

.carousel {
	padding: 0;
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
	width: 31%;
	height: 300px;
	background-color: #cccccc;
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

@media ( max-width :992px) {
	.carousel {
		width: 100%;
	}
	.popular{
		width: 100%;
	}
}
</style>
<div class="row">
	<!-- 캐러셀 -->
	<div class="carousel col-md-8">
		<div id="myCarousel" class="carousel-slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<div id="carousel-image">
						<img src="resources/cal.jpg" alt="Los Angeles">
					</div>
				</div>

				<div class="item" style="text-align: center;">
					<div id="carousel-image">
						<img src="resources/cal.jpg" alt="Chicago">
					</div>
				</div>

				<div class="item">
					<div id="carousel-image">
						<img src="resources/cal.jpg" alt="New York">
					</div>
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
				<img src="resources/famous.jpg"
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
		<ul>
			<c:forEach var="m" begin="1" end="31" step="1">
				<li>${m}</li>
			</c:forEach>
		</ul>		
	</div>

	<div class="col-xs-12 calender nonePadding">
		<div class="perfomance"></div>
		<div class="perfomance"></div>
		<div class="perfomance"></div>
	</div>
	<div class="col-xs-12 calender nonePadding">
		<div class="perfomance"></div>
		<div class="perfomance"></div>
		<div class="perfomance"></div>
	</div>
	<div class="col-xs-12 nonePadding"></div>
	<div class="col-xs-12 nonePadding"></div>
</div>
