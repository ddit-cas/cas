<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>크라우드 펀드 관리</title>    
<body>

    <!-- Morris Charts CSS -->
    <link href="/cas/resources/css/morris.css" rel="stylesheet">

	<!-- glyphicon CDN -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
$(function(){
	$('li.dropdown').on('click',function(){
		$('li.dropdown').toggleClass('open');
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
                            <i class="fa fa-bar-chart-o"></i>금액 차트
                        </li>
                        <li class="active">
                            <i class="fa fa-table"></i>금액 리스트
                        </li>
                        <li class="active">
                            <i class="fa fa-pie-chart"></i>카운트 차트
                        </li>
                        <li class="active">
                            <i class="fa fa-list-alt"></i>카운트 리스트
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
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            
            <!-- 리스트 테이블 들어갈 자리. : 금일 펀딩금액, 금월 펀딩 누적액, 총 누적액 월별 펀딩액 평균 -->
<script>
	function seachFundAnalysis(){
			document.searchFundAnalysis.action="/cas/admin/fundAnalysis";
			document.searchFundAnalysis.method="get";
			document.searchFundAnalysis.submit();
	}
</script>			
            <div class="col-lg-12">
			<div class="row">
			<div class="form-group" style="clear:both;">
			<label style="display:block; float:left; vertical-align:middle;">&nbsp;&nbsp;&nbsp;&nbsp;크라우드 펀딩 현황</label>
				<form name="searchFundAnalysis">
				<div class="col-sm-5" style="float:right; margin-bottom:10px;">
					<span class="col-sm-4">
				    <select name="searchFundAnalysis1" class="form-control">
				      <option value="contentTitle">펀딩명</option>
				      <option value="contentWriter" selected>아이디</option>
				      <option value="contentRegisDate">등록날짜</option>
				    </select>
			   		</span>
				  <span class="input-group">
				    <input type="text" class="form-control" name="searchFundAnalysis2" placeholder="검색할 값을 입력하세요.">
				    <span class="input-group-btn">
				      <button class="btn btn-default" id="fundSearchBtn" type="button" onclick="seachFundAnalysis()">검색</button>
					</span>    
				  </span>
				</div>
				</form>
			</div>
			</div><!-- /.row -->
			
			<div class="row">
			    <table class="table table-hover">
	      		  <thead>
		        	<tr>
			          	<th>#</th>
				        <th>펀딩명</th>   
						<th>아이디</th>   
						<th>등록날짜</th>
						<th>모집금액(<i class="fa fa fa-krw"></i>)</th>
						<th>목표금액(<i class="fa fa fa-krw"></i>)</th>
		        	</tr>
			      </thead>
<script>
$(function(){
	$('.fundRow').on('click',function(){
		var contentNum = $(this).attr('contentNum');
		alert(contentNum);
		location.href="/cas/fundDetail?contentNum="+contentNum;
	});
});	
</script>			      
			      <tbody>
			      <c:choose>
					<c:when test="${fundList.size() > 0 }">				
			        <c:forEach var="i" varStatus="status" begin="${firstRow}" end="${lastRow}">
			        <tr class="fundRow" contentNum="${fundList[i].contentNum }">
			          <th scope="row">${status.index+1 }</th>
			          <td class="fundName">${fundList[i].contentTitle }.</td> <!-- 게시판 url 적용해야함. -->
					  <td>${fundList[i].contentWriter }</td>
					  <td>${fundList[i].contentRegisDate }</td>
					  <td class="fundCurrentAmount">${fundList[i].fundingPresentAmount } </td>
					  <td>${fundList[i].fundingTargetAmount }</td>
					  <td class="hide">${fundList[i].contentNum }</td>
			        </tr>
			       </c:forEach>
			       </c:when>
			       <c:otherwise>
					<tr>
						<td colspan="6" style="text-align:center;">
							해당 내용이 없습니다.
						</td>
					</tr>
			       </c:otherwise>
			      </c:choose>
			      </tbody>
			    </table>
			 </div>
			 </div> 
			<!-- 페이지수  -->
			<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
				<div class="row">
					<nav aria-label="...">
						<ul class="pager" role="tablist">
							<li class="previous">
								<a href="/cas/admin/fundAnalysis?${selector }=${minNum-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${minNum}" end="${maxNum}">
							<c:choose>
							<c:when test="${index==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/fundAnalysis?${selector }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/fundAnalysis?${selector }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/fundAnalysis?${selector }=${maxNum+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
<style>
	.center {
		text-align: center;
	}
</style>			
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
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 일별 펀딩 등록수</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-line-chart"></div>
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
							<th>종료된 총 펀딩</th>   
							<th>목표 달성</th>
							<th>달성 실패</th>
							<th>펀딩 취소</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="totalFund" class="center"></td> <!-- 게시판 url 적용해야함. -->
							<td id="completeFund" class="center">${fundCount.success }</td>
							<td id="failFund" class="center">${fundCount.failed }</td>
							<td id="cancelFund" class="center">${fundCount.cancel }</td>
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
								<td class="center">${allFundCount }</td> <!-- 게시판 url 적용해야함. -->
								<td class="center">${lastMonthFundCount }</td>
								<td class="center">${monthFundCount }</td>
								<td class="center">${toDateFundCount }</td>
								<td class="center">${monthAvg }</td>
							</tr>
						</tbody>
					</table>
					<!-- Line chart 데이터 등록 후 데이터 집어넣어야 함.  -->
					<table class="hide">
					<c:forEach items="${todayFundCount }" var="dayCount">	
						<tr>
							<td class="fundDate">${dayCount.contentRegisDate }.</td>
							<td class="fundEntroll">${dayCount.contentCount }.</td>
						</tr>
					</c:forEach>
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
        labels: ['모금액(원)'],
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