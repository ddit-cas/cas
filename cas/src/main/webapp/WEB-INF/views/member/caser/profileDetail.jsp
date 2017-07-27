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



	<!-- 선택사항 -->
	
	<fieldset class="signup_cas_fs">
		<legend id="choice" class="signup_cas_ld">프로필 뷰 상세</legend>
		<div class="contSelect">
			<div class="box-body">
				<div class="col-sm-3">
					<div class="filess" style="width:290px; height:400px;">
						<img alt="User Pic" src="${caserList[0].memFrofileimage }"
							id="profile-image" class="img-circle img-responsive">
						<input id="profile-image-input"  accept="image/png, image/jpeg, image/gif" name="memFrofileimage" class="hidden" type="file">
					</div>
				</div>
				 
				<div class="form-group">
					
					 
					<p id="enter"></p>
					
					<label class="control-label col-sm-1" for="memNick">닉네임</label>
					<div class="col-sm-4">
					  <div class="input-group">
					   <p>${caserList[0].memNick }</p> 
					    
					  </div>
					</div>
					
					<p id="enter"></p>
					
					<label class="control-label col-sm-1" for="memCertif">경력</label>
					<div class="col-sm-4">
					  <div class="input-group">
					  	<p>${caserList[0].memCareer }</p>
					  </div>
					</div>
					
					<p id="enter"></p>
					<div id="add-textField"></div>
							
					
					<label class="control-label col-sm-1" for="memActive">활동지역</label>		
					<div class="col-sm-4">
						<p>${caserList[0].memActive }</p>
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
								<img alt='User Pic'
									src='${caser.teamInfo }'
									id='profile-image1' class='img-circle img-responsive'>
							</div>
						</div>
						<p id='enter' />
						<label class='control-label col-sm-1' for='crw-name' style="margin: 55px 0px;">이름</label>
						
							<p> ${caser.teamName } </p>
					
						<p id='enter' />
						<label class='control-label col-sm-1' for='crw-role' style="margin: 0px -81px;">역할</label>
						<div id='btns'>
							
								<p style="margin: -55px 64px;"> ${caser.teamPosi } </p>	
								
							
						</div>
						<p id='enter' />

					</div>
				</c:forEach>
				</c:if>
				</div>
				
				
<!-------------------------------낯선낯선 여자에!--------------------------------------------------- -->
			<div class="container">
		
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
			<h2>MyUCC</h2>
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<img src="/cas/resources/images/psy.jpg" alt="싸이" style="width: 100%" data-toggle="modal" data-target="#product_view">
							<div class="blog-bar color-pink"></div>
							<div class="blog-post-text" data-toggle="modal" data-target="#product_view">
								<div>춤영상</div>
								<div class="blog-description pink-text">2017-07-14</div>
							</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
					 <img src="/cas/resources/images/psy.jpg" data-toggle="modal" data-target="#product_view" alt="Nature" style="width: 100%">
							<div class="blog-bar color-blue"></div>
						<div class="blog-post-text">
							<div data-toggle="modal" data-target="#product_view">
								<div>노래노래래랠</div>
								<div class="blog-description blue-text">2017-07-14</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
					 <img src="/cas/resources/images/psy.jpg" data-toggle="modal" data-target="#product_view" alt="Nature" style="width: 100%">
							<div class="blog-bar color-purple"></div>
						<div class="blog-post-text">
							<div data-toggle="modal" data-target="#product_view">
								<div>싱얼</div>
								<div class="blog-description purple-text">2017-07-13</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
					 <img src="/cas/resources/images/psy.jpg" data-toggle="modal" data-target="#product_view" alt="Nature" style="width: 100%">
							<div class="blog-bar color-blue"></div>
						<div class="blog-post-text">
							<div data-toggle="modal" data-target="#product_view">
								<div>노래</div>
								<div class="blog-description blue-text">2017-07-13</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
					 <img src="/cas/resources/images/psy.jpg" data-toggle="modal" data-target="#product_view" alt="Nature" style="width: 100%">
							<div class="blog-bar color-purple"></div>
						<div class="blog-post-text">
							<div data-toggle="modal" data-target="#product_view">
								<div>싱얼~~~</div>
								<div class="blog-description purple-text">2017-07-12</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
					 <img src="/cas/resources/images/psy.jpg" data-toggle="modal" data-target="#product_view" alt="Nature" style="width: 100%">
							<div class="blog-bar color-purple"></div>
						<div class="blog-post-text">
							<div data-toggle="modal" data-target="#product_view">
								<div>싱얼싱얼</div>
								<div class="blog-description purple-text">2017-07-11</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		
		<div class="modal fade product_view" id="product_view" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a href="https://www.youtube.com/embed/OwJPPaEyqhI?rel=0&amp;showinfo=0" target="_blank" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
                <h3 class="modal-title">New Face-psy(moive)</h3>
                <h3 class="modal-title">싸이</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div id="prmovie" class="video">
        <iframe id="frame1" class="embed-responsive-item" style="width:500px; height:400px; margin:0 125px auto;" src="https://www.youtube.com/embed/OwJPPaEyqhI?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen=""></iframe></div>
                    <div class="col-md-6 product_content" style="margin:0 125px auto;">
						<h3 class="modal-title">내용</h3>
                        <textarea rows="5" cols="65">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</textarea>
                        <div class="btn-ground" style="margin:auto;">
				<a href="myMoviceDetail.jsp"><input type="submit" class="btn btn-primary" value="수정"></a>
				<input type="reset" class="btn btn-primary" value="취소">
				<input type="submit" class="btn btn-danger" value="삭제">
                        </div>
                    </div>
                </div>
            </div>
</div>
	<!-- 푸터 시작 -->
	<div class="clear"></div>

	<div id="footerWrap" class="container-fluid">
		<footer class="container"> </footer>
	</div>


</div></div></div></div></div>

				
		 </div>

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
