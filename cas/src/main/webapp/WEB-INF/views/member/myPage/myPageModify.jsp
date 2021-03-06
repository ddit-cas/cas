<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<title>회원가입</title>
<body>
<script>
//아이디 중복 확인
$(function(){
    $('#idCheck').click(function(){
    	var idValue = $('#mem_id').val();
    	$.ajax({
    		url : 'signup/idCheck.jsp',
    		type : 'get',
    		data : "id="+idValue,  // {"id:idValue"} 이래도 같음.
    		success : function(res){
    			var code = "";
    			var attr = "";
    			if(res.status == "OK"){
    				code += res.id+"는 사용 가능합니다.";
    				attr += "yes";
    			}else{
    				code += res.id+"는 사용 불가능합니다.";
    				attr += "no";
    			}
    			$('.msgCheckId').html(code).attr("id",attr);
    		},
    		dataType : 'json' 
    	});
    });
});    
</script>
<style>
	.form-horizontal{
		margin-top: 100px;
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
	
	legend{
		font-size : 15px;
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
</style>
	<form class="form-horizontal" action="/cas/member/updateMember">
	<fieldset class="signup_cas_fs">
	<div class="company-cont" style="height: auto; width: 960px;">
			<h3 class="box" style="background-color:;">개인정보</h3>
		<div class="container">
			<div class="essen">
				<div class="imfom">
					<div class="form-group">
						<label class="control-label col-sm-2" for="id">아이디</label>
						<div class="col-sm-6">
						  <div class="input-group">
						    <input type="text" class="form-control" id="mem_id" name="memId" value="${loginUser.memId }" readonly="readonly">
						    <span class="input-group-btn">
						      <button class="btn btn-default" id="idCheck" type="button">중복확인</button>
							    <span class="msgCheckId"></span>
						    </span>
						  </div>
						</div>
						
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd1">비밀번호</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="memPwd"
								value="${loginUser.memPwd}" name="memPwd">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd1">비밀번호확인</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="pwd2"
								value="${loginUser.memPwd}" name="memPwd2">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="name">이름</label>
						<div class="col-lg-6">
						    <input type="text" class="form-control" id="name"
								value="${loginUser.memName }" name="memName" aria-label="name">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="memBirthdate">생년월일</label>
						<div class="col-sm-4">
							<input type="date" class="form-control memBirthdate" value="${loginUser.memBirthdate }" id="bir" placeholder="year" name="memBirthdate">
						</div>
						<div class="col-sm-3">
						<label class="control-label col-sm-5" for="memSex" style="margin-left:-58px;">/ 성별</label>
							<div data-toggle="buttons">
								<label class="btn btn-default btn-circle btn-lg active" style="background-image:url('/cas/resources/images/male.png'); background-position:center top;"><input type="radio" name="memSex" id="male" value="male" checked></label>
								<label class="btn btn-default btn-circle btn-lg" style="background-image:url('/cas/resources/images/female.png'); background-position:center top;"><input type="radio" name="memSex" id="female" value="female"></label>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="name">전화번호</label>
						<div class="col-lg-6">
						    <input type="tel" class="form-control" id="tel"
								value="${loginUser.memHp }" name="memHp" aria-label="tel">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이메일</label>
						<div class="col-lg-6">
						    <input type="email" class="form-control" id="email"
								value="${loginUser.memEmail }" name="memEmail" aria-label="email">
						</div>
					</div>
					
<script>
//우편번호 검색
$(function(){
	$('#zip-btn').on('click',function(){
		var url = "signup/zipSearch.jsp";
		window.open(url,"우편번호검색","width=500 height=400");		
	});
});
</script>

					<div class="form-group">
						<label class="control-label col-sm-2" for="zip">우편번호</label>
						<div class="col-sm-6">
						  <div class="input-group">
						    <input type="text" class="form-control" id="zip" 
						    	value="${loginUser.memMailnumber }" name="memMailnumber" disabled>
						    <span class="input-group-btn">
						      <button id="zip-btn"class="btn btn-default" type="button">우편번호</button>
						    </span>
						  </div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="addr">주소</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="add1"
								value="${loginUser.memAddr1 }" name="memAddr1" disabled>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="addr">상세주소</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="add2"
								value="${loginUser.memAddr2 }" name="memAddr2">
						</div>
					</div>
				</div>
			</div>
			</div>
		</fieldset>
<style>
	input[type="text"] {
		color:black;
	}
	#enter {
		width : 960px;
		height : 30px;
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

<script>
$(function() {
	//그림 클릭 시 업로드 창 띄워 업로드 후 미리보기
	$('#profile-image').on('click', function() {
		$('#profile-image-input').click();
		
		$("#profile-image-input").change(function (){     
	        
	        var file = this.files[0];
	        var reader = new FileReader();
	        // Set preview image into the popover data-content
	        reader.onload = function (e) {
	        	 $(".image-preview-input-title").text("변경");
	             $(".image-preview-filename").val(file.name);            
	            $("#profile-image").attr('src', e.target.result);
	        }        
	        reader.readAsDataURL(file);
	    });
	});
	
	// 업로드 버튼으로 그림피일 업로드 후 미리보기
	$(".image-preview-input input:file").change(function (){     
        
        var file = this.files[0];
        var reader = new FileReader();
        //Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview-input-title").text("변경");
            $(".image-preview-filename").val(file.name);            
            $("#profile-image").attr('src', e.target.result);
        }        
        reader.readAsDataURL(file);
    });
	
	
	
	// textfield 생성
	var count = 0;
	$('#plus-textField').on('click',function(){
		count++;
		//textfield 3회로 횟수 제한
		if(count<3){
			var textField = "<div class='add-field'>";
			textField +="<label class='control-label col-sm-1' for='career'>+</label>"; 
			textField +="<div class='col-sm-4'>";
			textField +="<div class='input-group'>";
			textField +="<input type='text' class='form-control' name='career' placeholder='경력을 추가 입력하세요.'>";
			textField +="<span class='input-group-btn'>";
			textField +="<button class='btn btn-default minus-textbutton' type='button'>-</button>";
			textField +="</span></div></div><p id='enter' /><p id='enter' /></div>";
			$('#add-textField').append(textField);
			//textField 삭제
			$(".minus-textbutton").bind('click',function(){
				count--;
				$(this).parent().parent().parent().parent().remove();
			});
		}else{
			alert("경력사항 쓰기는 3회로 제한 됩니다.");
		}
	});
	
	//아이디 중복 확인
	$('#nickCheck').click(function(){
    	var idValue = $('#nick').val();
    	$.ajax({
    		url : 'signup/idCheck.jsp',
    		type : 'get',
    		data : "id="+idValue,
    		success : function(res){
    			var code = "";
    			var attr = "";
    			if(res.status == "OK"){
    				code += res.id+"는 사용 가능합니다.";
    				attr += "yes";
    			}else{
    				code += res.id+"는 사용 불가능합니다.";
    				attr += "no";
    			}
    			$('.msgCheckNick').html(code).attr("id",attr);
    		},
    		dataType : 'json' 
    	});
    });
	
	//선택사항 숨기기
	$("#choice").click(function(){
		$('.contSelect').toggleClass("hide");
	});
	
});
</script>

	<!-- 선택사항 -->
	<fieldset class="signup_cas_fs">
		<legend id="choice" class="signup_cas_ld">선택사항<span> : 클릭!</span></legend>
		<div class="contSelect hide">
			<div class="box-body">
				<div class="col-sm-3">
					<div class="filess" style="width:290px; height:400px;">
						<img alt="User Pic" src="${loginUser.memFrofileimage }"
							id="profile-image" class="img-circle img-responsive">
						<input id="profile-image-input"  accept="image/png, image/jpeg, image/gif" class="hidden" type="file">
						<div style="color:#999;">그림을 클릭하여 이미지를 변경합니다.</div>	
					</div>
				</div>
				 
				<div class="form-group">
					<label class="control-label col-sm-1" for="upload">이미지</label>
					<div class="col-sm-4">
					  <div class="input-group">
					    <input type="text" class="form-control image-preview-filename" placeholder="사진 파일을 업로드 하세요." disabled="disabled">
					    <span class="input-group-btn">
					      <div class="btn btn-default image-preview-input">
	                        <span class="glyphicon glyphicon-folder-open" />
	                        <span class="image-preview-input-title">업로드</span>
	                        <input type="file" accept="image/png, image/jpeg, image/gif" name="input-file-preview"/>
	                     </div>
					    </span>
					  </div>
					</div>
					 
					<p id="enter"></p>
					<p id="enter"></p>
					
					<label class="control-label col-sm-1" for="nickname">닉네임</label>
					<div class="col-sm-4">
					  <div class="input-group">
					    <input type="text" class="form-control" id="nick" name="memNick" value="${loginUser.memNick }">
					    <span class="input-group-btn">
					      <button class="btn btn-default" id="nickCheck" type="button">중복확인</button>
				      	  <span class="msgCheckNick"></span>
					    </span>
					  </div>
					</div>
					
					<p id="enter"></p>
					<p id="enter"></p>
					
					<label class="control-label col-sm-1" for="career">경력</label>
					<div class="col-sm-4">
					  <div class="input-group">
					    <input type="text" class="form-control" value="${loginUser.memCareer }">
					    <span class="input-group-btn">
					      <button class="btn btn-default" id="plus-textField" type="button">+</button>
					    </span>
					  </div>
					</div>
					
					<p id="enter"></p>
					<p id="enter"></p>
					
					<div id="add-textField"></div>
					
<script>
//활동지역 검색
$(function(){
	$('#activity').on('click',function(){
		var url = "signup/map.jsp";
		window.open(url,"활동지역검색","width=600 height=600");		
	});
});
</script>			
					
					<label class="control-label col-sm-1" for="activity">활동지역</label>		
					<div class="col-sm-4">
						<input type="text" class="form-control" id="activity" value="${loginUser.memActive }" name="memActive" readonly>
				    </div>
					
					<p id="enter"></p>
					<p id="enter"></p>
					
			  	    <label class="control-label col-sm-1" for="career">팀원</label>
					<div class="col-sm-4">
					  <div class="input-group">
					    <input type="text" class="form-control" id="team-mem" placeholder="팀원을 입력하세요.">
					    <span class="input-group-btn">
					      <button class="btn btn-default" id="plus-team-mem" type="button">+</button>
					    </span>
					  </div>
					</div>
					
				</div>
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
			textField += "<input id='profile-image-input"+seq+"'  accept='image/png, image/jpeg, image/gif' class='hidden' type='file'></div></div>";
			//이름 텍스트필드 생성	
			textField += "<p id='enter'/><label class='control-label col-sm-1' for='crw-name'>이름</label>";
			textField += "<div class='col-sm-2'><input type='text' id='crw-name"+seq+"' class='form-control crw-name'></div>";
			textField += "<p id='enter'/><p id='enter'/>";
			//역할 텍스트필드 생성	
			textField += "<label class='control-label col-sm-1' for='crw-role'>역할</label>";
			textField += "<div id='btns'><div class='col-sm-2'><input type='text' id='crw-role"+seq+"' class='form-control crw-role' placeholder='팀원의 역할을 입력하세요'></div></div>";
			textField += "<p id='enter'/><p id='enter'/><input type='button' class='btn btn-default minus-crw' value='-' />";
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
		<div id="btnses">
			<input type="submit" class="btn btn-primary" value="수정" />
			<input type="reset" class="btn btn-danger" value="취소" />
		</div> 
				
	</form>
</body>
