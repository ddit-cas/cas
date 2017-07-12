<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
</head>
<title>회원가입</title>
<style>

.container {
	width: 960px;
	margin: 50px auto;
}

.colorgraph {
	width: 630px;
	height: 5px;
	border-top: 0;
	background: #A4A4A4;
	border-radius: 5px;
}

.contfile {
	display: inline-block;
	text-align: left;
}

.crwgrop {
	margin: 5px 555px 10px 185px;
	padding-top: 5px;
	padding-left: 10px;
	border: 2px solid gray;
}

.essen {
	width: 730px;
	background: #FAFAFA;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: 0px 0px 3px 0px #A4A4A4;
	-moz-box-shadow: 0px 0px 3px 0px #A4A4A4;
	box-shadow: 0px 0px 3px 0px #A4A4A4;
	background: #FAFAFA;
}
h3{
	margin:5px 35px;
}

.form-group{
	width:1025px;
}

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
<script>
$(function(){
    $('#idCheck').click(function(){
    	var idValue = $('#mem_id').val();
    	$.ajax({
    		url : 'idCheck.jsp',
    		type : 'post',
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
    			$('span:first').html(code).attr("id",attr);
    		},
    		dataType : 'json' 
    	});
    });
});    
</script>

<body>
	<form class="form-horizontal" action="#">
	<fieldset>
		<legend>필수사항</legend>
		<div class="container">
			<div class="essen">
<!-- 				<h3></h3> -->
<!-- 				<hr class="colorgraph"> -->
				<div class="imfom">
					<div class="form-group">
						<label class="control-label col-sm-2" for="id">아이디</label>
						<div class="col-sm-6">
						  <div class="input-group">
						    <input type="text" class="form-control" placeholder="아이디를 입력하세요.">
						    <span class="input-group-btn">
						      <button class="btn btn-default" type="button">중복확인</button>
						    </span>
						  </div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd1">비밀번호</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="pwd1"
								placeholder="비밀번호를 입력하세요." name="pwd1">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd1">비밀번호확인</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="pwd2"
								placeholder="위와 같은 비밀번호를 입력하세요." name="pwd2">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="name">이름</label>
						<div class="col-lg-6">
						  <div class="input-group">
						    <input type="text" class="form-control" id="name"
								placeholder="이름을 입력하세요." name="name" aria-label="name">
						    <span class="input-group-addon">
						    <label><input type="checkbox" aria-label="name">&nbsp;&nbsp;공개</label>
						    </span>
						  </div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="birth">생년월일</label>
						<div class="col-sm-6">
							<input type="date" class="form-control" id="bir"
								placeholder="year" name="bir">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="name">전화번호</label>
						<div class="col-lg-6">
						  <div class="input-group">
						    <input type="tel" class="form-control" id="tel"
								placeholder="전화번호를 입력하세요." name="tel" aria-label="tel">
						    <span class="input-group-addon">
						    <label><input type="checkbox" aria-label="tel">&nbsp;&nbsp;공개</label>
						    </span>
						  </div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이메일</label>
						<div class="col-lg-6">
						  <div class="input-group">
						    <input type="email" class="form-control" id="email"
								placeholder="이메일을 입력하세요." name="email" aria-label="email">
						    <span class="input-group-addon">
						    <label><input type="checkbox" aria-label="email">&nbsp;&nbsp;공개</label>
						    </span>
						  </div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="zip">우편번호</label>
						<div class="col-sm-6">
						  <div class="input-group">
						    <input type="text" class="form-control" id="zip" 
						    	placeholder="우편번호 버튼을 눌러주세요" name="zip" disabled>
						    <span class="input-group-btn">
						      <button class="btn btn-default" type="button">우편번호</button>
						    </span>
						  </div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="addres">주소</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="add1"
								placeholder="주소는 자동으로 입력 됩니다." name="add1" disabled>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="addres">상세주소</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="add2"
								placeholder="상세주소 입력하세요" name="add2">
						</div>
					</div>
				</div>
			</div>
			</div>
		</fieldset>
		</form>
<style>
	input[type="text"] {
		color:black;
	}
	#enter {
		width : 960px;
		height : 20px;
	}
	#btnses {
		width : 760px;
		background: pink;
		clear : both;
	}
	#btnses>input {
		float : right;
		margin-left : 20px;
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
		filter: alpha(opacity=0);
	}
	.image-preview-input-title {
	    margin-left:2px;
	}
</style>
<script>
$(function() {
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
	
	// Create the preview image
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
});       
</script>

	<!-- 선택사항 -->
	<form class="form-horizontal" action="#">
	<fieldset>
	<legend>선택사항</legend>
		<div class="contSelect">
			<div class="box-body">
				<div class="col-sm-3">
					<div class="filess" style="width:300px; height:400px;">
						<img alt="User Pic"
							src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
							id="profile-image1" class="img-circle img-responsive">
						<input id="profile-image-input"  accept="image/png, image/jpeg, image/gif" class="hidden" type="file">
						<div style="color:#999;">그림을 클릭하여 이미지를 변경합니다.</div>	
					</div>
				</div>
				 
				<p id="enter"></p>
				<p id="enter"></p>
				 
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
					    <input type="text" class="form-control" placeholder="닉네임을 입력하세요.">
					    <span class="input-group-btn">
					      <button class="btn btn-default" type="button">중복확인</button>
					    </span>
					  </div>
					</div>
					
					<p id="enter"></p>
					<p id="enter"></p>
					
					<label class="control-label col-sm-1" for="career">경력</label>
					<div class="col-sm-4">
					  <div class="input-group">
					    <input type="text" class="form-control" placeholder="경력을 입력하세요.">
					    <span class="input-group-btn">
					      <button class="btn btn-default" id="plus-textField" type="button">+</button>
					    </span>
					  </div>
					</div>
					
					<p id="enter"></p>
					<p id="enter"></p>
					
					<div id="add-textField"></div>
					
					<label class="control-label col-sm-1" for="activity">활동지역</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="activity"
							placeholder="주 활동 지역을 입력하세요" name="activity">
					</div>
				</div>
			</div>
		</div>
		</fieldset>

<script>
$(function() {
	$('#profile-image2').on('click', function() {
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
	});
});	
</script>		
		<div class="team-mem">
		<div class="box-body">
			<div class="col-sm-2">
				<div class="filess">
					<img alt="User Pic"
						src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
						id="profile-image2" class="img-circle img-responsive">
					<input id="profile-image-input2"  accept="image/png, image/jpeg, image/gif" class="hidden" type="file">
				</div>
			</div>
			 
			<label class="control-label col-sm-1" for="crw-name">이름</label>
			<div class="col-sm-2">
			    <input type="text" class="form-control" placeholder="팀원의 이름을 입력하세요.">
			</div>
			
			<p id="enter"></p>
			<p id="enter"></p>
			
			<label class="control-label col-sm-1" for="crw-role">역할</label>
			<div id="btns">
				<div class="col-sm-2">
					<input type="text" class="form-control"	placeholder="팀원의 역할을 입력하세요" name="crw-role">
				</div>
			</div>
				
			<p id="enter"></p>
			<p id="enter"></p>
			
			<label class="control-label col-sm-1" for="crw-role">소개글</label>
			<div class="input-group">
                <div class="field span3" >
                    <textarea class="form-control" wrap='on' rows="3" cols="20" placeholder="소개글을 남겨주세요."></textarea>
                </div>
            </div>
				
		</div>
				
		<div id="btnses">
			<input type="submit" class="btn btn-primary" value="가입" />
			<input type="reset" class="btn btn-danger" value="취소" />
		</div> 
				
		</div>
	</form>
</body>
</html>




