<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<!-- glyphicon CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="/cas/resources/css/fundEnrollmentStep.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style>

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}

tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

button, input[type='button'], input[type='submit'], input[type='reset'], input[type='file'] {
    -webkit-appearance: button;
    border-radius: 0;
}

.appl-tab{

	background-color: #337ab7;
    width: 100px;
    height: 100px;
    text-align: center;
    padding-top: 38px;


}

.innerOFA .tstep .txtarea {
    box-sizing: border-box;
    resize: none;
    width: 516px;
    height: 158px;
    border: 1px solid #cfcfcf;
}

.inner_title .tit_h2 {
    width : 920px;
    font-weight: 600;
    display: table-cell;
    padding: 93px 0 60px 0;
    vertical-align: middle;
    font-size: 28px;
    /* font-weight: bold; */
    color: #fff;
    text-align: center;
    background-color: #337ab7;
}

</style>
<div class="title_wrap">
	<div class="inner_title centerRange">
		<h2 class="tit_h2">펀딩 등록하기</h2>
	</div>
</div>

<style>
	.appl-step1 {
		clear : both;
	}
	.appl-tab {
		float : left;
		margin-left: 50px;
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
	img {
		cursor:pointer;
	}
	#enter {
		width : 736px;
		height : 34px;
	}
	#btnEnter {
		width : 736px;
		height : 30px;
	}
</style>
<div class="innerOFA">
	<div class="appl_step1">
	<!--//appl-tab-->
	<form name="tx_editor_form" style="width: 960px;" id="tx_editor_form" action="/cas/member/${resultUrl}" method="post" accept-charset="utf-8">
	        
	<input type="hidden" name="mode" value="step1">
	<input type="hidden" name="seq" id="seq" value="">
	<input type="hidden" name="PartnerShip" value="">
	<input type="hidden" name="CorpNo" value="20170704-0027">
	<input type="hidden" name="CorpName" value="설승민">
	<input type="hidden" name="temp_save" id="temp_save">
	<div class="appl_page">
	<h1>크라우드 펀딩 등록 회원 정보</h1>
		<p class="required">*은 필수 입력 항목입니다.</p>
		<table class="tstep">
			<tbody>
			<tr class="nth1">
				<th scope="row">진행자명(팀명)<span class="star">*</span></th>
				<td>
				<div class="form-group">
					<div class="col-sm-4">
						<input type="text" class="form-control" name="CorpName" value="설승민" readonly="readonly" />
					</div>
				</div>
				</td>
			</tr>
			<tr class="nth2">
				<th scope="row">대표 이메일<span class="star">*</span></th>
				<td>
				<div class="form-group">
					<div class="col-sm-4">
						<input type="email" style="width: 465px;" class="form-control" value="" placeholder="E-mail을 입력해주세요." name="prj_user_mail">
					</div>
				</div>	
				</td>
			</tr>
			<tr class="nth3">
				<th scope="row">대표 전화번호<span class="star">*</span></th>
				<td>
				<div class="form-group">
					<div class="col-sm-4">
						<input type="tel" style="width: 465px;" class="form-control" value="" placeholder="대표 전화번호는 숫자로만 입력해주세요." name="prj_user_tel">
					</div>
				</div>
				</td>
			</tr>
<script>
//우편번호 검색
$(function(){
	$('#zip-btn').on('click',function(){
		var url = "/cas/signup/zipSearch.jsp";
		window.open(url,"우편번호검색","width=500 height=400 top=300");		
	});
});
</script>			
			<tr class="nth4">
				<th scope="row">주소<span class="star">*</span></th>
				<td>
					<div class="form-group">
						<div class="col-sm-3">
						  <div class="input-group">
						    <input type="text" style="min-width:385px;" class="form-control" id="zip" 
						    	placeholder="우편번호 버튼을 눌러주세요" name="memMailnumber" disabled="disabled">
						    <span class="input-group-btn">
						      <button id="zip-btn"class="btn btn-default" type="button">우편번호</button>
						    </span>
						  </div>
						</div>
					</div>
					
					<p id="btnEnter" />
					<div class="form-group">
						<div class="col-sm-4">
							<input id="add1" type="text" name="address1" size="50" value="대전 동구 판암동 497-7" class="form-control" readonly="readonly">
						</div>
					</div>
					<p id="enter" />
							
					<div class="form-group">
						<div class="col-sm-4">		
							<input id="add2" type="text" name="address2" size="50" value="" class="form-control">
						</div>
					</div>
					<input type="hidden" id="fullAddr" name="memAddr"/>		
				</td>
			</tr>
			</tbody>
		</table>
	</div>
	<!-----------------------------------------두번째폼---------------------------------------------- -->
<script>
$(function(){
	var tCnt = $('#taCount').text().split("/")[1];
	$('#ProjectArea').keydown(function(){
		//남은 글자수 = 50 - 입력된 글자수;
		count = $(this).val().length+1;
		$('#maCount').text(count);
		if(count >= tCnt){
			var cut = $(this).val().substring(0,35);
			$(this).val(cut);
			sweetAlert("글자 제한", "40자까지 글자수가 제한됩니다.", "error");
		}
	});	
});
</script>	
	<div class="appl_page">
	<h1>크라우드 펀딩 기본 정보 입력</h1>
		<table class="tstep">
			<tbody>
			<tr class="nth5">
				<th scope="row">프로젝트 명<span class="star">*</span></th>
				<td>
				<div class="form-group">
					<div class="col-sm-6">
						<input type="text" class="form-control area" id="ProjectArea" name="ProjectArea" placeholder="프로젝트 명을 입력하세요.">
						<span id="maCount">0</span><span id="taCount">/40</span>
					</div>
				</div>	
				</td>
			</tr>
<script>
//업로드 버튼으로 그림피일 업로드 후 미리보기
$(function(){
	$(".image-preview-input input:file").change(function (){     
	    
	    var file = this.files[0];
	    var reader = new FileReader();
	    //Set preview image into the popover data-content
	    reader.onload = function (e) {
	        $(".image-preview-input-title").text("변경");
	        $(".image-preview-filename").val(file.name);
	        $("#img").removeClass('hide');
	        $("#profile-image").attr({'src':e.target.result, 'width':'400px','height':'400px'});
	    }        
	    reader.readAsDataURL(file);
	});	
})
</script>			
			<tr  class="nth6">
				<th scope="row">프로젝트 대표이미지 등록<span class="star">*</span></th>
				<td>
				
				<div class="form-group">
					<div class="col-sm-4">
					  <div class="input-group">
					    <input type="text" style="min-width:385px;" class="form-control image-preview-filename" placeholder="사진 파일을 업로드 하세요. (※image size 680*408 pixel)" disabled="disabled">
					    <span class="input-group-btn">
					      <span class="btn btn-default image-preview-input">
	                        <i class="glyphicon glyphicon-folder-open"></i>
	                        <span class="image-preview-input-title">업로드</span>
	                        <input type="file" accept="image/png, image/jpeg, image/gif"/>
	                     </span>
					    </span>
					  </div>
					</div>
				</div>	
				<p id="enter" />
				<div class="form-group hide" id="img">
					<div class="col-sm-4">
						<img alt="프로젝트 대표이미지" src="" id="profile-image"/>
					</div>
				</div>
				</td>
			</tr>
<script>
$(function(){
	var tCnt = $('#etaCount').text().split("/")[1];
	$('#ExplainText').keydown(function(){
		//남은 글자수 = 50 - 입력된 글자수;
		count = $(this).val().length+1;
		$('#emaCount').text(count);
		if(count >= tCnt){
			$(this).val($(this).val().substring(0,290));
			sweetAlert("글자 제한", "300자까지 글자수가 제한됩니다.", "error");
		}
	});	
});
</script>			
			<tr class="nth7">
				<th scope="row">프로젝트 간략소개<span class="star">*</span></th>
				<td>
					<div class="form-group" id="img">
						<div class="col-sm-4">
							<textarea class="txtarea" id="ExplainText" name="ExplainText" placeholder="프로젝트의 간단한 소개할 내용을 입력하세요."></textarea>
							<span id="emaCount">0</span><span id="etaCount">/300</span>
						</div>
					</div>
				</td>
			</tr>
			<tr class="nth8">
				<th scope="row">프로젝트 내용입력<span class="star">*</span>
				<br>
				<div id="arrow_div">
					<p class="mb5"><span class="d_cmn">
						※ 문장에 적용한 효과를 삭제하려면 해당 문장을 선택한 뒤 적용한 효과 버튼을 한번 더 눌러주세요.<br><br>
						※ 타 파일에서 문장 및 표등을 복사, 붙여넣기 전에 메모장등에 한번 거쳐서 입력해주세요.<br><br>
						※ 이미지가 삽입되지 않는다면, 이미지 크기가 커서 용량 제한이 있을 수 있습니다. 이미지 크기를 줄여서 삽입해주세요.
					</span></p>
				</div>
				</th>
				<td style="position:relative;">
					<div>
						<jsp:include page="/WEB-INF/views/daumeditor/includeEditor.jsp" flush="false"></jsp:include>
					</div>
				</td>
			</tr>
			<tr class="nth9">
				<th scope="row">해시태그(#)</th>
				<td>
					<div class="form-group" id="img">
						<div class="col-sm-4">
							<input type="text" class="form-control" name="tag" placeholder="※ 태그와 태그는 쉼표로 구분하며(태그앞에 #)을 붙여주세요.ex) #태그" value="">
						</div>
					</div>
				</td>
			</tr>
			</tbody>
		</table>
	</div>
<!------------------------  마지막 스텝부분 ---------------------------------------------------------------------->
	<div class="appl_step1"  style="min-height: 0;">
	<h1>크라우드 펀딩 상세 정보 입력</h1>	
		<table class="tstep">
			<tbody>
			<tr class="nth10">
				<th scope="row">펀딩시작일<span class="star">*</span></th>
				<td>
					<input type="date" style="width: 465px;" class="form-control" id="InvestStartDate" name="InvestStartDate" title="시작일" value=""placeholder="펀딩시작일 선택"> 
				</td>
			</tr>
			<tr  class="nth11">
				<th scope="row">펀딩마감일<span class="star">*</span></th>
				<td>
					<input type="date" style="width: 465px;" class="form-control" id="InvestEndDate" name="InvestEndDate" title="종료일" value="" placeholder="펀딩마감일 선택">
				</td>
			</tr>
			<tr  class="nth12">
				<th scope="row">펀딩목표금액(<i class="fa fa fa-krw"></i>)<span class="star">*</span></th>
				<td>
					<input type="text" class="tel form-control"id="TargetAmt" name="TargetAmt" placeholder="※ 숫자만 입력가능, “ , ” 삽입불가"> 
					
				</td>
			</tr>
			<tr  class="nth13">
				<th scope="row">펀딩방식<span class="star">*</span></th>
				<td>
					<input type="radio" id="FundingTypeK" name="FundingType" value="K"> <label for="FundingTypeK"> 투자형</label> 
					<input type="radio" id="FundingTypeA" name="FundingType" value="A"> <label for="FundingTypeA"> 후원형</label> 
				<br>
				</td>
			</tr>
			<tr class="nth14">
				<th scope="row">사업자등록증 <span class="star">*</span></th>
				<td>
					<input type="file" class="file" name="businessRegistration" id="businessRegistration">
					<span class="d_cmn">※ 정산을 위해 사업자등록증, 개인일 경우 신분증사본을 첨부해주세요</span>
				</td>
			</tr>
			<tr class="nth15">
			<th scope="row">통장사본<span class="star">*</span></th>
			<td>
			<input type="file" class="file" name="copyOfTheBankbook" id="copyOfTheBankbook">
			<span class="d_cmn">※정산을 위해 통장사본을 첨부해주세요.</span>
			</td>
			</tr>
			<tr>
			<th scope="row">안내문</th>
			<td>
			<div class="info-txt">
			<!-- <b> 확인해주세요</b>-->
			제출된 신청서 확인은 업무일 기준 1-3일이 소요됩니다<br>
			펀딩정산은 펀딩종료 후 5~10일 가량이 소요됩니다.<br>
			펀딩정산서류인 사업자등록증 및 통장사본의 변경이 있을 경우 펀딩 종료일 전까지 오마이컴퍼니 측에 제출하여야 합니다.<br>
			펀딩 게시 전까지 프로젝트 수정이 가능합니다. 수정은 Mypage&gt; 개설한 프로젝트에서 진행해주세요.
			</div>
			</td>
			</tr>
			</tbody>
		</table>
		<div class="appl_btn mt20"  style="text-align: center; margin-top:10px;" >
		<input type="button" value="취소" class="btn btn-danger" style="display: inline-block; width: 152px; padding: 0 0;font-size: 16px;margin-left: 5px;">
		<input type="button" value="펀딩 등록" class="btn btn-primary" onclick='saveContent()' style="display: inline-block; width: 152px; padding: 0 0;font-size: 16px;margin-left: 5px;">
		</div>
	</div>	
		
		</form>
	</div>
</div>

<!-- Sample: Saving Contents -->
<script type="text/javascript">
	/* 예제용 함수 */
	function saveContent() {
		Editor.save(); // 이 함수를 호출하여 글을 등록하면 된다.
	}

	/**
	 * Editor.save()를 호출한 경우 데이터가 유효한지 검사하기 위해 부르는 콜백함수로
	 * 상황에 맞게 수정하여 사용한다.
	 * 모든 데이터가 유효할 경우에 true를 리턴한다.
	 * @function
	 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
	 * @returns {Boolean} 모든 데이터가 유효할 경우에 true
	 */
	function validForm(editor) {
		// Place your validation logic here

		// sample : validate that content exists
		var validator = new Trex.Validator();
		var content = editor.getContent();
		if (!validator.exists(content)) {
			sweetAlert("내용을 입력하세요", "", "error");
			return false;
		}

		return true;
	}

	/**
	 * Editor.save()를 호출한 경우 validForm callback 이 수행된 이후
	 * 실제 form submit을 위해 form 필드를 생성, 변경하기 위해 부르는 콜백함수로
	 * 각자 상황에 맞게 적절히 응용하여 사용한다.
	 * @function
	 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
	 * @returns {Boolean} 정상적인 경우에 true
	 */
	function setForm(editor) {
        var i, input;
        var form = editor.getForm();
        var content = editor.getContent();

        // 본문 내용을 필드를 생성하여 값을 할당하는 부분
        var textarea = document.createElement('textarea');
        textarea.name = 'content';
        textarea.value = content;
        form.createField(textarea);
//         alert(content);

        /* 아래의 코드는 첨부된 데이터를 필드를 생성하여 값을 할당하는 부분으로 상황에 맞게 수정하여 사용한다.
         첨부된 데이터 중에 주어진 종류(image,file..)에 해당하는 것만 배열로 넘겨준다. */
        var images = editor.getAttachments('image');
        for (i = 0; i < images.length; i++) {
            // existStage는 현재 본문에 존재하는지 여부
            if (images[i].existStage) {
                // data는 팝업에서 execAttach 등을 통해 넘긴 데이터
//                 alert('attachment information - image[' + i + '] \r\n' + JSON.stringify(images[i].data));
                input = document.createElement('input');
                input.type = 'hidden';
                input.name = 'attach_image'+(i+1);
                input.value = images[i].data.imageurl;  // 예에서는 이미지경로만 받아서 사용
                form.createField(input);
            }
        }

        var files = editor.getAttachments('file');
        for (i = 0; i < files.length; i++) {
            input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'attach_file';
            input.value = files[i].data.attachurl;
            form.createField(input);
        }
        return true;
	}
</script>
</body>