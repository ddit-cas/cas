<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.form-inline {
   display: block;
   text-align: right;
}

.board-menu li {
   position: relative;
   float: left;
   width: 20%;
   font-size: 16px;
   border: 1px solid #d7dce7;
   border-left: 0 none;
}

td {
   text-align: center;
   font-size: 16px;
}

th {
   text-align: center;
   font-size: 16px;
}

li a:hover {
   background-color: #666;
}

#body {
   margin-top: 58px;
}
</style>
<div class="company-wrap">
	<div class="company-snb">
		<h2>커뮤니티</h2>
		<div class="">
			<ul>
				<li class="active"><a href="/cas/freeboardList">자유게시판</a></li>
				<li><a href="/cas/promotionList">공연홍보</a></li>
				<li><a href="/cas/uccList">CAS-UCC</a></li>
			</ul>
		</div>
	</div>
	<div class="company-cont" style="height: auto;">
		<h3 class="box">자유게시판</h3>
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div class="selectcheck">
					<form class="form-inline" method="get" onclick="search_go()">
						<p>
							<img src="resources/images/free.png"
								style="width: 800px; height: 190px; background-size: cover; margin: 0 0 10px 0;">
						</p>
						<div class="searchgroup" style="float: left">
							<select class="form-control" name="search">
								<option value="free_title">제목</option>
								<option value="free_writer" selected>작성자</option>
								<option value="free_date">작성일</option>
							</select>
							<div class="form-group">
								<input class="form-control" name="writeSearch"
									id="focusedInput" type="text" placeholder="   검색    "
									style="margin: 0 auto 5px;"> 
								<input type="submit" id="search" class="form-control" onclick="freeboardList" value="검색"> 
<!-- 								<input type="button" class="form-control" id="list" value="목록"> -->
							</div>
						</div>
						<a href="/cas/member/freeboardForm"><input
							type="button" class="form-control" id="insert" value="등록"></a>
					</form>
					</div>
						<!--//tab-intro-->
					<table class="table table-hover"
							style="width: 800px; height: auto; margin: 0 auto;">
						<c:choose>
						<c:when test="${articleList.size() > 0 }">
							<thead>
								<tr>
									<th style="width: 25%; text-align: center; font-size: 15px;">제목</th>
									<th style="width: 5%; text-align: center; font-size: 15px;">작성자</th>
									<th style="width: 17%; text-align: center; font-size: 15px;">작성일</th>
								</tr>
							</thead>
							<tbody style="text-align: center; font-size: 15px;">
								<c:forEach var="i" begin="${firstRow}" end="${lastRow}">
									<tr>
										<td><a href="freeboardDetail?contentNum=${articleList[i].contentNum}">${articleList[i].contentTitle}</a></td>
										<td>${articleList[i].contentWriter}</td>
										<td>${articleList[i].contentRegisDate}</td>
									</tr>
								</c:forEach>
							</tbody>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5" style="text-align: center;">해당 내용이 없습니다.</td>
							</tr>
						</c:otherwise>
						</c:choose>
					</table>
			</div>
			<!--//company-snb-->
		</div>
	</div>
</div>
<!-- 페이지수  -->
<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
   <div class="row">
      <nav aria-label="...">
         <ul class="pager" role="tablist">
            <li class="previous">
               <a href="/cas/freeboardList?tab=${minNum-1}${searchUrl}"><span aria-hidden="true">←</span>
                  이전
               </a>
            </li>
            <c:forEach var="i" begin="${minNum}" end="${maxNum}">
            <c:choose>
            <c:when test="${index==i}">
            <li>
               <a style="background: #aaa;" aria-controls="tab1" href="/cas/freeboardList?tab=${i}${searchUrl}">
                  ${i }
               </a>
            </li>
            </c:when>
            <c:otherwise>
            <li>
               <a aria-controls="tab1" href="/cas/freeboardList?tab=${i}${searchUrl}">
                  ${i }
               </a>
            </li>
            </c:otherwise>
            </c:choose>
            </c:forEach>
            <li class="next">
               <a href="/cas/freeboardList?tab=${maxNum+1}${searchUrl}">다음<span aria-hidden="true">→</span>
               </a>
            </li>
         </ul>
      </nav>
   </div>
</div>
