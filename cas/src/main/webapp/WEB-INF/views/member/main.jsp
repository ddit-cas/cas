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
	margin: 9px;
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
		height: auto;
	}
	.famousFund{
		height: auto;
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
#persentSpan{
}
</style>
<title>CAS</title>
<div id="body">
	<!-- 캐러셀 -->
	<div class="container col-md-8" id="carouselBody">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			<c:forEach items="${carouselList }" var="carousel" varStatus="index">
				<li data-target="#myCarousel" data-slide-to="${index.index }" class="active"></li>
			</c:forEach>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			<c:forEach items="${carouselList }" var="carousel" varStatus="index">
				<c:choose>
					<c:when test="${index.index==0 }">
						<div class="item active carousel-image">
						<a href="${carousel.contentUrl }">
							<img src="${carousel.carouselImage }">
							<div class="carousel-caption">
						        <h2>${carousel.carouselTitle }</h2>
						        <p>${carousel.carouselContent }</p>
						    </div>
						</a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="item carousel-image">
						<a href="${carousel.contentUrl }">
							<img src="${carousel.carouselImage }"/>
							<div class="carousel-caption">
						        <h2>${carousel.carouselTitle }</h2>
						        <p>${carousel.carouselContent }</p>
						    </div>
					    </a>
						</div>
					</c:otherwise>
				</c:choose>
			</c:forEach>
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
			<li class="active"><a href="#home">인기펀딩</a></li>
			<li><a href="#menu1">인기공연</a></li>
			<li><a href="#menu2">인기영상</a></li>
		</ul>
		<div class="tab-content simpleFamous">
			<div id="home" class="tab-pane fade in active"
				style="text-align: center;">
				<img id="topFundImg" src="${topFundList[0].contentImg }"
					style="wdith: 100%; height: 150px; margin-top: 10px; margin-bottom: 10px;">
				<br>
				<table class="table table-hover">
					<tbody>
					<c:forEach items="${topFundList}" var="fund" varStatus="status">
						<tr class="topFundRow" imgUrl="${fund.contentImg }" contentUrl="/cas/fundDetail?contentNum=${fund.contentNum }">
							<td>${status.index+1 }</td>
							<td>${fund.contentTitle }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="menu1" class="tab-pane fade" style="text-align: center;">
				<img id="topPromotionImg" src="${topPromotionList[0].contentImg }"
					style="wdith: 100%; height: 150px; margin-top: 10px; margin-bottom: 10px;">
				<br>
				<table class="table table-hover">
					<tbody>
					<c:forEach items="${topPromotionList}" var="promotion" varStatus="status">
						<tr class="topPromotionRow" imgUrl="${promotion.contentImg }" contentUrl="/cas/promotionDetail?contentNum=${promotion.contentNum }">
							<td>${status.index+1 }</td>
							<td>${promotion.contentTitle }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="menu2" class="tab-pane fade">
				<table class="table table-hover">
					<tbody>
					<c:forEach items="${topUccList}" var="ucc" varStatus="status">
						<tr class="topFundRow" contentUrl="/cas/uccDetail?contentNum=${ucc.contentNum }">
							<td>${status.index+1 }</td>
							<td>${ucc.contentTitle }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
			<script>
					$(".topFundRow").hover(function(){
						$("#topFundImg").attr('src',$(this).attr("imgUrl"));
					})
					$(".topFundRow").click(function(){
						location.href=$(this).attr("contentUrl");
					})
					$(".topPromotionRow").hover(function(){
						$("#topPromotionImg").attr('src',$(this).attr("imgUrl"));
					})
					$(".topPromotionRow").click(function(){
						location.href=$(this).attr("contentUrl");
					})
				</script>
		<script>
			$(document).ready(function() {
				$(".nav-tabs a").click(function() {
					$(this).tab('show');
				});
			});
		</script>
	</div>

	<div class="col-xs-12 nonePadding" style="margin: 0;">
		<jsp:include page="/WEB-INF/views/member/calender.jsp"></jsp:include>
	</div>

	<div class="col-xs-12 nonePadding">
		<label style="float:left; margin-top:10px;">
		<c:choose>
		<c:when test="${not empty loginUser}">
			${topClickPromotionList[0].age }대 ${topClickPromotionList[0].sex }성이 많이 찾은 크라우드펀딩
		</c:when>
		<c:otherwise>
			크라우드펀딩
		</c:otherwise>
		</c:choose>
		</label><hr style="  border-top: 1px solid #f10505;">
<!-- 		펀딩 폼 -->
		<c:forEach items="${topClickFundList}" var="fund">
		<a href="/cas/fundDetail?contentNum=${fund.contentNum }">
			<div class="perfomance" style="text-align: center;">
				<div class="famousFund">
					<img src='${fund.contentImg }' style="height: 100%;">
				</div>
				<div class="famousFundContent">
					<div class="progress" style="margin-top:0; margin-bottom: 0;background: #b2ecff">
						<div class="progress-bar" role="progressbar" aria-valuenow="${fund.fundingTargetAmount-fund.fundingPresentAmount }"
							aria-valuemin="0" aria-valuemax="100" style="width: ${fund.fundingPresentAmount/fund.fundingTargetAmount*100-(fund.fundingPresentAmount/(fund.fundingTargetAmount*100)%0.1)}%">
							<label id="persentSpan">${fund.fundingPresentAmount/fund.fundingTargetAmount*100-(fund.fundingPresentAmount/(fund.fundingTargetAmount*100)%0.1)}%</label>
						</div>
					</div>
					<label style="float:right; font-size: 0.8em;"> 목표금액 : ${fund.fundingTargetAmount }</label>
					<label style="float:right; font-size: 0.8em;">달성금액 : ${fund.fundingPresentAmount } /</label><br>
					<label class="fundTitle">제목 : ${fund.contentTitle }</label>
					<br><br>
					<label class="fundHost">기획 : ${fund.memName }</label>
				</div>
			</div>
		</a>
		</c:forEach>
<!-- 		펀딩 폼 끝 -->
		
	</div>
	<div class="col-xs-12 nonePadding">
		<label style="float:left; margin-top:10px;">
		<c:choose>
		<c:when test="${not empty loginUser}">
			${topClickPromotionList[0].age }대 ${topClickPromotionList[0].sex }성이 많이 찾은 공연홍보
		</c:when>
		<c:otherwise>
			공연홍보
		</c:otherwise>
		</c:choose>
		</label><hr style="  border-top: 1px solid #f10505;">
<!-- 		펀딩 폼 -->
		<c:forEach items="${topClickPromotionList}" var="fund">
		<a href="/cas/promotionDetail?contentNum=${fund.contentNum }">
			<div class="perfomance">
				<div class="famousFund" style="text-align: center;">
					<img src='${fund.contentImg }' style="height: 100%;"/>
				</div>
				<div class="famousFundContent">
					<label class="fundTitle">제목 : ${fund.contentTitle }</label>
					<br>
					<label class="fundHost">작성자 : ${fund.contentWriter }</label>
					<br>
					<label>장르 : ${fund.genreName }</label><br>
					<label>기간 : ${fund.startDate }~${fund.endDate }</label>
				</div>
			</div>
		</a>
		</c:forEach>
	</div>
	<div class="col-xs-12 nonePadding"></div>
	<div class="col-xs-12 nonePadding"></div>
</div>
