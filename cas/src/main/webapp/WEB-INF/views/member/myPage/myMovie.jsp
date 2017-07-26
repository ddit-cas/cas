<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
	<style>
#body {
	margin-top: 58px;
}

body {
	font-family: proxima-nova, helvetica, arial, sans-serif;
	color: #333;
	font-size: 14px;
	line-height: 20px;
}

.promo-card {
	overflow: hidden;
	width: 260px;
	height: 350px;
	margin-bottom: 50px;
	border-radius: 10px;
	background-color: #fff;
	box-shadow: 0 4px 21px -12px rgba(0, 0, 0, .66);
	-webkit-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	transform: rotate(0deg);
	-webkit-transition: all 200ms ease;
	transition: all 200ms ease;
	font-size: 18px;
	cursor: pointer;
}

.promo-card:hover {
	box-shadow: 0 34px 32px -33px rgba(0, 0, 0, .18);
	-webkit-transform: translate(0px, -3px);
	-ms-transform: translate(0px, -3px);
	transform: translate(0px, -3px);
}

.blog-bar {
	width: 4px;
	height: 45px;
	margin-top: 16px;
	float: left;
}

.blog-bar.color-pink {
	background-color: #f75e90;
}

.blog-bar.color-purple {
	background-color: #a15dc0;
}

.blog-bar.color-blue {
	background-color: #23b9b6;
}

.blog-post-text {
	margin-top: 19px;
	margin-right: 20px;
	margin-left: 20px;
	font-size: 17px;
	text-transform: uppercase;
}

.blog-description {
	font-size: 15px;
	text-transform: none;
}

.blog-description.pink-text {
	color: #f75e90;
}

.blog-description.purple-text {
	color: #a15dc0;
}

.blog-description.blue-text {
	color: #23b9b6;
}

/* Titles & containers */
.section-title {
	color: #f75e90;
	font-size: 26px;
	font-weight: 400;
	text-align: center;
	letter-spacing: 1px;
	text-transform: uppercase;
}

.title-underline {
	display: block;
	width: 100px;
	height: 2px;
	margin-top: -10px;
	margin-right: auto;
	margin-left: auto;
	background-color: #23b9b6;
}

.promotion-section {
	padding-bottom: 80px;
	background-color: #f7f7f7;
}

.promo-flex {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	margin-top: 48px;
	-webkit-justify-content: space-around;
	-ms-flex-pack: distribute;
	justify-content: space-around;
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-webkit-box-align: end;
	-webkit-align-items: flex-end;
	-ms-flex-align: end;
	align-items: flex-end;
}

@media ( max-width : 991px) {
	.promo-card {
		-webkit-box-flex: 0;
		-webkit-flex: 0 auto;
		-ms-flex: 0 auto;
		flex: 0 auto;
	}
}

/* Webflow Basics */
.w-container {
	margin-left: auto;
	margin-right: auto;
	max-width: 940px;
}

.w-container:before, .w-container:after {
	content: " ";
	display: table;
}

.w-container:after {
	clear: both;
}

.w-container .w-row {
	margin-left: -10px;
	margin-right: -10px;
}

 .product_view .modal-dialog{max-width: 800px; width: 100%;}
        .pre-cost{text-decoration: line-through; color: #a5a5a5;}
        .space-ten{padding: 10px 0;}
</style>
	<div id="body">
		<div class="container">
			<div class="company-cont" style="height: auto; width:960px;">
			<h3 class="box">My UCC</h3>
			
			<c:forEach var="i" begin="${firstRow}" end="${lastRow}">
<!-- 		************************************************************************* -->
			<div class="table">
				<div class="col-md-4">
					<div class="thumbnail">
					<div class="row">
						<img src="${myUccList[i].contentImg }"
							style="width: 100%;" data-toggle="modal"
							data-target="#product_view${i }">
						<div class="blog-bar color-pink"></div>
						<div class="blog-post-text" data-toggle="modal"
							data-target="#product_view${i }">
							<div>${myUccList[i].contentTitle}</div>
							<div class="blog-description pink-text">${myUccList[i].contentRegisDate}</div>
						</div>
					</div>
				</div>
			</div>
			</div>
<!-- 		클릭시 모달	 -->
			<div class="modal fade product_view" id="product_view${i }">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h3 class="modal-title">${myUccList[i].contentTitle}</h3>
							<h3 class="modal-title">${myUccList[i].contentWriter}</h3>
						</div>
						<div class="modal-body">
							<div class="row">
								<div id="prmovie" class="video" style="text-align: center;">
									${myUccList[i].contentContent}
									<div class="btn-ground" style="margin: auto;">
										<a href="/cas/member/updateUcc">
										<input type="submit" class="btn btn-primary" value="수정" /></a> 
										<a href="/cas/member/deleteUcc">
										<input type="submit" class="btn btn-danger" value="삭제" /></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- 			******************************************************************************** -->
		</c:forEach>
		</div>
		</div>
	</div>
</body>
</body>
