<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


<body>

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

	<div class="company-wrap">

		<div class="company-snb">
			<h2>크라우드 펀딩</h2>
			<div class="">
				<ul>
					<li class="active"><a href="fundList">진행중인 펀딩</a></li>
					<li><a href="endFundList">종료된 펀딩</a></li>
					<li><a href="fundingExampleList">성공한 펀딩 </a></li>
					<li>
						<span class="btn">
							<button class="btn btn-primary" onclick='fundEntrollment_go();' style = "background-color:#26bbe2;">펀딩 등록하기</button>
						</span>
					</li>
				</ul>
			</div>
		</div>

		<div class="contents" style="margin-top: 5px; width: 1213px; margin-left: 213px;">
			<div class="container2">
				<div class="row">
					<div class="col-md-4">
						<div class="single-blog-item">
							<div class="blog-thumnail">
								<a href=""><img style="width:370px; height:275;" src="resources/images/images.jpg"
									alt="blog-img"></a>
							</div>
							<div class="blog-content">
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

												82% </span>
										</div>
										<!-- E : 달성율 -->
										<!-- S : 금액, D-day -->
										<div class="wd-ui-new-target-renew">
											<span class="wd-data-collection"> <em>500,000원</em>
											</span> <span class="wd-data-dday" style=""> 진행중 </span>
										</div>
										<!-- E : 금액, D-day -->
									</div>
								<h4>
									<a href="#">Lorem ipsum dolor sit amet</a>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Sint expedita exercitationem nostrum, eligendi quis, esse quos
									atque in molestias animi.</p>
								<a href="fundDetail" class="more-btn">자세히보기</a>
							</div>
							<span class="blog-date">성공한 펀딩</span>
						</div>
					</div>

					<div class="col-md-4">
						<div class="single-blog-item">
							<div class="blog-thumnail">
								<a href=""><img src="http://via.placeholder.com/370x275"
									alt="blog-img"></a>
							</div>
							<div class="blog-content">
								<h4>
									<a href="#">Lorem ipsum dolor sit amet</a>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Sint expedita exercitationem nostrum, eligendi quis, esse quos
									atque in molestias animi.</p>
								<a href="" class="more-btn">View More</a>
							</div>
							<span class="blog-date">실패한 펀딩</span>
						</div>
					</div>

				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="single-blog-item">
							<div class="blog-thumnail">
								<a href=""><img src="http://via.placeholder.com/370x275"
									alt="blog-img"></a>
							</div>
							<div class="blog-content">
								<h4>
									<a href="#">Lorem ipsum dolor sit amet</a>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Sint expedita exercitationem nostrum, eligendi quis, esse quos
									atque in molestias animi.</p>
								<a href="" class="more-btn">View More</a>
							</div>
							<span class="blog-date">취소된 펀딩</span>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>

</body>
</html>