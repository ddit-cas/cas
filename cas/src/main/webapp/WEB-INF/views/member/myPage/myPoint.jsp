<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
<!-- glyphicon CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
th {
	text-align: center;
}
</style>
	<div id="body">
		<div class="container">
		<div class="company-cont" style="height: auto; width: 960px;">
			<h3 class="box" style="background-color: ;">My Point</h3>
			<div class="row">
				<br>
				<div class="table-responsive" style="text-align: center;">
					<div id="btn" style="text-align: right;">
						<a href="/cas/member/chargeForm">
						<button type="button" class="charge btn btn-primary btn-sm">
							<span>충전하기</span>
						</button> 
						</a>
						<a href="/cas/member/exchange">
						<button type="button" class="charge btn btn-danger btn-sm">
							<span>환전하기</span>
						</button> 
						</a>
					</div>
					
<style>
	#refund {
		color : red;
	}
	#charge {
		color : blue;
	}
</style>					
					
					<h2>현재 구름</h2>
					<fmt:parseNumber integerOnly="true" var="point" value="${loginUser.memPoint/100 }"></fmt:parseNumber>
					<p><input style="text-align: right;" type="text" readonly="readonly" value="${point }">&nbsp;(<i class="fa fa fa-jsfiddle"></i>)</p>
					<h2>충전 및 환전 내역</h2>
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>번호</th>
								<th>충전 및 환전 금액</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${chargeList}" var="charge" varStatus="index">
							<tr>
								<td>${index.index+1 }</td>
								<c:choose>
								<c:when test="${charge.chargingAmount lt 0 }">
								<td id="refund"><i class="fa fa fa-krw"></i>&nbsp;${charge.chargingAmount }</td>
								</c:when>
								<c:otherwise>
								<td id="charge"><i class="fa fa fa-krw"></i>&nbsp;${charge.chargingAmount }</td>
								</c:otherwise>
								</c:choose>
								<td>${charge.chargingDate }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<br>
					<h2>구름 사용 내역</h2>
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>번호</th>
								<th>펀딩이름</th>
								<th>구름사용액</th>
								<th>투자일</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${investList }" var="investment" varStatus="index">
							<tr>
								<td>${index.index+1 }</td>
								<td>${investment.invesEndDate }</td>
						<fmt:parseNumber integerOnly="true" var="point" value="${investment.invesAmount/100 }"></fmt:parseNumber>
								<td><i class="fa fa fa-jsfiddle"></i>&nbsp;${point }</td>
								<td>${investment.invesDate }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<br>
				</div>

			</div>
		</div>
	</div>

</body>
</html>