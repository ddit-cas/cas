<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>

<style>


a {
    color: #666666;
    text-decoration: none;
}

div.company-wrap {
    overflow: hidden;
    width: 1000px;
    margin: 50px auto;
}

div.company-snb {
    float: left;
    width: 182px;
    
}

div.company-snb h2 {
    background: #ff6949;
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
    background: #8d8d8d;
    color: #fff;
}

/* div.company-snb ul li.active a { */
/*     background: #8d8d8d; */
/*     color: #fff; */
/* } */

div.company-cont {
    width: 800px;
    float: right;
}

div.company-cont h3.box {
    background: #2b2f3a;
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

#map {
        width: 900px;
        height: 300px;
        background-color: grey;
        margin-top:30px;
      }
      
div.guide-address {
    font-size: 14px;
}


div.guide-address dl dt {
    text-align: center;
    background: #2f333c;
    color: #fff;
    padding: 10px 10px;
    font-size: 18px;
    margin-bottom: 10px;
}     

div.guide-address dl dd {
    text-align: center;
    color: #666;
}

div.guide-address{
    margin-top:20px;
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
	
      
}


</style>


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
	<div class="company-snb">
			<h2>회사소개</h2>
			<div class="">
				<ul>
					<li class="active"><a href="cas-introduce.jsp">VISION</a></li>
					<!--li><a href="people.php">PEOPLE</a></li-->
					<li><a href="cas-partner.jsp">PARTNERSHIP</a></li>
					<li><a href="cas-contact.jsp">CONTACT US</a></li>
				</ul>
			</div>
		</div>
		<div class="company-cont">
			<h3 class="box">CONTACT US</h3>
			<div class="imgDiv"><img src="resources/intro-5.png" alt=""></div>
			<div id="map"></div>
			
			<div class="guide-address">
							<dl>
								<dt>ADDRESS</dt>
									<dd>
										대전광역시 중구 대흥동 500 영민빌딩 2층 대덕인재개발원 204호
									</dd>
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
									<dd class="tl"><strong>지하철</strong><br>지하철 1호선 중구청역 1번 출구에서 도보로 1분<br>
										1번 출구 바로 뒷편에 있는 건물이 영민빌딩입니다. CAS는 영민빌딩 내 2층 204호에 자리하고 있습니다. 
									</dd>
									<dd class="tl"><br><strong>버스</strong><br>
										주변 정류장) 성모병원 (20-570)  중구청 (20-600)  중구청역 (20-160)  중구청역 (23-370)<br>
										간선) 201, 314, 608, 613, 101, 103<br>
										지선) 614<br>
										외곽) 30
										
									</dd>
							</dl>				
						</div>
		</div>
	
</div>

</body>
</html>