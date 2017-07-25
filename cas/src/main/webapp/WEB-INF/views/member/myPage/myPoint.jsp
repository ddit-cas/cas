<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
			<h3 class="box" style="background-color: #0B2161;">My Point</h3>
			<div class="row">
				<br>
				<div class="table-responsive" style="text-align: center;">
					<div id="btn" style="text-align: right;">
						<a href="charge"><button type="button"
								class="charge btn btn-primary btn-sm">
								<span>충전하기</span>
							</button> </a> &nbsp;&nbsp; <a href="exchange"><button type="button"
								class="exchange btn btn-primary btn-sm">
								<span>환전하기</span>
							</button> </a>
					</div>
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
							<tr>
								<td>1</td>
								<td>5000 point</td>
								<td>2017-07-02</td>
							</tr>
							<tr>
								<td>2</td>
								<td>2000 point</td>
								<td>2017-07-10</td>
							</tr>
							<tr>
								<td>3</td>
								<td>2000 point</td>
								<td>2017-07-11</td>
							</tr>
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
							<tr>
								<td>1</td>
								<td>단편영화<책방>제작 프로젝트</td>
								<td>5000 point</td>
								<td>2017-07-02</td>
							</tr>
							<tr>
								<td>2</td>
								<td>희미해지지않게묶다, 노란리본이음팔찌2</td>
								<td>2000 point</td>
								<td>2017-07-10</td>
							</tr>
						</tbody>
					</table>
					<br>
					<h2>환전 신청 내역</h2>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>번호</th>
								<th>펀딩이름</th>
								<th>날짜</th>
								<th>환전 포인트</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="col-md-1">1</td>
								<td class="col-md-2">단편영화<책방>제작 프로젝트</td>
								<td class="col-md-5">2017-07-12</td>
								<td class="col-md-3"><i class="fa fa-inr"></i> 15,000원</td>
							</tr>
							<tr>
								<td class="col-md-1">2</td>
								<td class="col-md-2">단편영화<책방>제작 프로젝트</td>
								<td class="col-md-5">2017-07-10</td>
								<td class="col-md-3"><i class="fa fa-inr"></i> 6000원</td>
							</tr>
							<tr>
								<td class="col-md-1">3</td>
								<td class="col-md-2">단편영화<책방>제작 프로젝트</td>
								<td class="col-md-5">2017-07-08</td>
								<td class="col-md-3"><i class="fa fa-inr"></i> 3500원</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div id="btn" style="text-align: center;">
					<a href="#"><button type="button"
							class="out btn btn-primary btn-sm">
							<span>나가기</span>
						</button> </a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>