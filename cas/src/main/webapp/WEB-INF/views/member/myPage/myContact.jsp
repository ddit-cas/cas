<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	@import "//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css";
<body>
	<style>
#body {
	margin-top: 58px;
}

.company-cont {
	width: 960px;
	text-align: center;
}

.pager .active a{
    background-color : #337AB7;
    color: #FFF;
    border: 0px;
}
</style>

<script type="text/javascript">
function goTo(number){
	   $('ul.pager li:eq('+number+') a').tab('show');
	   upgradePreNext(number);
	}
	function upgradePreNext(number){
	   if (number>1){
	       $('ul.pager li:eq(0)').attr("onclick","goTo("+(number-1)+")");
	       $('ul.pager li:eq(0)').attr("class", "previous");
	   } else {
	       $('ul.pager li:eq(0)').attr("class", "disabled");
	   }
	    if (number<5){
	       $('ul.pager li:eq(6)').attr("onclick","goTo("+(number+1)+")");
	       $('ul.pager li:eq(6)').attr("class", "next");
	   } else {
	       $('ul.pager li:eq(6)').attr("class", "disabled");
	   }
	}
	$(document).ready(function(){
	    $('li a').on('click',function(e){
	  	    goTo((e.target.innerHTML)-0);
	  });
	});

</script>

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
						<c:forEach var="i" begin="${firstRow}" end="${lastRow}">
							<tr>
								<td>${articleList[i].contentTitle}</td>
								<td>${articleList[i].contentWriter}</td>
								<td>${articleList[i].contentRegisDate}</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				<nav aria-label="...">
					<ul class="pager" role="tablist">
						<li>
							<a href="/cas/member/myContact?tab=${minNum-1}"><span aria-hidden="true">←</span>
								이전
							</a>
						</li>
						<c:forEach var="i" begin="${minNum}" end="${maxNum}">
						<c:choose>
						<c:when test="${index==i}">
						<li>
							<a style="background: #337ab7; color: #fff;" aria-controls="tab1" href="/cas/member/myContact?tab=${i}">
								${i }
							</a>
						</li>
						</c:when>
						<c:otherwise>
						<li>
							<a aria-controls="tab1" href="/cas/member/myContact?tab=${i}">
								${i }
							</a>
						</li>
						</c:otherwise>
						</c:choose>
						</c:forEach>
						<li>
							<a href="/cas/member/myContact?tab=${maxNum+1}">다음<span aria-hidden="true">→</span>
							</a>
						</li>
					</ul>
	            </nav>
			</div>
		</div>
      </div>
</body>
