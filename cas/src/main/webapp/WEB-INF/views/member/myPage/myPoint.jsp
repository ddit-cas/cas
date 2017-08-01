<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
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
						<a href="/cas/member/chargeForm"><button type="button"
								class="charge btn btn-primary btn-sm">
								<span>충전하기</span>
							</button> 
							</a>
					</div>
					<h2>현재 포인트</h2>
					<fmt:parseNumber integerOnly="true" var="point" value="${loginUser.memPoint/100 }"></fmt:parseNumber>
					<p><input style="text-align: right;" type="text" readonly="readonly" value="${point }"> 구름</p>
					<h2>충전 내역</h2>
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>번호</th>
								<th>충전금액</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${chargeList}" var="charge" varStatus="index">
							<tr>
								<td>${index.index+1 }</td>
								<td>${charge.chargingAmount } point</td>
								<td>${charge.chargingDate }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<br>
					<h2>포인트 사용 내역</h2>
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>번호</th>
								<th>펀딩이름</th>
								<th>사용 포인트</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${investList }" var="investment" varStatus="index">
							<tr>
								<td>${index.index }</td>
								<td>${investment.invesEndDate }</td>
						<fmt:parseNumber integerOnly="true" var="point" value="${investment.invesAmount/100 }"></fmt:parseNumber>
								<td>${point } 구름</td>
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