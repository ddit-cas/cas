<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<body>
<div class="bs-example" data-example-id="condensed-table">
   	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 신고 게시판</h3>
			</div>
			<div class="panel-body">
			
<script>
$(function(){
	$('tr').on('click',function(){
		location.href="reportDetail";
	});
});
</script>
					<table class="table table-hover">
						<c:choose>
							<c:when test="${reportList.size() > 0 }">
								<thead>
									<tr>
										<th>#</th>
										<th>신고자 닉네임</th>
										<th>내용</th>
										<th>날짜</th>
										<th>게시글 번호</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="i" begin="${firstRow}" end="${lastRow}">
										<tr>
											<th scope="row">${reportList[i].reportNum}</th>
											<td>${reportList[i].reportMem}</td>
											<td><a href="reportDetail?contentNum=${reportList[i].contentNum}">${reportList[i].reportContent}</a></td>
											<td>${reportList[i].reportDate}</td>
											<td>${reportList[i].contentNum}</td>
										</tr>
									</c:forEach>
							</c:when>
							<c:otherwise>

								<tr>
									<td colspan="5" style="text-align: center;">해당 내용이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
				</div>
		</div>
	</div>
   </div>
 <!-- 페이지수  -->
<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
   <div class="row">
      <nav aria-label="...">
         <ul class="pager" role="tablist">
            <li class="previous">
               <a href="/cas/reportList?tab=${minNum-1}${searchUrl}"><span aria-hidden="true">←</span>
                  이전
               </a>
            </li>
            <c:forEach var="i" begin="${minNum}" end="${maxNum}">
            <c:choose>
            <c:when test="${index==i}">
            <li>
               <a style="background: #aaa;" aria-controls="tab1" href="/cas/admin/reportList?tab=${i}${searchUrl}">
                  ${i }
               </a>
            </li>
            </c:when>
            <c:otherwise>
            <li>
               <a aria-controls="tab1" href="/cas/admin/reportList?tab=${i}${searchUrl}">
                  ${i }
               </a>
            </li>
            </c:otherwise>
            </c:choose>
            </c:forEach>
            <li class="next">
               <a href="/cas/admin/reportList?tab=${maxNum+1}${searchUrl}">다음<span aria-hidden="true">→</span>
               </a>
            </li>
         </ul>
      </nav>
   </div>
</div>  


</body>
</html>