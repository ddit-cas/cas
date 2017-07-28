<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/cas/resources/css/fundList.css"
	type="text/css">
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

.list-group {border-radius: 0;}
.list-group .list-group-item {background-color: transparent;overflow: hidden;border: 0;border-radius: 0;padding: 0 16px;}
.list-group .list-group-item .row-picture,
.list-group .list-group-item .row-action-primary {float: left;display: inline-block;padding-right: 16px;padding-top: 8px;}
.list-group .list-group-item .row-picture img,
.list-group .list-group-item .row-action-primary img,
.list-group .list-group-item .row-picture i,
.list-group .list-group-item .row-action-primary i,
.list-group .list-group-item .row-picture label,
.list-group .list-group-item .row-action-primary label {display: block;width: 56px;height: 56px;}
.list-group .list-group-item .row-picture img,
.list-group .list-group-item .row-action-primary img {background: rgba(0, 0, 0, 0.1);padding: 1px;}
.list-group .list-group-item .row-picture img.circle,
.list-group .list-group-item .row-action-primary img.circle {border-radius: 100%;}
.list-group .list-group-item .row-picture i,
.list-group .list-group-item .row-action-primary i {background: rgba(0, 0, 0, 0.25);border-radius: 100%;text-align: center;line-height: 56px;font-size: 20px;color: white;}
.list-group .list-group-item .row-picture label,
.list-group .list-group-item .row-action-primary label {margin-left: 7px;margin-right: -7px;margin-top: 5px;margin-bottom: -5px;}
.list-group .list-group-item .row-content {display: inline-block;width: calc(100% - 92px);min-height: 66px;}
.list-group .list-group-item .row-content .action-secondary {position: absolute;right: 16px;top: 16px;}
.list-group .list-group-item .row-content .action-secondary i {font-size: 20px;color: rgba(0, 0, 0, 0.25);cursor: pointer;}
.list-group .list-group-item .row-content .action-secondary ~ * {max-width: calc(100% - 30px);}
.list-group .list-group-item .row-content .least-content {position: absolute;right: 16px;top: 0px;color: rgba(0, 0, 0, 0.54);font-size: 14px;}
.list-group .list-group-item .list-group-item-heading {color: rgba(0, 0, 0, 0.77);font-size: 20px;line-height: 29px;}
.list-group .list-group-separator {clear: both;overflow: hidden;margin-top: 10px;margin-bottom: 10px;}
.list-group .list-group-separator:before {content: "";width: calc(100% - 90px);border-bottom: 1px solid rgba(0, 0, 0, 0.1);float: right;}

.bg-profile{background-color: #3498DB !important;height: 150px;z-index: 1;}
.bg-bottom{height: 100px;margin-left: 30px;}
.img-profile{display: inline-block !important;background-color: #fff;border-radius: 6px;margin-top: -50%;padding: 1px;vertical-align: bottom;border: 2px solid #fff;-moz-box-sizing: border-box;box-sizing: border-box;color: #fff;z-index: 2;}
.row-float{margin-top: -40px;}
.explore a {color: green; font-size: 13px;font-weight: 600}
.twitter a {color:#4099FF}
.img-box{box-shadow: 0 3px 6px rgba(0,0,0,.16),0 3px 6px rgba(0,0,0,.23);border-radius: 2px;border: 0;}


</style>

<script>
	
</script>
<div class="company-wrap">
	<div class="company-snb" style="float: left;">
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
		<h3 class="box">영상게시판</h3>
		<div class="container">
			<div class="row">
			<div class="searchgroup" style="float: left">
							<select class="form-control" name="search">
								<option value="free_title">제목</option>
								<option value="free_writer" selected>작성자</option>
							</select>
			</div>
			<div class="selectcheck">
					<div class="form-group">
						<input class="form-control" id="focusedInput" type="text" placeholder="   검색    " style=" width:15%; float:left; margin:0 5px 0 5px;"> 
						
					<input type="button" style= "width:10%; float:left; margin:0 0 0 5px;" id="search" class="form-control" value="검색">
						<input type="button" style= "width:10%;" class="form-control" id="list" value="목록">
					</div>
			</div>
				<c:forEach var="i" begin="${firstRow}" end="${lastRow}">
				<div class="row">
					<div class="col-xs-12 col-sm-3 col-md-3">
						<a href='<c:url value='/uccDetail?contentNum=${articleList[i].contentNum }' />'>
						<img class="imgclass" alt="땡!!" style="width: 270px; height: 182px;" src='<c:url value='${articleList[i].contentImg }' />'>
					</div>
					<div class="col-xs-12 col-sm-9 col-md-9">
						<div class="row-content">
							<div class="list-group-item-heading">
								<section>
									<a href="${articleList[i].contentWriter }"><h3 class="glyphicon glyphicon-user">${articleList[i].contentWriter }</h3></a>
									<br> <h3 class="glyphicon glyphicon-calendar">${articleList[i].contentRegisDate }</h3><br>
				<h3>
					<a href='<c:url value="/uccDetail?contentNum=${articleList[i].contentNum }" />'>${articleList[i].contentTitle}</a>
				</h3>
								</section>
							</div>
						</div>
					</div>
			</div>
		<hr>
		</c:forEach>
	</div>
	</div>
	</div>
	
		<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3"
				style="text-align: center;">
				<div class="row">
					<nav aria-label="...">
						<ul class="pager" role="tablist">
							<li class="previous"><a href="/cas/uccList?tab=${minNum-1}"><span
									aria-hidden="true">←</span> 이전 </a></li>
							<c:forEach var="i" begin="${minNum}" end="${maxNum}">
								<c:choose>
									<c:when test="${index==i}">
										<li><a style="background: #337ab7; color: #fff;"
											aria-controls="tab1" href="/cas/uccList?tab=${i}"> ${i }
										</a></li>
									</c:when>
									<c:otherwise>
										<li><a aria-controls="tab1" href="/cas/uccList?tab=${i}">
												${i } </a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<li class="next"><a href="/cas/uccList?tab=${maxNum+1}">다음<span
									aria-hidden="true">→</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>

		</div>
