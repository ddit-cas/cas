<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<body>
	<style>
#map {
	width: 900px;
	height: 300px;
	background-color: grey;
	margin-top: 30px;
}

div.guide-address {
	font-size: 14px;
}

div.guide-address dl dt {
	text-align: center;
	background: #26bbe2;
	color: #fff;
	padding: 10px 10px;
	font-size: 18px;
	margin-bottom: 10px;
}

div.guide-address dl dd {
	text-align: center;
	color: #666;
}

div.guide-address {
	margin-top: 20px;
}

div.company-cont2 {
    width: 800px;
    float: right;
   	height: 1364px;
}

div.company-cont2 h3.box2 {
    background: #26bbe2;
    color: #fff;
    font-size: 20px;
    padding: 25px 0;
    text-align: center;
    font-weight: bold;
}

div.company-cont3 {
    width: 800px;
    float: right;
    height: 1083px;
}

div.company-cont3 h3.box3 {
    background: #26bbe2;
    color: #fff;
    font-size: 20px;
    padding: 25px 0;
    text-align: center;
    font-weight: bold;
}

</style>



	<div id="body">
		<div class="company-wrap">
			<div class="company-snb">
				<h2>회사소개</h2>
				<div class="">
					<ul>
						<li class="active"><a href="noticeList">공지사항</a></li>
						<!--li><a href="people.php">PEOPLE</a></li-->
						<li><a href="promotion">CAS란</a></li>
						<li><a href="#">공연 행사 일정</a></li>
					</ul>
				</div>
			</div>
			<!--//company-snb-->

			<div class="company-cont">
				<h3 class="box">VISION</h3>
				<div class="imgDiv">
					<img src="resources/intro-1.png" alt="">
				</div>
			</div>
			<!--//company-cont-->


			<div class="company-cont2">
				<h3 class="box2">PARTNERSHIP</h3>
				<div class="imgDiv">
					<img src="resources/intro-3.png" alt="">
				</div>
			</div>
			<!--//company-cont-->

<script>
      function initMap() {
        var uluru = {lat: 36.3248377, lng: 127.42009229999996};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 18,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
</script>

			<script async defer
				src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-qmdXXx1HNTikDjJ-JtDLdh09b-Bxffk&callback=initMap">
</script>


			<div class="company-wrap">

				<div class="company-cont3">
					<h3 class="box3">CONTACT US</h3>
					<div id="map"></div>

					<div class="guide-address">
						<dl>
							<dt>ADDRESS</dt>
							<dd>대전광역시 중구 대흥동 500 영민빌딩 2층 대덕인재개발원 204호</dd>
						</dl>

						<dl>
							<dt>TEL</dt>
							<dd>042-388-2556</dd>
						</dl>

						<dl>
							<dt>FAX</dt>
							<dd>0505-300-2556</dd>
						</dl>

						<dl>
							<dt>E-MAIL</dt>
							<dd>CAS@naver.com</dd>
						</dl>

						<dl>
							<dt>대중교통 이용방법</dt>
							<dd class="tl">
								<strong>지하철</strong><br>지하철 1호선 중구청역 1번 출구에서 도보로 1분<br>
								1번 출구 바로 뒷편에 있는 건물이 영민빌딩입니다. CAS는 영민빌딩 내 2층 204호에 자리하고 있습니다.
							</dd>
							<dd class="tl">
								<br>
								<strong>버스</strong><br> 주변 정류장) 성모병원 (20-570) 중구청 (20-600)
								중구청역 (20-160) 중구청역 (23-370)<br> 간선) 201, 314, 608, 613,
								101, 103<br> 지선) 614<br> 외곽) 30

							</dd>
						</dl>
					</div>
				</div>

			</div>
		</div>

	</div>
</body>
</html>