<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>회원가입</title>
<body>
<!-- glyphicon CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.form-horizontal{
		margin-top: 58px;
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
</style>
	<form class="form-horizontal" encType=multipart/form-data action="/cas/admin/memberDelete" method="post" >
	<fieldset class="signup_cas_fs">
		<c:if test="${memberDetail.enabled eq '0'}">
			<h2 style="color:red;"> 삭제된 회원입니다.</h2>
		</c:if>
		<legend class="signup_cas_ld">회원정보상세</legend>
		<div class="container" style="margin-left:120px; margin-top:70px;">
					<div class="form-group" style="margin-bottom : -40px; margin-left:-40px;">
					<div class="box-body">
		<c:choose>
		<c:when test="${empty memberDetail.memFrofileimage}">
					<div class="col-sm-3">
						<div class="filess" style="width:290px; height:400px;">
							<img alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
								id="profile-image" class="img-circle img-responsive">
						</div>
					</div>
		</c:when>
		<c:otherwise>
					<div class="col-sm-3">
						<div class="filess" style="width:290px; height:400px;">
							<img alt="User Pic" src="${memberDetail.memFrofileimage }"
								id="profile-image" class="img-circle img-responsive" style="width:290px; height:350px;">
						</div>
					</div>
		</c:otherwise>			
		</c:choose>			
					<label class="control-label col-sm-2" for="memId">아이디</label>
					<div class="col-sm-4">
					    <input type="text" class="form-control" name="memId" value="${memberDetail.memId }" disabled>
					</div>
						
					<p id="enter"></p>

						<label class="control-label col-sm-2" for="memPwd">비밀번호</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" value="${memberDetail.memPwd }" disabled>
						</div>
					<p id="enter"></p>
						<label class="control-label col-sm-2" for="memName">이름</label>
						<div class="col-sm-2">
						    <input type="text" class="form-control" value="${memberDetail.memName }" disabled>
						</div>
						<label class="control-label col-sm-2" for="memAge" style="margin-left:-130px;">/ 나이</label>
						<div class="col-sm-1" style="width:130px;">
						    <input type="text" class="form-control" value="${memberDetail.memAge }" disabled>
						</div>
					<p id="enter"></p>
<script>
	$(function(){
		var gender = $('#gender').attr('gender'); 
		if(gender === "여"){
			$('#female').addClass('active');
		}else{
			$('#male').addClass('active');
		}
	});
</script>					
						<label class="control-label col-sm-2" for="memBirthdate">생년월일</label>
						<div class="col-sm-2">
							<input type="date" class="form-control memBirthdate" value="${memberDetail.memBirthdate }" disabled>
						</div>
						<div class="col-sm-3">
						<label class="control-label col-sm-5" for="memSex" style="margin-left:-58px;" id="gender" gender="${memberDetailSex }">/ 성별</label>
							<div data-toggle="buttons">
								<input id="male" class="btn btn-default btn-circle btn-lg" style="background-image:url('/cas/resources/images/male.png'); background-position:center top;" disabled>
								<input id="female" class="btn btn-default btn-circle btn-lg" style="background-image:url('/cas/resources/images/female.png'); background-position:center top;" disabled>
							</div>
						</div>
					
					<p id="enter"></p>
						<label class="control-label col-sm-2" for="memHp">전화번호</label>
						<div class="col-sm-4">
						    <input type="tel" class="form-control" value="${memberDetail.memHp }" disabled>
						</div>
					<p id="enter"></p>
						<label class="control-label col-sm-2" for="memEmail">이메일</label>
						<div class="col-sm-4">
						    <input type="email" class="form-control" value="${memberDetail.memEmail }" disabled>
						</div>
					</div>
					</div>
						<label class="control-label col-sm-1" for="memMailnumber">우편번호</label>
						<div class="col-sm-2">
						    <input type="text" class="form-control" value="${memberDetail.memMailnumber }" disabled>
						</div>
						<label class="control-label col-sm-1" for="memAddr">주소</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" value="${memberDetail.memAddr1 } &nbsp; ${memberDetail.memAddr2 }" disabled>
						</div>
					<p id="enter"></p>
						<label class="control-label col-sm-1" for="memNick">닉네임</label>
						<div class="col-sm-2">
					 	   <input type="text" class="form-control" value="${memberDetail.memNick }" disabled>
						</div>
						
						<label class="control-label col-sm-1" for="memCertif">경력</label>
						<div class="col-sm-2">
						    <input type="text" class="form-control" value="${memberDetail.memCareer }" disabled>
						</div>
						
						<label class="control-label col-sm-1" for="memActive">활동지역</label>		
						<div class="col-sm-2">
							<input type="text" class="form-control" value="${memberDetail.memActive }" disabled>
					    </div>
					<p id="enter"></p>	
						<label class="control-label col-sm-1" for="memActive">가입일</label>		
						<div class="col-sm-3">
							<input type="text" class="form-control" value="${memberDetail.memSginup_date }" disabled>
					    </div>						
						<label class="control-label col-sm-2" for="memActive">포인트&nbsp;(<i class="fa fa fa-jsfiddle">)</i></label>		
						<div class="col-sm-3">
							<input type="text" class="form-control" value="${memberDetail.memPoint }" disabled>
					    </div>						
				</div>
		</fieldset>
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

				
	
<style>
	#btnses {
		width : 977px;
		clear : both;
	}
	#btnses>input {
		float : right;
		margin-top : 40px;
		margin-left : 20px;
		margin-bottom: 50px;
	}
</style>
		<div id="btnses">
			<input type="submit" class="btn btn-danger" value="회원삭제"/>
			<input type="button" class="btn btn-primary" value="뒤로가기" onclick="history.go(-1);" />
		</div> 
	</form>
</body>