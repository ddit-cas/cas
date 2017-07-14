<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<body>
    <!-- Morris Charts CSS -->
    <link href="/cas/resources/css/morris.css" rel="stylesheet">

	<!-- glyphicon CDN -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
	<meta name="description" content="Counter Up - jQuery Plugin Demo">
    <meta name="author" content="Benjamin Intal">
    <link rel="author" href="https://plus.google.com/113101541449927918834"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
	
	
  <style>
    * {
        -webkit-transition: all 600ms ease;
        -moz-transition: all 600ms ease;
        -o-transition: all 600ms ease;
        transition: all 600ms ease;
    }
  </style>
<script>
$(function( $ ) {
    $('.counter').counterUp({
        delay: 10,
        time: 1000
    });
});
</script>


    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                       크라우드 펀드
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-bar-chart-o"></i><a href="#">금액 차트</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-dashboard"></i> <a href="#">금액 리스트</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-bar-chart-o"></i> <a href="#">카운트 차트</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-dashboard"></i> <a href="#">카운트 리스트</a>
                        </li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Morris Charts -->
            <div class="row">
            	
                <div class="col-lg-12">
                    <h2 class="page-header">크라우드 펀드 결제 관리</h2>
                    <p class="lead">크라우드 펀딩별 금액 정보를 확인할 수 있습니다.</p>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
            	<div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 펀딩별 모금액</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-bar-chart"></div>
                            <div class="text-right">
                                <a href="#">자세히 보기 <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 hidden">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 지역선 분포 그래프</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-area-chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            
            <!-- 리스트 테이블 들어갈 자리. : 금일 펀딩금액, 금월 펀딩 누적액, 총 누적액 월별 펀딩액 평균 -->
			<div class="row">
            <div class="col-lg-12">
			<label>펀딩금액</label>
			    <table class="table table-condensed">
	      		  <thead>
		        	<tr>
			          	<th>#</th>
				        <th>펀딩명</th>   
						<th>아이디</th>   
						<th>닉네임</th>   
						<th>회원명</th>   
						<th>전화번호</th>
						<th>등록날짜</th>
						<th>모집금액</th>
						<th>목표금액</th>
		        	</tr>
			      </thead>
			      <tbody>
			        <!-- c태그 forEach 사용하여 테이블 로우 자동 생성 // 가능하면 페이징 처리도 해야 함.-->
			        <tr>
			          <th scope="row">1</th>
			          <td><a href="#">사랑을 나눠요</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td><i class="fa fa fa-krw"></i><span class="counter">58,000</span></td>
					  <td><i class="fa fa fa-krw"></i>150,000</td>
			        </tr>
			        <tr>
			          <th scope="row">2</th>
			          <td><a href="#">열정의 불태우다</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td><i class="fa fa fa-krw"></i>58,000</td>
					  <td><i class="fa fa fa-krw"></i>150,000</td>
			        </tr>
			        <tr>
			          <th scope="row">3</th>
			          <td><a href="#">청년 창업 도와주세요</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td><i class="fa fa fa-krw"></i>58,000</td>
					  <td><i class="fa fa fa-krw"></i>150,000</td>
			        </tr>
			      </tbody>
			    </table>
			 </div>
			 </div> 

			<div class="row">
            	
                <div class="col-lg-12">
                    <h2 class="page-header">크라우드 펀드 카운트 관리</h2>
                    <p class="lead">크라우드 펀딩별 카운트 정보를 확인할 수 있습니다.</p>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 종료된 펀딩수</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-donut-chart" class="counter"></div>
                            <div class="text-right">
                                <a href="#">자세히 보기 <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 지난 3년간 펀딩 등록수</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-line-chart"></div>
                            <div class="text-right">
                                <a href="#">자세히 보기 <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="row">
                <div class="col-lg-6">
				<label>완료 펀딩 카운트 리스트</label>
			    <table class="table table-condensed">
					<thead>
						<tr>
							<th>총 펀딩</th>   
							<th>목표 달성</th>
							<th>달성 실패</th>
							<th>펀딩 취소</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>321313213</td> <!-- 게시판 url 적용해야함. -->
							<td>12121212</td>
							<td>7979656</td>
							<td>464646</td>
						</tr>
					</tbody>
				</table>		
                </div>
                <div class="col-lg-6">
					<label>등록 펀딩 카운트 리스트</label>
				    <table class="table table-condensed">
						<thead>
							<tr>
								<th>총 펀딩 누적수</th>   
								<th>전월 등록 펀딩</th>
								<th>금월 등록 펀딩</th>
								<th>금일 등록 펀딩</th>
								<th>월평균 등록 펀딩</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1800500</td> <!-- 게시판 url 적용해야함. -->
								<td>600500</td>
								<td>1200000</td>
								<td>50</td>
								<td>800000</td>
							</tr>
						</tbody>
					</table>		
	                </div>
                </div>
                
            </div>
            <!-- /.row -->
			<!-- 테이블 들어갈 자리.: 전체 펀딩 수, 진행중인 펀딩수, 종료된 펀딩수(성공한 펀딩수, 실패한 펀딩수, 취소한 펀딩수), 각 평균  -->
			
        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

<script>
$(function() {
	var ls = "목표달성펀딩";
	var lf = "달성실패펀딩";
	var lc = "중간취소펀딩";
	var fs = 1800000;
	var ff = 1001231;
	var fc = 801231;
    // Area Chart
    Morris.Area({
        element: 'morris-area-chart',
        data: [{
            period: '2014 Q1',
            iphone: 2666,
            ipad: null,
            itouch: 2647
        }, {
            period: '2014 Q2',
            iphone: 2778,
            ipad: 2294,
            itouch: 2441
        }, {
            period: '2014 Q3',
            iphone: 4912,
            ipad: 1969,
            itouch: 2501
        }, {
            period: '2014 Q4',
            iphone: 3767,
            ipad: 3597,
            itouch: 5689
        }, {
            period: '2015 Q1',
            iphone: 6810,
            ipad: 1914,
            itouch: 2293
        }, {
            period: '2015 Q2',
            iphone: 5670,
            ipad: 4293,
            itouch: 1881
        }, {
            period: '2015 Q3',
            iphone: 4820,
            ipad: 3795,
            itouch: 1588
        }, {
            period: '2015 Q4',
            iphone: 15073,
            ipad: 5967,
            itouch: 5175
        }, {
            period: '2016 Q1',
            iphone: 10687,
            ipad: 4460,
            itouch: 2028
        }, {
            period: '2016 Q2',
            iphone: 6432,
            ipad: 5713,
            itouch: 1791
        }, {
            period: '2016 Q3',
            iphone: 5432,
            ipad: 5713,
            itouch: 2791
        }, {
            period: '2016 Q4',
            iphone: 4432,
            ipad: 7713,
            itouch: 3791
        }],
        xkey: 'period',
        ykeys: ['iphone', 'ipad', 'itouch'],
        labels: ['2014년', '2015년', '2016년'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    // Donut Chart
    Morris.Donut({
        element: 'morris-donut-chart',
        data: 
        	[{
       	     	label: ls,
       	     	value: fs
	       	}, {
	       	    label: lf,
	       	    value: ff
	       	}, {
	       	    label: lc,
	       	    value: fc
	       	}],
        resize: true,
    });

    // Line Chart
    Morris.Line({
        // ID of the element in which to draw the chart.
        element: 'morris-line-chart',
        // Chart data records -- each entry in this array corresponds to a point on
        // the chart.
        data: [{
            d: '2012-10-01',
            visits: 802
        }, {
            d: '2012-10-02',
            visits: 783
        }, {
            d: '2012-10-03',
            visits: 820
        }, {
            d: '2012-10-04',
            visits: 839
        }, {
            d: '2012-10-05',
            visits: 792
        }, {
            d: '2012-10-06',
            visits: 859
        }, {
            d: '2012-10-07',
            visits: 790
        }, {
            d: '2012-10-08',
            visits: 1680
        }, {
            d: '2012-10-09',
            visits: 1592
        }, {
            d: '2012-10-10',
            visits: 1420
        }, {
            d: '2012-10-11',
            visits: 882
        }, {
            d: '2012-10-12',
            visits: 889
        }, {
            d: '2012-10-13',
            visits: 819
        }, {
            d: '2012-10-14',
            visits: 849
        }, {
            d: '2012-10-15',
            visits: 870
        }, {
            d: '2012-10-16',
            visits: 1063
        }, {
            d: '2012-10-17',
            visits: 1192
        }, {
            d: '2012-10-18',
            visits: 1224
        }, {
            d: '2012-10-19',
            visits: 1329
        }, {
            d: '2012-10-20',
            visits: 1329
        }, {
            d: '2012-10-21',
            visits: 1239
        }, {
            d: '2012-10-22',
            visits: 1190
        }, {
            d: '2012-10-23',
            visits: 1312
        }, {
            d: '2012-10-24',
            visits: 1293
        }, {
            d: '2012-10-25',
            visits: 1283
        }, {
            d: '2012-10-26',
            visits: 1248
        }, {
            d: '2012-10-27',
            visits: 1323
        }, {
            d: '2012-10-28',
            visits: 1390
        }, {
            d: '2012-10-29',
            visits: 1420
        }, {
            d: '2012-10-30',
            visits: 1529
        }, {
            d: '2012-10-31',
            visits: 1892
        }, ],
        // The name of the data record attribute that contains x-visitss.
        xkey: 'd',
        // A list of names of data record attributes that contain y-visitss.
        ykeys: ['visits'],
        // Labels for the ykeys -- will be displayed when you hover over the
        // chart.
        labels: ['등록펀딩'],
        // Disables line smoothing
        smooth: false,
        resize: true
    });

    // Bar Chart
    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            device: '김진성',
            geekbench: 136
        }, {
            device: '박미현',
            geekbench: 137
        }, {
            device: '박성빈',
            geekbench: 275
        }, {
            device: '김민환',
            geekbench: 380
        }, {
            device: '이양호',
            geekbench: 655
        }, {
            device: '설승민',
            geekbench: 1571
        }],
        xkey: 'device',
        ykeys: ['geekbench'],
        labels: ['펀딩이름'],
        barRatio: 0.4,
        xLabelAngle: 35,
        hideHover: 'auto',
        resize: true
    });

});
</script>


    <!-- jQuery -->
    <script src="<c:url value="/resources/js/analysis/js/jquery.js"/>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/cas/resources/js/analysis/js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="/cas/resources/js/analysis/js/plugins/morris/raphael.min.js"></script>
    <script src="/cas/resources/js/analysis/js/plugins/morris/morris.min.js"></script>

</body>
</html>