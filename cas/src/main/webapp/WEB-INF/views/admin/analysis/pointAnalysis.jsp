<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>구름관리</title>    
<body>
<script>
$(function(){
	$('li.dropdown').on('click',function(){
		$('li.dropdown').toggleClass('open');
	});
});
</script>	
    <!-- Morris Charts CSS -->
    <link href="/cas/resources/css/morris.css" rel="stylesheet">

	<!-- glyphicon CDN -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
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
                            <i class="fa fa-area-chart"></i>구름 차트
                        </li>
                        <li class="active">
                            <i class="fa fa-table"></i>구름 리스트
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
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 월별 구름 순익 그래프 </h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-line-chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
<script>
	function seachPointAnaysis(){
		document.searchPointAnalysis.action="/cas/admin/pointAnalysis";
		document.searchPointAnalysis.method="get";
		document.searchPointAnalysis.submit();
	}
</script>            
            <!-- 리스트 테이블 들어갈 자리. : 아이디(회원명),닉네임, 전화번호, 충전금액, 환급금액, 잔여 포인트 -->
			<div class="row">
			<div class="form-group" style="clear:both;">
			<label style="display:block; float:left;">회원별 구름 현황</label>
				<form name="searchPointAnalysis">
				<div class="col-sm-5" style="float:right; margin-bottom:10px;">
					<span class="col-sm-4">
				    <select id="selectbasic" name="index" class="form-control">
				      <option value="memId">아이디</option>
				      <option value="memName">이름</option>
				      <option value="memNick">닉네임</option>
				      <option value="memEmail">이메일</option>
				      <option value="memHp">연락처</option>
				    </select>
			   		</span>
				  <span class="input-group">
				    <input type="text" class="form-control" id="pointSearch" name="key" placeholder="검색할 값을 입력하세요.">
			    	<input type="hidden" name="tab" value="1">
				    <span class="input-group-btn">
				      <button class="btn btn-default" id="pointSearchBtn" onclick="seachPointAnaysis()" type="button">검색</button>
					</span>    
				  </span>
				</div>
				</form>
			</div>
			</div><!-- /.row -->
<script>
	$(function(){
		$('.rowNum').on('click',function(){
			var memId = $(this).attr('memId');
			location.href="/cas/admin/pointAnalysisDetail?memId="+memId;
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
						<th>이메일</th>
						<th>전화번호</th>
						<th>잔여 구름</th>
		        	</tr>
			      </thead>
			      <tbody>
			      <c:choose>
			      	<c:when test="${pointList.size() > 0 }">  
			        <c:forEach var="i" varStatus="status" begin="${firstRow}" end="${lastRow}">
			        <tr class='rowNum' name="memId" memId="${pointList[i].memId }">
			          <th scope="row">${status.index+1 }</th>
			          <td>${pointList[i].memId }</td>
			          <c:choose>
			          <c:when test="${empty pointList[i].memNick}">
					  	<td>${pointList[i].memName }</td>
					  </c:when>
					  <c:otherwise>
					  	<td>${pointList[i].memName }(${pointList[i].memNick })</td>
					  </c:otherwise>
					  </c:choose>
					  <td>${pointList[i].memEmail }</td>
					  <td>${pointList[i].memHp }</td>
					  <td><i class="fa fa fa-jsfiddle"></i>&nbsp;${pointList[i].memPoint }</td>
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
			    <!-- 데이터 집어넣을 곳 -->
			    <table class="hide">
			    	<tr>
						<td class="pDate">2017-01.</td>    	
						<td class="pRefund">${monthlyRefund.refundJanAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingJanAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-02.</td>    	
						<td class="pRefund">${monthlyRefund.refundFebAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingFebAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-03.</td>    	
						<td class="pRefund">${monthlyRefund.refundMarAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingMarAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-04.</td>    	
						<td class="pRefund">${monthlyRefund.refundAprAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingAprAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-05.</td>    	
						<td class="pRefund">${monthlyRefund.refundMayAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingMayAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-06.</td>    	
						<td class="pRefund">${monthlyRefund.refundJunAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingJunAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-07.</td>    	
						<td class="pRefund">${monthlyRefund.refundJulAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingJulAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-08.</td>    	
						<td class="pRefund">${monthlyRefund.refundAugAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingAugAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-09.</td>    	
						<td class="pRefund">${monthlyRefund.refundSepAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingSepAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-10.</td>    	
						<td class="pRefund">${monthlyRefund.refundOctAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingOctAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-11.</td>    	
						<td class="pRefund">${monthlyRefund.refundNovAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingNovAmount }.</td>    	
			    	</tr>
			    	<tr>
						<td class="pDate">2017-12.</td>    	
						<td class="pRefund">${monthlyRefund.refundDesAmount }.</td>    	
						<td class="pCharge">${monthlyCharging.chargingDesAmount }.</td>    	
			    	</tr>
			    </table>
			    
			 </div><!-- /.row -->
			 
			 <!-- 페이지수  -->
			<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
				<div class="row">
					<nav aria-label="...">
						<ul class="pager" role="tablist">
							<li class="previous">
								<a href="/cas/admin/pointAnalysis?${selector }=${minNum-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${minNum}" end="${maxNum}">
							<c:choose>
							<c:when test="${index==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/pointAnalysis?${selector }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/pointAnalysis?${selector }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/pointAnalysis?${selector }=${maxNum+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			 
        </div><!-- /.container-fluid -->
    </div><!-- /#page-wrapper -->

<script>
$(function() {
	var pntDate = $('.pDate').text().split('.');
	var pntRef = $('.pRefund').text().split('.');
	var pntCha = $('.pCharge').text().split('.');
    
    var pntArray = new Array();
	for(var i=0;i<pntDate.length-1;i++){
		var pntData = new Object();
		pntData.period = pntDate[i];
		pntData.refund = pntRef[i];
		pntData.charge = pntCha[i];
		pntArray.push(pntData)
	}
	
    // Line Chart
    Morris.Line({
        element: 'morris-line-chart',
        data: pntArray,
        xkey: 'period',
        ykeys: ['refund','charge'],
        labels: ['환급금액','충전금액'],
        color :['red','blue'],
        pointSize: 2,
        hideHover: 'auto',
        smooth : true,
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