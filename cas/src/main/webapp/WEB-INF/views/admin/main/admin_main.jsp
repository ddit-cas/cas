<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>관리자 메인</title>
<body>
<!-- glyphicon CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
	function memberSearch(){
		document.searchMember.action="/cas/admin/main";
		document.searchMember.method="get";
		document.searchMember.submit();
	}
	function fundSearch(){
		document.searchFund.action="/cas/admin/main";
		document.searchFund.method="get";
		document.searchFund.submit();	
	}
</script>	
<div class="wrapContent">
	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 가입 회원 목록</h3>
			</div>
			<div class="panel-body">
	
			<form name="searchMember">	
				<div class="col-sm-5" style="float:right; margin-bottom:10px;">
					<span class="col-sm-4">
				    <select id="selectbasic" name="memIndex" class="form-control">
				      <option value="memId" selected>아이디</option>
				      <option value="memName">이름</option>
				      <option value="memNick">닉네임</option>
				      <option value="memHp">연락처</option>
				    </select>
			   		</span>
				  <span class="input-group">
				    <input type="text" class="form-control" name="memKey" placeholder="검색할 값을 입력하세요.">
				    <span class="input-group-btn">
				      <button class="btn btn-default" onclick="memberSearch();" type="button">검색</button>
					</span>    
				  </span>
				</div>
			</form>		
			<table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>아이디</th>
						<th>회원명</th>
						<th>닉네임</th>
						<th>연락처</th>
						<th style="text-align: center;">주소</th>
						<th>우편번호</th>
					</tr>
				</thead>
<script>
	$(function(){
		$('.member').on('click',function(){
			var memId = $(this).attr('memId');
			location.href = '/cas/admin/memberDetail?searchRow='+memId;
		});
		$('.fund').on('click',function(){
			var fundContentNum = $(this).attr('fundContentNum');
			location.href = "/cas/fundDetail?contentNum="+fundContentNum;
		});
		$('.free').on('click',function(){
			var freeContentNum = $(this).attr('freeContentNum');
			location.href = "/cas/freeboardDetail?contentNum="+freeContentNum;
		});
		$('.pro').on('click',function(){
			var proContentNum = $(this).attr('proContentNum');
			location.href = "/cas/promotionDetail?contentNum="+proContentNum;
		});
		$('.ucc').on('click',function(){
			var uccContentNum = $(this).attr('uccContentNum');
			location.href = "/cas/uccDetail?contentNum="+uccContentNum;
		});
	});
</script>				
				<tbody>
				  <c:choose>
					<c:when test="${memList.size() > 0 }">
					<c:forEach var="i" begin="${memFirstRow }" end="${memLastRow }" varStatus="status">
					<tr class="member" memId = "${memList[i].memId }">
						<th scope="row">${status.index+1 }</th>
						<td>${memList[i].memId }</td>
						<td>${memList[i].memName }</td>
						<td>${memList[i].memNick }</td>
						<td>${memList[i].memHp }</td>
						<td>${memList[i].memAddr1 } &nbsp; ${memList[i].memAddr2 }</td>
						<td>${memList[i].memMailnumber }</td>
					</tr>
					</c:forEach>
					</c:when>
			       <c:otherwise>
					<tr>
						<td colspan="7" style="text-align:center;">
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
								<a href="/cas/admin/main?${memSelector }=${memMinNum-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${memMinNum}" end="${memMaxNum}">
							<c:choose>
							<c:when test="${memIndex==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/main?${memSelector }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/main?${memSelector }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/main?${memSelector }=${memMaxNum+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div><!-- 페이지 끝 -->
			</div>
		</div>
	</div>


	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 펀딩 등록 현황</h3>
			</div>
			<div class="panel-body">
			<form name="searchFund">	
				<div class="col-sm-5" style="float:right; margin-bottom:10px;">
					<span class="col-sm-4">
				    <select name="fundIndex" class="form-control">
				      <option value="contentTitle">펀딩명</option>
				      <option value="contentWriter" selected>아이디</option>
				      <option value="contentRegisDate">등록날짜</option>
				    </select>
			   		</span>
				  <span class="input-group">
				    <input type="text" class="form-control" name="fundKey" placeholder="검색할 값을 입력하세요.">
				    <span class="input-group-btn">
				      <button class="btn btn-default" onclick="fundSearch();" type="button">검색</button>
					</span>    
				  </span>
				</div>
			</form>	
			<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>제목</th>
					<th>회원아이디</th>
					<th>모집금액</th>
					<th>목표금액</th>
					<th>등록날짜</th>
				</tr>
			</thead>
			<tbody>
			<c:choose>
				<c:when test="${fundList.size()>0 }">
				<c:forEach var="i" begin="${fundFirstRow }" end="${fundLastRow }" varStatus="status">
				<tr class="fund" fundContentNum="${fundList[i].contentNum }">
					<th scope="row">${status.index+1 }</th>
					<td>${fundList[i].contentTitle }</td>
					<td>${fundList[i].contentWriter }</td>
					<td>${fundList[i].fundingPresentAmount }</td>
					<td>${fundList[i].fundingTargetAmount }</td>
					<td>${fundList[i].contentRegisDate }</td>
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
			<!-- 페이지수  -->
			<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
				<div class="row">
					<nav aria-label="...">
						<ul class="pager" role="tablist">
							<li class="previous">
								<a href="/cas/admin/main?${fundSelector }=${fundMinNum-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${fundMinNum}" end="${fundMaxNum}">
							<c:choose>
							<c:when test="${fundIndex==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/main?${fundSelector }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/main?${fundSelector }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/main?${fundSelector }=${fundMaxNum+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div><!-- 페이지 끝 -->
			</div>
		</div>
	</div>
	
	<div class="col-lg-6">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 최근 자유게시판 게시글</h3>
			</div>
			<div class="panel-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>제목</th>
						<th>아이디</th>
						<th>등록날짜</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${freeList.size()>0 }">
					<c:forEach var="i" begin="${freeFirstRow }" end="${freeLastRow }" varStatus="status">
					<tr class="free" freeContentNum="${freeList[i].contentNum }">
						<th scope="row">${status.index+1 }</th>
						<td>${freeList[i].contentTitle }</td>
						<td>${freeList[i].contentWriter }</td>
						<td>${freeList[i].contentRegisDate }</td>
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
								<a href="/cas/admin/main?${freeSelector }=${freeMinNum-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${freeMinNum}" end="${freeMaxNum}">
							<c:choose>
							<c:when test="${index==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/main?${freeSelector }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/main?${freeSelector }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/main?${freeSelector }=${freeMaxNum+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div><!-- 페이지 끝 -->
			</div>
		</div>
	</div>
	
	<div class="col-lg-6">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 최근 홍보 게시판 게시글</h3>
			</div>
			<div class="panel-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>제목</th>
						<th>아이디</th>
						<th>등록날짜</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${proList.size()>0 }">
					<c:forEach var="i" begin="${proFirstRow }" end="${proLastRow }" varStatus="status">
					<tr class="pro" proContentNum="${proList[i].contentNum }">
						<th scope="row">${status.index+1 }</th>
						<td>${proList[i].contentTitle }</td>
						<td>${proList[i].contentWriter }</td>
						<td>${proList[i].contentRegisDate }</td>
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
								<a href="/cas/admin/main?${proSelector }=${proMinNum-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${proMinNum}" end="${proMaxNum}">
							<c:choose>
							<c:when test="${index==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/main?${proSelector }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/main?${proSelector }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/main?${proSelector }=${proMaxNum+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div><!-- 페이지 끝 -->
			</div>	
		</div>
	</div>
	
	
	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 최근 UCC 게시글</h3>
			</div>
			<div class="panel-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>제목</th>
						<th>아이디</th>
						<th>등록날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
					<c:when test="${uccList.size()>0 }">
					<c:forEach var="i" begin="${uccFirstRow }" end="${uccLastRow }" varStatus="status">
					<tr class="ucc" uccContentNum = "${uccList[i].contentNum }">
						<th scope="row">${status.index+1 }</th>
						<td>${uccList[i].contentTitle }</td>
						<td>${uccList[i].contentWriter }</td>
						<td>${uccList[i].contentRegisDate }</td>
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
								<a href="/cas/admin/main?${uccSelector }=${uccMinNum-1}"><span aria-hidden="true">←</span>
									이전
								</a>
							</li>
							<c:forEach var="i" begin="${uccMinNum}" end="${uccMaxNum}">
							<c:choose>
							<c:when test="${uccIndex==i}">
							<li>
								<a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/main?${uccSelector }=${i}">
									${i }
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li>
								<a aria-controls="tab1" href="/cas/admin/main?${uccSelector }=${i}">
									${i }
								</a>
							</li>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							<li class="next">
								<a href="/cas/admin/main?${uccSelector }=${uccMaxNum+1}">다음<span aria-hidden="true">→</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div><!-- 페이지 끝 -->
		</div>
		</div>
	</div>
	
</div>