<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
	<!-- glyphicon CDN -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<style>
	#body {
		margin-top: 58px;
	}
	.signup_cas_ld {
		font-size: 24px;
		border-bottom: 1px dotted #c8c8c8;
		margin : 10px 0;
	}
</style>
	<form class="form-horizontal" action="#">
	<fieldset class="signup_cas_fs">
		<legend class="signup_cas_ld">구름 상세정보</legend>
		<div class="container">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">아이디</label>
				<div class="col-sm-6">
				    <input type="text" class="form-control" id="mem_id" name="id" value="${pointDetailMem.memId }" readonly>
				</div>
			</div>
			<c:choose>
			<c:when test="${empty pointDetailMem.memNick }">
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">이름(닉네임)</label>
				<div class="col-lg-6">
				    <input type="text" class="form-control" id="name"
						name="name" aria-label="name" value="${pointDetailMem.memName }" readonly>
				</div>
			</div>
			</c:when>
			<c:otherwise>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">이름(닉네임)</label>
				<div class="col-lg-6">
				    <input type="text" class="form-control" id="name"
						name="name" aria-label="name" value="${pointDetailMem.memName }(${pointDetailMem.memNick })" readonly>
				</div>
			</div>
			</c:otherwise>	
			</c:choose>
			<div class="form-group">
				<label class="control-label col-sm-2" for="ph">이메일</label>
				<div class="col-lg-6">
				    <input type="text" class="form-control" id="ph"
						name="Email" aria-label="ph" value="${pointDetailMem.memEmail }" readonly>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="ph">전화번호</label>
				<div class="col-lg-6">
				    <input type="text" class="form-control" id="ph"
						name="ph" aria-label="ph" value="${pointDetailMem.memHp }" readonly>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="totalCharge">총 충전금액(<i class="fa fa fa-krw"></i>)</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="totalCharge"
						value="${chargingAmount }" name="totalCharge" readonly>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="totalRefund">총 환급금액(<i class="fa fa fa-krw"></i>)</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="totalRefund"
						value="${refundAmount }" name="totalRefund" readonly>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="remainPoint">잔여 구름(<i class="fa fa fa-jsfiddle"></i>)</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="remainPoint"
						value="${pointDetailMem.memPoint }" name="remainPoint" readonly>
				</div>
			</div>
		</div>
	</fieldset>
	</form>
	<div class="row">
	<div class="col-sm-12">
		<div class="signup_cas_ld">구름 사용 내역</div>
		<div class="container">
		<div class="col-sm-11">
			<table class="table table-condensed">
				<thead>
		        	<tr>
			          	<th>#</th>
						<th>펀드명</th>   
						<th>구름사용액</th>   
						<th>투자일</th>   
		        	</tr>
			    </thead>
			    <tbody>
			        <!-- c태그 forEach 사용하여 테이블 로우 자동 생성 // 가능하면 페이징 처리도 해야 함.-->
			        <c:choose>
			    	<c:when test="${investment.size() > 0 }">
			        <c:forEach var="i" begin="${firstRowPointHistory }" end="${lastRowPointHistory }" varStatus="status">
			    	<tr>
			          <th scope="row">${status.index+1 }</th>
					  <td>${investment[i].invesEndDate }</td>
					  <fmt:parseNumber integerOnly="true" var="point" value="${investment[i].invesAmount/100 }"></fmt:parseNumber>
					  <td><i class="fa fa fa-jsfiddle"></i>&nbsp;${point }</td>
					  <td>${investment[i].invesDate }</td>
			    	</tr>
			    	</c:forEach>
			    	</c:when>
			    	<c:otherwise>
			    	<tr>
						<td colspan="4" style="text-align:center;">
							해당 내용이 없습니다.
						</td>
					</tr>
			    	</c:otherwise>
		    	</c:choose>
			    </tbody>
			</table>
			<!-- 페이지수  -->
			<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
				<div class="row">
					<nav aria-label="...">
						<ul class="pager" role="tablist">
							<li class="previous">
								<a name="tabPointHistory" href="/cas/admin/pointAnalysisDetail?${selector1 }=${minNumPointHistory-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${minNumPointHistory}" end="${maxNumPointHistory}">
							<c:choose>
							<c:when test="${indexPointHistory==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/pointAnalysisDetail?${selector1 }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/pointAnalysisDetail?${selector1 }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/pointAnalysisDetail?${selector1 }=${maxNumPointHistory+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			</div>
		</div>
	</div>	
	</div>
	<div class="row">
	<div class="col-sm-6">
		<div class="signup_cas_ld">구름 충전 내역</div>
		<div class="container">
		<div class="col-sm-5">
			<table class="table table-condensed ">
				<thead>
		        	<tr>
			          	<th>#</th>
						<th>충전액</th>   
						<th>충전날짜</th>   
		        	</tr>
			    </thead>
			    <tbody>
		    	<c:choose>
			    	<c:when test="${chargingList.size() > 0 }">
			        <c:forEach var="i" begin="${firstRowCharging }" end="${lastRowCharging }" varStatus="status">
			    	<tr>
			          <th scope="row">${status.index+1 }</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;${chargingList[i].chargingAmount }</td>
					  <td>${chargingList[i].chargingDate }</td>
			    	</tr>
			    	</c:forEach>
			    	</c:when>
			    	<c:otherwise>
			    	<tr>
						<td colspan="3" style="text-align:center;">
							해당 내용이 없습니다.
						</td>
					</tr>
			    	</c:otherwise>
		    	</c:choose>
			    </tbody>
			</table>
			 <!-- 페이지수  -->
			<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
				<div class="row">
					<nav aria-label="...">
						<ul class="pager" role="tablist">
							<li class="previous">
								<a href="/cas/admin/pointAnalysisDetail?${selector2 }=${minNumCharging-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${minNumCharging}" end="${maxNumCharging}">
							<c:choose>
							<c:when test="${indexCharging==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/pointAnalysisDetail?${selector2 }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/pointAnalysisDetail?${selector2 }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/pointAnalysisDetail?${selector2 }=${maxNumCharging+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			</div>
		</div>
	</div>
	
	<div class="col-sm-6">
		<div class="signup_cas_ld">구름 환급 내역</div>
		<div class="container">
			<div class="col-sm-5">		
			<table class="table table-condensed">
				<thead>
		        	<tr>
			          	<th>#</th>
						<th>환급액</th>   
						<th>환급날짜</th>   
		        	</tr>
			    </thead>
			    <tbody>
			       <c:choose>
			    	<c:when test="${refundList.size() > 0 }">
			        <c:forEach var="i" begin="${firstRowRefund }" end="${lastRowRefund }" varStatus="status">
			    	<tr>
			          <th scope="row">${status.index+1 }</th>
					  <td><i class="fa fa fa-krw"></i>&nbsp;${refundList[i].chargingAmount }</td>
					  <td>${refundList[i].chargingDate }</td>
			    	</tr>
			    	</c:forEach>
			    	</c:when>
			    	<c:otherwise>
			    	<tr>
						<td colspan="3" style="text-align:center;">
							해당 내용이 없습니다.
						</td>
					</tr>
			    	</c:otherwise>
		    	</c:choose>
			    </tbody>
			</table>
			<!-- 페이지수  -->
			<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
				<div class="row">
					<nav aria-label="...">
						<ul class="pager" role="tablist">
							<li class="previous">
								<a href="/cas/admin/pointAnalysisDetail?${selector3 }=${minNumRefund-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${minNumRefund}" end="${maxNumRefund}">
							<c:choose>
							<c:when test="${indexRefund==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/pointAnalysisDetail?${selector3 }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/pointAnalysisDetail?${selector3 }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/pointAnalysisDetail?${selector3 }=${maxNumRefund+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			</div>
		</div>
	</div>
	</div>
<style>
	#btnses {
		float:right;
		margin-left : 20px;
		margin-bottom: 50px;
	}
</style>
	<div class="row">	
		<input type="button" id="btnses" onclick="admin_main_go();" class="btn btn-primary" value="메인화면" />
		<input type="button" id="btnses" onclick="history.go(-1);" class="btn btn-danger" value="뒤로가기" />
	</div>
<script>
	function admin_main_go(){
		location.href="main";
	}
</script>	
</body>
