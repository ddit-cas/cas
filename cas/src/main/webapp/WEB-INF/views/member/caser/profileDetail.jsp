<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>회원가입</title>
<body>
<style>
	.form-horizontal{
		margin-top: 116px;
	}
	.msgCheckId {
		font-size : 15px;
	}
	#yes {
		color : blue;
	}
	#no {
		color : red;
	}
	.signup_cas_ld {
		font-size: 24px;
		border-bottom: 1px dotted #c8c8c8;
		margin : 10px 0;
	}
	.btn-circle {
        width: 30px;
        height: 30px;
        text-align: center;
        padding: 6px 0;
        font-size: 12px;
        line-height: 1.428571429;
		border-radius: 15px;
	}
	.btn-circle.btn-lg {
        width: 55px;
        height: 34px;
        padding: 13px 13px;
        font-size: 18px;
        line-height: 1.33;
        border-radius: 25px;
	}
	
	p {
    margin: 7px 0px 12px;
}

#body{
	margin-top:58px;
}
</style>
	
<style>
	input[type="text"] {
		color:black;
	}
	#enter {
		width : 960px;
		height : 50px;
	}
	
	.image-preview-input {
    position: relative;
    overflow: hidden;
    margin: 0px;    
    color: #333;
    background-color: #fff;
    border-color: #ccc;    
	}
	.image-preview-input input[type=file] {
		position: absolute;
		top: 0;
		right: 0;
		margin: 0;
		padding: 0;
		font-size: 20px;
		cursor: pointer;
		opacity: 0;
		filter: alpha(opacity=0);
	}
	.image-preview-input-title {
	    margin-left:2px;
	}
	.msgCheckNick {
		font-size : 15px;
	}
	img {
		cursor:pointer;
	}
	.crew {
		width : 1170px;
		height: 250px;
	}
	.files-crw {
		width : 165px;
		height: 220px;
	}
</style>

	<div id="body">
	<div class="company-wrap">
		<div class="company-snb">
			<h2>Caser</h2>
			<div class="">
				<ul>
					<li><a href="profileView">프로필 뷰</a></li>
				</ul>
			</div>
		</div>
	<fieldset class="signup_cas_fs">
	<div class="company-cont" style="height: auto;">
		<h3 class="box">프로필 뷰 </h3>
	
<!-- 		<legend id="choice" class="signup_cas_ld">프로필 뷰 상세</legend> -->
		<div class="contSelect">
			<div class="box-body">
				<div class="col-sm-3">
					<div class="filess">
					<p id="enter"></p>
						<img alt="User Pic" src="${caserList[0].memFrofileimage }"
							id="profile-image" class="img-circle img-responsive" style="width:290px; height:200px;">
						<input id="profile-image-input"  accept="image/png, image/jpeg, image/gif" name="memFrofileimage" class="hidden" type="file">
					</div>
				</div>
				 
				<div class="form-group">
					<p id="enter"></p>
					
					<label class="control-label col-sm-2" for="memNick">닉네임</label>
					<div class="col-sm-4">
					  <div class="input-group">
					   <label>${caserList[0].memNick }</label> 
					  </div>
					</div>
				</div>
					
					<p id="enter"></p>
					
					<label class="control-label col-sm-2" for="memCertif">경력</label>
					<div class="col-sm-4">
					  <div class="input-group">
					  	<label>${caserList[0].memCareer }</label>
					  </div>
					</div>
					
					<p id="enter"></p>
					<div id="add-textField"></div>
							
					
					<label class="control-label col-sm-2" for="memActive">활동지역</label>		
					<div class="col-sm-4">
						<label>${caserList[0].memActive }</label>
						<div class="map"></div>
				    </div>
					
					
				<c:if test="${not empty caserList[0].teamName}">
					
					<p id="enter"></p>
					<p id="enter"></p>
					<p id="enter"></p>
					<p id="enter"></p>
					<h3>팀원</h3>
					<hr>
				<c:forEach var="caser" items="${caserList}">
					<div class='box-body crew'>
						<div class='col-sm-2'>
							<div class='files-crw'>
								<img alt='User Pic' src='${caser.teamInfo }' id='profile-image1' class='img-circle img-responsive'>
							</div>
						</div>
						<label class='control-label col-sm-1' for='crw-name' style="margin: 55px 0px;">이름</label>
						
							<p> ${caser.teamName } </p>
					
						<label class='control-label col-sm-1' for='crw-role' style="margin: 0px -81px;">역할</label>
						<div id='btns'>
							
								<p style="margin: -55px 64px;"> ${caser.teamPosi } </p>	
								
							
						</div>

					</div>
				</c:forEach>
				</c:if>
				</div>
			</div>
			</div>	
<!-------------------------------낯선낯선 여자에!--------------------------------------------------- -->
			
		
	<style>
/* #body {
	margin-top: 58px;
} */

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
		<div class="container">
			<h2>MyUCC</h2>
			<c:forEach var="i" begin="${firstRow}" end="${lastRow}">
<!-- 		************************************************************************* -->
			<div class="table">
				<div class="col-md-4">
					<div class="thumbnail">
					<div class="row">
						<img src="${myUccList[i].contentImg }" style="width: 100%;" data-toggle="modal" data-target="#product_view${i }">
						<div class="blog-bar color-pink"></div>
						<div class="blog-post-text" data-toggle="modal" data-target="#product_view${i }">
							<label>${myUccList[i].contentTitle}</label>
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
	<!-- 푸터 시작 -->
	<div class="clear"></div>

	<div id="footerWrap" class="container-fluid">
		<footer class="container"> </footer>
	</div>


</div></div>

<script>
$(function() {
	var seq = 2;
		
	//팀원 버튼 시 팀원 입력창 생성
	$('#plus-team-mem').on('click',function(){
		
		var crewName = "#crw-name"+seq;
		var crewRole = "#crw-role"+seq;
		var image = '#profile-image'+seq;
		var input = '#profile-image-input'+seq;

		//이미지 미리보기 생성
		var textField  ="<div class='add-field'><hr><div class='box-body crew'><div class='col-sm-2'><div class='files-crw'>";
			textField += "<img alt='User Pic' src='https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg' id='profile-image"+seq+"' class='img-circle img-responsive'>";
			textField += "<input id='profile-image-input"+seq+"'  accept='image/png, image/jpeg, image/gif' class='hidden' name ='crw-img' type='file'></div></div>";
			//이름 텍스트필드 생성	
			textField += "<p id='enter'/><label class='control-label col-sm-1' for='crw-name'>이름</label>";
			textField += "<div class='col-sm-2'><input type='text' id='crw-name"+seq+"' name='crw-name' class='form-control crw-name'></div>";
			textField += "<p id='enter'/>";
			//역할 텍스트필드 생성	
			textField += "<label class='control-label col-sm-1' for='crw-role'>역할</label>";
			textField += "<div id='btns'><div class='col-sm-2'><input type='text' id='crw-role"+seq+"' name='crw-role' class='form-control crw-role' placeholder='팀원의 역할을 입력하세요'></div></div>";
			textField += "<p id='enter'/><input type='button' class='btn btn-default minus-crw' value='-' />";
			textField += "</div></div>";
			seq += 1;
		$('.team-mem').append(textField);
		//팀원 텍스트필드에서 이름 값 가져오기
		var tname = $('#team-mem').val();
		//생성된 이름 칸에 값 넣어주기 
		$(crewName).attr('value',tname);
		//역할 텍스트 필드에 포커스 주기
		$(crewRole).focus();
		//원래 있던 텍스트필드(팀원 텍스트필드)의 값은 지워준다.
		$('#team-mem').val("");
		//팀원 삭제
		$(".minus-crw").bind('click',function(){
			$(this).parent().parent().remove();
		});
		//팀원 사진 클릭 시 업로드 및 미리 보기
		$(image).on('click', function() {
			
			$(input).click();
			
			$(input).change(function (){     
				
		        var file = this.files[0];
		        var reader = new FileReader();
		        // Set preview image into the popover data-content
		        reader.onload = function (e) {
		            $(image).attr('src', e.target.result);
		        }        
		        reader.readAsDataURL(file);
		    });
		});
	});
});	
</script>	
	
			<div class="team-mem"></div>
		</div>
	</fieldset>
	
<style>
	#btnses {
		width : 760px;
		clear : both;
	}
	#btnses>input {
		float : right;
		margin-left : 20px;	
		margin-bottom: 50px;
	}
</style>				
		
				
	</form>
</body>
