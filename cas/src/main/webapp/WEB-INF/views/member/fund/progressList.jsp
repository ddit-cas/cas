<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>

	<style>

div.company-wrap {
	overflow: hidden;
	width: 1020px;
	margin: 50px 18px;
}

#body {
	margin-top: 58px;
}

</style>

	<!-- 	<link rel="stylesheet" href="/cas/resources/css/fundList.css" -->
	<!-- 		type="text/css"> -->


	<script>
		function fundEntrollment_go() {
			location.href = "/cas/member/insertFundIntro";
		}
	</script>

	<div class="company-wrap">

		<div class="company-snb">
			<h2>크라우드 펀딩</h2>
			<div class="">
				<ul>
					<li class="active"><a href="/cas/fundList">진행중인 펀딩</a></li>
					<li><a href="/cas/endFundList">종료된 펀딩</a></li>
					<li><a href="/cas/fundingExampleList">성공한 펀딩 </a></li>
					<li><span class="btn">
							<button class="btn btn-primary" onclick='fundEntrollment_go();'
								style="background-color: #26bbe2;">펀딩 등록하기</button>
					</span></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="contents" style="margin-top: 5px; width: 960px; margin-left: 213px;">
		<div class="company-cont" style=" width: 960px;">
		<h3 class="box">클라우드 펀딩</h3>
		<div class="row-fluid">
		<ul class="thumbnails list-unstyled">
			<c:forEach var="i" begin="${firstRow}" end="${lastRow}">
				<li class="col-md-4">
					<div class="thumbnail" style="padding: 0">
						<div style="padding: 4px; width: 100%;">
							<a href="/cas/fundDetail?contentNum=${fund[i].contentNum }"><img
								alt="funding1" style="width: 400px; height:250px;" src="${fund[i].contentImg }"></a>
						</div>
						<a href="/cas/fundDetail?contentNum=${fund[i].contentNum }">
						<div class="caption"
							style="text-align: center;">
							<h3>${fund[i].contentTitle }</h3>
							<b>${fund[i].contentWriter }</b>
						</div>
						</a>
						<div class="modal-footer" style="text-align: left">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
									<span class="sr-only">${fund[i].fundingPresentAmount/fund[i].fundingTargetAmount*100-(fund[i].fundingPresentAmount/(fund[i].fundingTargetAmount*100)%0.1)}%</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<b>${fund[i].fundingPresentAmount/fund[i].fundingTargetAmount*100-(fund[i].fundingPresentAmount/(fund[i].fundingTargetAmount*100)%0.1)}%</b>
								</div>
								<div class="col-md-4">
									<b>진행중</b>
								</div>
								<div class="col-md-4" style="float: right;">
									<b>${fund[i].fundingPresentAmount}원</b>
								</div>
							</div>
						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>
</div>
<!-- 페이지수  -->
<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
   <div class="row">
      <nav aria-label="...">
         <ul class="pager" role="tablist">
            <li class="previous">
               <a href="/cas/fundList?tab=${minNum-1}${searchUrl}"><span aria-hidden="true">←</span>
                  이전
               </a>
            </li>
            <c:forEach var="i" begin="${minNum}" end="${maxNum}">
            <c:choose>
            <c:when test="${index==i}">
            <li>
               <a style="background: #aaa;" aria-controls="tab1" href="/cas/fundList?tab=${i}${searchUrl}">
                  ${i }
               </a>
            </li>
            </c:when>
            <c:otherwise>
            <li>
               <a aria-controls="tab1" href="/cas/fundList?tab=${i}${searchUrl}">
                  ${i }
               </a>
            </li>
            </c:otherwise>
            </c:choose>
            </c:forEach>
            <li class="next">
               <a href="/cas/fundList?tab=${maxNum+1}${searchUrl}">다음<span aria-hidden="true">→</span>
               </a>
            </li>
         </ul>
      </nav>
   </div>
</div>
</body>
</html>
