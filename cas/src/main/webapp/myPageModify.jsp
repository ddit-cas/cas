<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<title>마이페이지 수정</title>
<body>
	<style>
/* 파일첨부 */
#profile-image1 {
	cursor: pointer;
	width: 150px;
	height: 150px;
	border: 2px solid #03b1ce;
}

.bot-border {
	border-bottom: 1px #f8f8f8 solid;
	margin: 5px 0 5px 0
}

/*  선택사항 */
.selectt {
	width: 730px;
	background: #FAFAFA;
	height: 700px;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: 0px 0px 3px 0px #A4A4A4;
	-moz-box-shadow: 0px 0px 3px 0px #A4A4A4;
	box-shadow: 0px 0px 3px 0px #A4A4A4;
	background: #FAFAFA;
	padding: 20px;
}

.filegroup {
	margin: 10px 130px 10px 100px;
}

.crwgroup {
	width: 300px;
	height: auto;
	margin: 10px 150px 10px 0px;
}

.row {
	margin: 10px 500px 10px 100px;
}
</style>
	<style>
input[type="text"] {
	color: black;
}

#enter {
	width: 960px;
	height: 20px;
}

#btnses {
	width: 760px;
	background: pink;
	clear: both;
}

#btnses>input {
	float: right;
	margin-left: 20px;
	margin-bottom: 50px;
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
	filter: alpha(opacity = 0);
}

.image-preview-input-title {
	margin-left: 2px;
}

.msgCheckNick {
	margin-left: 10px;
	font-size: 15px;
}
</style>
<script>
$(function() {
	//그림 클릭 시 업로드 창 띄워 업로드 후 미리보기
	$('#profile-image1').on('click', function() {
		$('#profile-image-input').click();
		
		$("#profile-image-input").change(function (){     
	        
	        var file = this.files[0];
	        var reader = new FileReader();
	        // Set preview image into the popover data-content
	        reader.onload = function (e) {
	        	 $(".image-preview-input-title").text("변경");
	             $(".image-preview-filename").val(file.name);            
	            $("#profile-image1").attr('src', e.target.result);
	        }        
	        reader.readAsDataURL(file);
	    });
	});
	
	// 업로드 버튼으로 그림피일 업로드 후 미리보기
	$(".image-preview-input input:file").change(function (){     
        
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview-input-title").text("변경");
            $(".image-preview-filename").val(file.name);            
            $("#profile-image1").attr('src', e.target.result);
        }        
        reader.readAsDataURL(file);
    });
	
	// textfield 생성
	$('#plus-textField').on('click',function(){
		var textField = "<div class='add-field'>";
			textField +="<label class='control-label col-sm-1' for='career'>+</label>"; 
			textField +="<div class='col-sm-4'>";
			textField +="<div class='input-group'>";
			textField +="<input type='text' class='form-control'id='minus-textField' placeholder='경력을 추가 입력하세요.'>";
			textField +="<span class='input-group-btn'>";
			textField +="<button class='btn btn-default minus-textbutton' type='button'>-</button>";
			textField +="</span></div></div><p id='enter' /><p id='enter' /></div>";
		$('#add-textField').append(textField);
		
		$(".minus-textbutton").bind('click',function(){
			$(this).parent().parent().parent().parent().remove();
		});
	});
	//아이디 중복 확인
	$('#nickCheck').click(function(){
    	var idValue = $('#nick').val();
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
    			$('.msgCheckNick').html(code).attr("id",attr);
    		},
    		dataType : 'json' 
    	});
    });
});
</script>
	<form class="form-horizontal" action="#">
		<fieldset>
			<legend>마이페이지</legend>
			<div class="mypage">
				<div id="row">
					<div class="form-group">
						<label class="control-label col-sm-2" for="nick">닉네임</label>
						<div class="col-sm-6">
							<div class="input-group">
								<input type="text" class="form-control" id="nickname"
									name="nickname" placeholder="닉네임을 입력하세요."> <span
									class="input-group-btn">
									<button class="btn btn-default" id="nickCheck" type="button">중복확인</button>
									<span class="msgCheckname"></span>
								</span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="career">경력</label>
						<div class="col-sm-6">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="경력을 입력하세요.">
								<span class="input-group-btn">
									<button class="btn btn-default" id="plus-textField"
										type="button">+</button>
								</span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="activity">활동지역</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="activity"
								placeholder="주 활동 지역을 입력하세요" name="activity">
						</div>
					</div>
				</div>

				<div class="team-mem"></div>
				<div class="col-sm-2">
					<div class="filess">
						<img alt="User Pic"
							src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
							id="profile-image2" class="img-circle img-responsive"> <input
							id="profile-image-input2"
							accept="image/png, image/jpeg, image/gif" class="hidden"
							type="file">
						<div style="color: #999;">그림을 클릭하여 이미지를 변경합니다.</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-1" for="upload">이미지</label>
					<div class="col-sm-5">
						<div class="input-group">
							<input type="text" class="form-control image-preview-filename"
								placeholder="사진 파일을 업로드 하세요." disabled="disabled"> <span
								class="input-group-btn">
								<div class="btn btn-default image-preview-input">
									<span class="glyphicon glyphicon-folder-open" /> <span
										class="image-preview-input-title">업로드</span> <input
										type="file" accept="image/png, image/jpeg, image/gif"
										name="input-file-preview" />
								</div>
							</span>
						</div>
					</div>

					<p id="enter"></p>
					<p id="enter"></p>
<script>
$(function() {
	$('#profile-image2').on('click', function() {
		//팀원 사진 클릭 시 업로드 및 미리 보기
		$('#profile-image-input2').click();
		
		$("#profile-image-input2").change(function (){     
	        
	        var file = this.files[0];
	        var reader = new FileReader();
	        // Set preview image into the popover data-content
	        reader.onload = function (e) {
	        	 $(".image-preview-input-title").text("변경");
	             $(".image-preview-filename").val(file.name);            
	            $("#profile-image2").attr('src', e.target.result);
	        }        
	        reader.readAsDataURL(file);
	    });
			
		//팀원 버튼 시 팀원 입력창 생성
		$('#plus-team-mem').on('click',function(){
			var textField = "<div class='add-field'>";
				textField +="<label class='control-label col-sm-1' for='career'>+</label>"; 
				textField +="<div class='col-sm-5'>";
				textField +="<div class='input-group'>";
				textField +="<input type='text' class='form-control'id='minus-textField' placeholder='경력을 추가 입력하세요.'>";
				textField +="<span class='input-group-btn'>";
				textField +="<button class='btn btn-default minus-textbutton' type='button'>-</button>";
				textField +="</span></div></div><p id='enter' /><p id='enter' /></div>";
			$('#add-textField').append(textField);
			//팀원 삭제
			$(".minus-textbutton").bind('click',function(){
				$(this).parent().parent().parent().parent().remove();
			});
		});
	});
});	
</script>
					<div class="teamgroup">
						<label class="control-label col-sm-1" for="career">팀원</label>
						<div class="col-sm-5">
							<div class="input-group">
								<input type="text" class="form-control" id="team-mem"
									placeholder="팀원을 입력하세요."> <span class="input-group-btn">
									<button class="btn btn-default" id="plus-team-mem"
										type="button">+</button>
								</span>
							</div>
						</div>

						<p id="enter"></p>
						<p id="enter"></p>

						<div class="form-group">
							<label class="control-label col-sm-1" for="crw-name">이름</label>
							<div class="col-sm-4">
								<input type="text" class="form-control"
									placeholder="팀원의 이름을 입력하세요.">
							</div>

							<p id="enter"></p>
							<p id="enter"></p>
							
						<div class="form-group">
							<label class="control-label col-sm-1" for="crw-role">역할</label>
							<div id="btns">
								<div class="col-sm-4">
									<input type="text" class="form-control"
										placeholder="팀원의 역할을 입력하세요" name="crw-role">
								</div>
							</div>
						</div>
						</div>
					</div>
				</div>
				
			<div id="btnses">
				<input type="reset" class="btn btn-danger" value="취소" />
				<input type="submit" class="btn btn-primary" value="삭제" />
				<input type="submit" class="btn btn-primary" value="수정" />
			</div> 
		</fieldset>
	</form>
</body>
</html>