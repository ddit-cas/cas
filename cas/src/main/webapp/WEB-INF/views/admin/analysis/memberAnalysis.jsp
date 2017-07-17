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
                      회원 관리
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-bar-chart-o"></i><a href="#">회원 카운트 차트</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-table"></i> <a href="#">회원 리스트</a>
                        </li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Morris Charts -->
            <div class="row">
            	
                <div class="col-lg-12">
                	
                    <h2 class="page-header"><i class="fa fa-user-circle-o">&nbsp;&nbsp;회원 등록 현황</i></h2>
                    <p class="lead">회원의 등록 정보를 확인할 수 있습니다.</p>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
            	<div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 회원 등록 추이</h3>
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
            <!-- /.row -->
            
            <!-- 리스트 테이블 들어갈 자리. : 금일 펀딩금액, 금월 펀딩 누적액, 총 누적액 월별 펀딩액 평균 -->
			
			<div class="row">
            <div class="col-lg-12">
			<div class="row">
			<div class="form-group" style="clear:both;">
			<label style="display:block; float:left; vertical-align:middle;">&nbsp;&nbsp;&nbsp;&nbsp;회원 현황</label>
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
			    <table class="table table-hover">
	      		  <thead>
		        	<tr>
			          	<th>#</th>
						<th>아이디</th>   
						<th>닉네임</th>   
						<th>회원명</th>   
						<th>전화번호</th>
						<th>등록날짜</th>
						<th>경고횟수</th>
		        	</tr>
			      </thead>
			      <tbody>
			        <!-- c태그 forEach 사용하여 테이블 로우 자동 생성 // 가능하면 페이징 처리도 해야 함.-->
			        <tr>
			          <th scope="row">1</th>
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td>0</td>
			        </tr>
			        <tr>
			          <th scope="row">2</th>
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td>1</td>
			        </tr>
			        <tr>
			          <th scope="row">3</th>
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td>2</td>
			        </tr>
			        <tr>
			          <th scope="row">4</th>
					  <td>pink212</td>
					  <td>목대여신</td>
					  <td>박미현</td>
					  <td>010-4545-8989</td>
					  <td>2017-07-14</td>
					  <td>정지계정</td>
			        </tr>
			      </tbody>
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
        labels: ['회원수'],
        // Disables line smoothing
        smooth: false,
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