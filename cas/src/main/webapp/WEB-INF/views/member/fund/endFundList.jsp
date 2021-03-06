<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<style>
.wd-icon-content {
    display: inline-block;
    position: absolute;
    top: 280px;
    width: 370px;
    height: 52px;
    z-index: 1;
    background-color: rgba(0, 0, 0, 0.7);
    font-weight: 500;
    color: #fff;
    line-height: 2.6;
    margin: 0px 11px 0px 10px;
    border: rgba(52, 142, 200, 0.6);
    margin-left: -55px;
}

.wd-data-dday {
    float: right;
    margin-right: 12px;
}

.wd-ui-new-target-renew {
    float: right;
    margin-top: -36px;
    font-size: 14px;
    width: 166px;
}

div.company-wrap {
    overflow: hidden;
    width: 1020px;
    margin: 50px 18px;
}

</style>

	<link rel="stylesheet" href="/cas/resources/css/fundList.css"
		type="text/css">


<script>
function fundEntrollment_go(){
	location.href="/cas/member/insertFundIntro";
}
</script>
<div id="body">
	<div class="company-wrap">

		<div class="company-snb">
			<h2>크라우드 펀딩</h2>
			<div class="">
				<ul>
					<li class="active"><a href="/cas/fundList">진행중인 펀딩</a></li>
					<li><a href="/cas/endFundList">종료된 펀딩</a></li>
					<li>
						<span class="btn">
							<button class="btn btn-primary" onclick='fundEntrollment_go();' style = "background-color:#26bbe2;">펀딩 등록하기</button>
						</span>
					</li>
				</ul>
			</div>
		</div>
		<div class="contents" style="margin-top: 5px; width: 1213px; margin-left: 213px;">
		<h3 class="box">종료된 크라우드 펀딩</h3>
			<div class="container2">
				<div class="row">
					<div class="col-md-3" style="width: 100%">
					<c:forEach var="result" items="${resultList}" >
						<div class="single-blog-item" style="height: 517px; float: left;width: 33.2%; padding: 14px 17px;">
							<div style="height: 278px;" class="blog-thumnail">
								<a href=""><img style="width:370px; height:275;" src="${result.contentImg }"
									alt="blog-img"></a>
							</div>
							<div class="blog-content">
								<fmt:parseNumber integerOnly="true" var="percent" value="${result.fundingPresentAmount/result.fundingTargetAmount*100-(result.fundingPresentAmount/(result.fundingTargetAmount*100)%0.1)}"></fmt:parseNumber>
								<div class="wd-icon-content" style="">
										<!-- S : 프로그래스 바 -->
										<div class="progressbar progressbarcss ui-progressbar ui-widget ui-corner-all" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="64" style="margin: 10px -1px -1px 10px; height: 8px; width: 232px; overflow: visible; background: #ffffff">
											<div class="ui-progressbar-value ui-corner-left" style="border-radius: 4px; display: block; width: 101%; margin: -1px; background: rgb(0, 175, 132);"></div>
										</div>
										<!-- E : 프로그래스 바 -->
										<!-- S : 달성율 -->
										<div class="wd-ui-gage-wrap">
											<!-- wd-p0 ~ wd-p100 -->
											<span class="wd-data-percent" style="color: #00af84; margin-left: 5px; margin-left: 10px; font-size: 14px;">
												${percent}% </span>
										</div>
										<!-- E : 달성율 -->
										<!-- S : 금액, D-day -->
										<div class="wd-ui-new-target-renew">
											<span class="wd-data-collection"> <em>${result.fundingPresentAmount }</em>
											</span> <span class="wd-data-dday" style=""> ${result.state } </span>
										</div>
										<!-- E : 금액, D-day -->
									</div>
								<h4>
									<a href="#">${result.contentTitle }</a>
								</h4>
								<p></p>
								<a href="/cas/fundDetail?contentNum=${result.contentNum }" class="more-btn">자세히보기</a>
							</div>
							<span class="blog-date">${result.state }</span>
						</div>
					</c:forEach>	
					</div>

				</div>
				
			</div>
			
		</div>
		
	</div>
	</div>
