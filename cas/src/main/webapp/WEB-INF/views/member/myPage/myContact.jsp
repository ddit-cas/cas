<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<body>
	<style>
#body {
	margin-top: 58px;
}

.company-cont {
	width: 960px;
	text-align: center;
}
</style>

	<div id="body">
		<div class="container">
			<div class="row">
				<h3>1:1 문의</h3>
				<hr>
				<div class="col-sm-12">
					<table class="table table-hover"
						style="width: 960px; height:auto; margin: 0 auto;">
						<thead>
							<tr>
								<th style="text-align: center; font-size: 15px; width: 30%;">제목</th>
								<th style="text-align: center; font-size: 15px; width: 10%;">작성자</th>
								<th style="text-align: center; font-size: 15px; width: 15%;">작성시간</th>
							</tr>
						</thead>
						<tbody style="text-align: center; font-size: 15px;">
						<c:forEach var="i" begin="0" end="10">
							<tr>
								<td><a href="#">제목${i}</a></td>
								<td><a href="#">작성자${i}</a></td>
								<td>작성시간${i}</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!--//company-cont-->
		<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
			<div class="row" style="margin: 0 0 auto;">
				<nav aria-label="...">
					<ul class="pager" role="tablist">
						<li class="previous" onclick="goTo(1);"><a href="#"><span
								aria-hidden="true">←</span> Previous</a></li>
						<li class="active" id="first"><a aria-controls="tab1"
							data-toggle="tab" href="#tab1" role="tab">1</a></li>
						<li><a aria-controls="tab2" data-toggle="tab" href="#tab2"
							role="tab">2</a></li>
						<li><a aria-controls="tab3" data-toggle="tab" href="#tab3"
							role="tab">3</a></li>
						<li class="next" onclick="goTo(2);"><a href="#">Next <span
								aria-hidden="true">→</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</body>
