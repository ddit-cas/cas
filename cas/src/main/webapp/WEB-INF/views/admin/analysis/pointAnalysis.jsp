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
                       구름 관리
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-area-chart"></i><a href="#">구름 차트</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-table"></i> <a href="#">구름 리스트</a>
                        </li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Morris Charts -->
            <div class="row">
            	
                <div class="col-lg-12">
                    <h2 class="page-header"><i class="fa fa-jsfiddle">&nbsp;&nbsp;구름 결제 관리</i></h2>
                    <p class="lead">구름의 순익과 각 회원별 구름 정보를 확인할 수 있습니다.</p>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 구름 순익 그래프 </h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-area-chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            
            <!-- 리스트 테이블 들어갈 자리. : 아이디(회원명),닉네임, 전화번호, 충전금액, 환급금액, 잔여 포인트 -->
			<div class="row">
			<div class="form-group" style="clear:both;">
			<label style="display:block; float:left;">회원별 구름 현황</label>
				<div class="col-sm-5" style="float:right; margin-bottom:10px;">
					<span class="col-sm-4">
				    <select id="selectbasic" name="selectbasic" class="form-control">
				      <option value="1">아이디</option>
				      <option value="2">이름</option>
				      <option value="3">닉네임</option>
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
<script>
	$(function(){
		$('tr').on('click',function(){
			location.href="pointAnalysisDetail";
		});
	});
</script>			
			<div class="row">
			    <table class="table table-hover">
	      		  <thead>
		        	<tr>
			          	<th>#</th>
						<th>아이디</th>   
						<th>회원명(닉네임)</th>   
						<th>전화번호</th>
						<th>충전금액</th>
						<th>환급금액</th>
						<th>잔여 구름</th>
		        	</tr>
			      </thead>
			      <tbody>
			        <!-- c태그 forEach 사용하여 테이블 로우 자동 생성 // 가능하면 페이징 처리도 해야 함.-->
			        <tr>
			          <th scope="row">1</th>
			          <td><a href="#">pink212</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>박미현(목대여신)</td>
					  <td>010-4545-8989</td>
					  <td><i class="fa fa fa-krw"></i><span class="counter">&nbsp;58,000</span></td>
					  <td><i class="fa fa fa-krw"></i>&nbsp;150,000</td>
					  <td><i class="fa fa fa-jsfiddle"></i>&nbsp;150,000</td>
			        </tr>
			        <tr>
			          <th scope="row">2</th>
			          <td><a href="#">bbind</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>박성빈(대한민국3대빈)</td>
					  <td>010-4545-8989</td>
					  <td><i class="fa fa fa-krw"></i>&nbsp;<span class="counter">58,000</span></td>
					  <td><i class="fa fa fa-krw"></i>&nbsp;150,000</td>
					  <td><i class="fa fa fa-jsfiddle"></i>&nbsp;150,000</td>
			        </tr>
			        <tr>
			          <th scope="row">3</th>
			          <td><a href="#">seol</a></td> <!-- 게시판 url 적용해야함. -->
					  <td>설승민(야잘알)</td>
					  <td>010-4545-8989</td>
					  <td><i class="fa fa fa-krw"></i><span class="counter">&nbsp;58,000</span></td>
					  <td><i class="fa fa fa-krw"></i>&nbsp;150,000</td>
					  <td><i class="fa fa fa-jsfiddle"></i>&nbsp;150,000</td>
			        </tr>
			      </tbody>
			    </table>
			    <!-- 데이터 집어넣을 곳 -->
			    <table class="hide">
			    	<tr>
						<td class="pData">2017-07-01.</td>    	
						<td class="pRefund">0.</td>    	
						<td class="pCharge">3000000.</td>    	
			    	</tr>
			    	<tr>
						<td class="pData">2017-07-01.</td>    	
						<td class="pRefund">0.</td>    	
						<td class="pCharge">3000000.</td>    	
			    	</tr>
			    	<tr>
						<td class="pData">2017-07-01.</td>    	
						<td class="pRefund">0.</td>    	
						<td class="pCharge">3000000.</td>    	
			    	</tr>
			    	<tr>
						<td class="pData">2017-07-01.</td>    	
						<td class="pRefund">0.</td>    	
						<td class="pCharge">3000000.</td>    	
			    	</tr>
			    </table>
			    
			 </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div><!-- /#page-wrapper -->

<script>
$(function() {
	var pntData = $('.pData').text().split('.');
	var pntRef = $('.pRefund').text().split('.');
	var pntCha = $('.pCharge').text().split('.');
    
    var pntArray = new Array();
	for(var i=0;i<memDate.length-1;i++){
		var pntData = new Object();
		pntData.period = pntData[i];
		pntData.refund = pntRef[i];
		pntData.charge = pntCha[i];
		pntArray.push(pntData)
	}
	
    // Area Chart
    Morris.Area({
        element: 'morris-area-chart',
        data:/* pntArray, */ 
        	[{
            period: '2014-01-01',
            refund: null,
            charge: 2666
        }, {
            period: '2014 Q2',
            refund: 2294,
            charge: 2778
        }, {
            period: '2014 Q3',
            refund: 1969,
            charge: 4912
        }, {
            period: '2014 Q4',
            refund: 3597,
            charge: 3767
        }, {
            period: '2015-01-01',
            refund: 1914,
            charge: 6810,
        }, {
            period: '2015 Q2',
            charge: 5670,
            refund: 4293,
        }, {
            period: '2015 Q3',
            charge: 4820,
            refund: 3795,
        }, {
            period: '2015 Q4',
            charge: 15073,
            refund: 5967,
        }, {
            period: '2016 Q1',
            charge: 10687,
            refund: 4460,
        }, {
            period: '2016 Q2',
            charge: 6432,
            refund: 5713,
        }, {
            period: '2016 Q3',
            charge: 5432,
            refund: 5713,
        }, {
            period: '2016 Q4',
            charge: 4432,
            refund: 7713,
        }],
        xkey: 'period',
        ykeys: ['refund','charge'],
        labels: ['환급금액','충전금액'],
        pointSize: 2,
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