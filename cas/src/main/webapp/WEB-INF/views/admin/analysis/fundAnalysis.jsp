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
                            <i class="fa fa-table"></i> <a href="#">금액 리스트</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-pie-chart"></i> <a href="#">카운트 차트</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-list-alt"></i> <a href="#">카운트 리스트</a>
                        </li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Morris Charts -->
            <div class="row">
            	
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-credit-card">&nbsp;&nbsp;크라우드 펀드 결제 관리</i></h2>
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
            </div>
            <!-- /.row -->
            
            <!-- 리스트 테이블 들어갈 자리. : 금일 펀딩금액, 금월 펀딩 누적액, 총 누적액 월별 펀딩액 평균 -->
			
            <div class="col-lg-12">
			<div class="row">
			<div class="form-group" style="clear:both;">
			<label style="display:block; float:left; vertical-align:middle;">&nbsp;&nbsp;&nbsp;&nbsp;크라우드 펀딩 현황</label>
				<div class="col-sm-5" style="float:right; margin-bottom:10px;">
					<span class="col-sm-4">
				    <select id="selectbasic" name="selectbasic" class="form-control">
				      <option value="1">아이디</option>
				      <option value="2">이름</option>
				      <option value="3" selected>닉네임</option>
				      <option value="4">연락처</option>
				    </select>
			   		</span>
				  <span class="input-group">
				    <input type="text" class="form-control" id="pointSearch" name="pointSearch" placeholder="검색할 값을 입력하세요.">
				    <span class="input-group-btn">
				      <button class="btn btn-default" id="pointSearchBtn" type="button">검색</button>
					    <span class="msgCheckId"></span>
					</span>    
				  </span>
				</div>
			</div>
			</div><!-- /.row -->
			<div class="row">
			    <table class="table table-hover">
	      		  <thead>
		        	<tr>
			          	<th>#</th>
				        <th>펀딩명</th>   
						<th>아이디</th>   
						<th>닉네임</th>   
						<th>회원명</th>   
						<th>전화번호</th>
						<th>등록날짜</th>
						<th>모집금액(<i class="fa fa fa-krw"></i>)</th>
						<th>목표금액(<i class="fa fa fa-krw"></i>)</th>
		        	</tr>
			      </thead>
			      <tbody>
			        <!-- c태그 forEach 사용하여 테이블 로우 자동 생성 // 가능하면 페이징 처리도 해야 함.-->
			        <tr>
			          <th scope="row">1</th>
			          <td class="fundName"><a href="#">사랑을 나눠요.</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td class="fundCurrentAmount">60000 </td>
					  <td>150000</td>
			        </tr>
			        <tr>
			          <th scope="row">2</th>
			          <td class="fundName"><a href="#">열정의 불태우다.</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td class="fundCurrentAmount">5800 </td>
					  <td>150000</td>
			        </tr>
			        <tr>
			          <th scope="row">3</th>
			          <td class="fundName"><a href="#">청년 창업 도와주세요.</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td class="fundCurrentAmount">40000 </td>
					  <td>150,000</td>
			        </tr>
			        <tr>
			          <th scope="row">4</th>
			          <td class="fundName"><a href="#">도망가야지.</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td class="fundCurrentAmount">27000 </td>
					  <td>150,000</td>
			        </tr>
			        <tr>
			          <th scope="row">5</th>
			          <td class="fundName"><a href="#">외로워요.</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td class="fundCurrentAmount">30000 </td>
					  <td>150,000</td>
			        </tr>
			        <tr>
			          <th scope="row">6</th>
			          <td class="fundName"><a href="#">나무를심자.</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td class="fundCurrentAmount">150000 </td>
					  <td>150,000</td>
			        </tr>
			        <tr>
			          <th scope="row">7</th>
			          <td class="fundName"><a href="#">지구사랑.</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td class="fundCurrentAmount">20000 </td>
					  <td>150,000</td>
			        </tr>
			        <tr>
			          <th scope="row">8</th>
			          <td class="fundName"><a href="#">양호짱.</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td class="fundCurrentAmount">15000 </td>
					  <td>150,000</td>
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
							<td id="totalFund"></td> <!-- 게시판 url 적용해야함. -->
							<td id="completeFund">1910000</td>
							<td id="failFund">1001231</td>
							<td id="cancelFund">801231</td>
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
					<!-- Line chart 데이터 등록 후 데이터 집어넣어야 함.  -->
					<table class="hide">
						<tr>
							<td class="fundDate">2017-07-01.</td>
							<td class="fundEntroll">807.</td>
						</tr>
						<tr>
							<td class="fundDate">2017-07-02.</td>
							<td class="fundEntroll">607.</td>
						</tr>
						<tr>
							<td class="fundDate">2017-07-03.</td>
							<td class="fundEntroll">1107.</td>
						</tr>
						<tr>
							<td class="fundDate">2017-07-04.</td>
							<td class="fundEntroll">800.</td>
						</tr>
						<tr>
							<td class="fundDate">2017-07-05.</td>
							<td class="fundEntroll">500.</td>
						</tr>
						<tr>
							<td class="fundDate">2017-07-06.</td>
							<td class="fundEntroll">400.</td>
						</tr>
						<tr>
							<td class="fundDate">2017-07-07.</td>
							<td class="fundEntroll">2000.</td>
						</tr>
						
					</table>		
                </div>
                
            </div>
            <!-- /.row -->
			
        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

<script>
$(function() {
	var ls = "목표달성펀딩";
	var lf = "달성실패펀딩";
	var lc = "중간취소펀딩";
	var fs = $('#completeFund').text();
	var ff = $('#failFund').text();
	var fc = $('#cancelFund').text();
	
	var ft = Number(fs)+Number(ff)+Number(fc);
	alert(ft);
    $('td#totalFund').text(ft);
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
	
    
 	// Chart data records -- each entry in this array corresponds to a point on
    // the chart.
    var fDate = $('.fundDate').text().split('.');
    var fEntroll = $('.fundEntroll').text().split('.');
    
    var LineChartArray = new Array();
	for(var i=0;i<fDate.length-1;i++){
		var LineChartData = new Object();
		LineChartData.d = fDate[i];
		LineChartData.register = fEntroll[i];
		LineChartArray.push(LineChartData)
	}
    
    // Line Chart
    Morris.Line({
        // ID of the element in which to draw the chart.
        element: 'morris-line-chart',
		// dataType is json.
        data: LineChartArray,
        // The name of the data record attribute that contains x-visitss.
        xkey: 'd',
        // A list of names of data record attributes that contain y-visitss.
        ykeys: ['register'],
        // Labels for the ykeys -- will be displayed when you hover over the
        // chart.
        labels: ['등록펀딩'],
        // Disables line smoothing
        smooth: false,
        resize: true
    });

    var fundName = $('.fundName').text().split(".");
    var fundCurrentAmount=$('.fundCurrentAmount').text().split(" ");
	
	var jsonArray = new Array();
	for(var i=0;i<fundName.length-1;i++){
		var jsonData = new Object();
		jsonData.name = fundName[i];
		jsonData.amount = fundCurrentAmount[i];
		jsonArray.push(jsonData)
	}
    
    // Bar Chart
    Morris.Bar({
        element: 'morris-bar-chart',
        
        data: jsonArray,
        
        xkey: 'name',
        ykeys: ['amount'],
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