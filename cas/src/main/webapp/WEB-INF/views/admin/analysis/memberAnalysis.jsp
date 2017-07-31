<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>회원관리</title>    
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
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            
<script>
	function memberSearch(){
		document.searchMemberAnalysis.action="/cas/admin/memberAnalysis";
		document.searchMemberAnalysis.method="get";
		document.searchMemberAnalysis.submit();
	}
</script>            
<style>
	tr {
		cursor: pointer;
	}
</style>			
			<div class="row">
            <div class="col-lg-12">
			<div class="row">
			<div class="form-group" style="clear:both;">
			<label style="display:block; float:left; vertical-align:middle;">&nbsp;&nbsp;&nbsp;&nbsp;회원 현황</label>
			<form name="searchMemberAnalysis">	
				<div class="col-sm-5" style="float:right; margin-bottom:10px;">
					<span class="col-sm-4">
				    <select id="selectbasic" name="index" class="form-control">
				      <option value="memId" selected>아이디</option>
				      <option value="memName">이름</option>
				      <option value="memNick">닉네임</option>
				      <option value="memHp">연락처</option>
				    </select>
			   		</span>
				  <span class="input-group">
				    <input type="text" class="form-control" name="key" placeholder="검색할 값을 입력하세요.">
				    <span class="input-group-btn">
				      <button class="btn btn-default" onclick="memberSearch();" type="button">검색</button>
					</span>    
				  </span>
				</div>
			</form>	
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
		        	</tr>
			      </thead>
			      <tbody>
<script>
	$(function(){
		$('.rowNum').on('click',function(){
			var memId = $(this).attr('memId');
			location.href="/cas/admin/memberDetail?searchRow="+memId;
		});
	});
</script>			      
		        <!-- c태그 forEach 사용하여 테이블 로우 자동 생성 // 가능하면 페이징 처리도 해야 함.-->
		         <c:choose>
					<c:when test="${memList.size() > 0 }">				
			        <c:forEach var="i" varStatus="status" begin="${firstRow}" end="${lastRow}">
			        <tr class="rowNum" memId="${memList[i].memId }">
			          <th scope="row">${status.index+1 }</th>
					  <td>${memList[i].memId }</td>
					  <td>${memList[i].memNick }</td>
					  <td>${memList[i].memName }</td>
					  <td>${memList[i].memHp }</td>
					  <td>${memList[i].memSginup_date }</td>
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
			    
			    <!-- 데이터 넣을 곳 -->
			    <table class="hide">
			    <c:forEach items="${memCount }" var="memCount">
			    	<tr>
			    		<td class="mDate">${memCount.countMonthly }.</td>
			    		<td class="mRegister">${memCount.memCount }.</td>
			    	</tr>
			    </c:forEach>	
			    </table>
			 </div>
			 </div> 
            <!-- /.row -->
            <!-- 페이지수  -->
			<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
				<div class="row">
					<nav aria-label="...">
						<ul class="pager" role="tablist">
							<li class="previous">
								<a href="/cas/admin/memberAnalysis?${selector }=${minNum-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${minNum}" end="${maxNum}">
							<c:choose>
							<c:when test="${index==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/memberAnalysis?${selector }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/memberAnalysis?${selector }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/memberAnalysis?${selector }=${maxNum+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

<script>
$(function() {
	
	var memDate = $('.mDate').text().split('.');
	var memReg = $('.mRegister').text().split('.');
    
    var memArray = new Array();
	for(var i=0;i<memDate.length-1;i++){
		var memData = new Object();
		memData.d = memDate[i];
		memData.register = memReg[i];
		memArray.push(memData)
	}
	
    // Line Chart
    Morris.Line({
        // ID of the element in which to draw the chart.
        element: 'morris-line-chart',
        // Chart data records -- each entry in this array corresponds to a point on
        // the chart.
        data: memArray,
        // The name of the data record attribute that contains x-visitss.
        xkey: 'd',
        // A list of names of data record attributes that contain y-visitss.
        ykeys: ['register'],
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