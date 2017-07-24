<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<body>
	<style>
#body {
	margin-top: 58px;
}

/*****************globals*************/
body {
	font-family: 'open sans';
	overflow-x: hidden;
}

img {
	max-width: 100%;
}

.preview {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

@media screen and (max-width: 996px) {
	.preview {
		margin-bottom: 20px;
	}
}

.preview-pic {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.preview-thumbnail.nav-tabs {
	border: none;
	margin-top: 15px;
}

.preview-thumbnail.nav-tabs li {
	width: 18%;
	margin-right: 2.5%;
}

.preview-thumbnail.nav-tabs li img {
	max-width: 100%;
	display: block;
}

.preview-thumbnail.nav-tabs li a {
	padding: 0;
	margin: 0;
}

.preview-thumbnail.nav-tabs li:last-of-type {
	margin-right: 0;
}

.tab-content {
	overflow: hidden;
}

.tab-content img {
	width: 100%;
	-webkit-animation-name: opacity;
	animation-name: opacity;
	-webkit-animation-duration: .3s;
	animation-duration: .3s;
}

.card {
	margin-top: 10px;
	background: #eee;
	padding: 3em;
	line-height: 1.5em;
}

@media screen and (min-width: 997px) {
	.wrapper {
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
	}
}

.details {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

.colors {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.product-title, .price, .sizes, .colors {
	text-transform: UPPERCASE;
	font-weight: bold;
}

.checked, .price span {
	color: #ff9f1a;
}

.product-title, .rating, .product-description, .price, .vote, .sizes {
	margin-bottom: 15px;
}

.product-title {
	margin-top: 0;
}

.size {
	margin-right: 10px;
}

.size:first-of-type {
	margin-left: 40px;
}

.color {
	display: inline-block;
	vertical-align: middle;
	margin-right: 10px;
	height: 2em;
	width: 2em;
	border-radius: 2px;
}

.color:first-of-type {
	margin-left: 20px;
}

.add-to-cart, .like {
	background: #ff9f1a;
	padding: 1.2em 1.5em;
	border: none;
	text-transform: UPPERCASE;
	font-weight: bold;
	color: #fff;
	-webkit-transition: background .3s ease;
	transition: background .3s ease;
}

.add-to-cart:hover, .like:hover {
	background: #b36800;
	color: #fff;
}

.not-available {
	text-align: center;
	line-height: 2em;
}

.not-available:before {
	font-family: fontawesome;
	content: "\f00d";
	color: #fff;
}

.orange {
	background: #ff9f1a;
}

.green {
	background: #85ad00;
}

.blue {
	background: #0076ad;
}

.tooltip-inner {
	padding: 1.3em;
}

/*# sourceMappingURL=style.css.map */
</style>
	<div id="body">
		<div class="company-cont" style="height: auto; width: 960px;">
			<h3 class="box" style="background-color: #0B2161;">My Movie</h3>
			<div class="container">
				<div class="row">
					<div class="content col-md-10" style="font-size: 16px">
						<div class="table-responsive">
							<table class="table table-bordered"
								style="text-align: left; width: 895px;">
								<tbody>
									<tr>
										<th
											style="width: 10%; text-align: center; background-color: #eeeeee">제목</th>
										<td><input type="text" id="title" class="form-control">${articleVO.contentTitle}</td>
									</tr>
									<tr>
										<th style="text-align: center; background-color: #eeeeee">작성자</th>
										<td><input type="text" id="writer" class="form-control">${articleVO.contentWriter}</td>
									</tr>
									<tr>
										<th style="text-align: center; background-color: #eeeeee">작성일</th>
										<td><input type="text" id="date" class="form-control">${articleVO.contentRegisDate}</td>
									</tr>
								</tbody>
							</table>
							</div>
							<p>
								Imak Flip Leather Cover Case Series for Samsung Galaxy S6 Edge
								An Excellent protection for your smartphone Imak Le Series untuk
								Samsung Galaxy S6 Edge. Le Series merupakan case terbaru Imak
								yang terbuat dari bahan material kulit berkualitas untuk
								mellindungi smartphone. Hadir dengan design corak yang elegan,
								case ini juga dapat digunakan sebagai stand.<br />
								<br /> Features Fashion, Simple, Perfect Imak Leather Case untuk
								Samsung Galaxy S6 Edge Inch hadir dengan design yang ringan,
								tipis, serta modis untuk menambah kesan stylish bagi smartphone
								Anda.<br />
								<br /> Leather Materials bring best protection for your mobile
								phone Imak Leather Case untuk Samsung Galaxy S6 Edge menggunakan
								bahan kulit berkualitas untuk melindungi smartphone dari
								goresan, guncangan dan kotoran lainnya The Surface is Dustproof,
								Anti fingerprint, and Easy To Clean Imak Leather Case untuk
								Samsung Galaxy S6 Edge ini pun dilengkapi dengan anti
								fingerprint, sehingga melindungi smartphone Anda dari bercakan
								tangan yang mengganggu, serta dapat mencegah debu-debu kecil
								menempel.<br /> Walaupun terdapat debu atau kotoran yang
								menempel, Anda dapat dengan mudah membersihkannya.<br />
								<br /> Easy Access to All Buttons Anda tetap mendapat akses ke
								setiap port dan button yang terdapat di device Anda dengan
								gampang.
							</p>
					</div>
				</div>
			</div>
		</div>
		</div>
</body>
