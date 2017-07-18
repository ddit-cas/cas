<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


<link rel="stylesheet" href="/cas/resources/css/fundEnrollmentStep.css" type="text/css">


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

background-color: #6291c3;
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

</style>
<div class="title_wrap">
			<div class="inner_title centerRange">
				<h2 class="tit_h2">프로젝트 신청하기</h2>
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
	
</style>
<div class="innerOFA">
            <div class="appl_step1">
            
                <div class="appl-tab">
        
                        <a href="#none" class="on" style="color:white; padding: 0px 29px;"><em>STEP1</em></a>
                                                      
                </div>

                <div class="appl-tab">
        
                        <a href="#none" class="on" style="color:white; padding: 0px 29px;"><em>STEP2</em></a>
                                                      
                </div>

                <div class="appl-tab">
        
                        <a href="#none" class="on" style="color:white; padding: 0px 29px;"><em>STEP3</em></a>
                                                      
                </div>
                
                <!--//appl-tab-->
                	<form name="tx_editor_form" style="width: 750px;" id="tx_editor_form" action="/cas/member/${resultUrl}" method="post" accept-charset="utf-8">
                
                    <input type="hidden" name="mode" value="step1">
                    <input type="hidden" name="seq" id="seq" value="">
                    <input type="hidden" name="PartnerShip" value="">
                    <input type="hidden" name="CorpNo" value="20170704-0027">
                    <input type="hidden" name="CorpName" value="설승민">
                    <input type="hidden" name="temp_save" id="temp_save">
                    <div class="appl_page">
                        <p class="required">*은 필수 입력 항목입니다.</p>
                        <table class="tstep">
                            <tbody>
                                <tr class="nth1">
                                    <th scope="row">진행자명(기업명)<span class="star">*</span></th>
                                    <td>
                                        <input type="text" class="host" name="CorpName" value="설승민" readonly="readonly">
                                    </td>
                                </tr>
								 <tr class="nth9">
                                    <th scope="row">대표 이메일<span class="star">*</span></th>
                                    <td>
                                        <input type="text" class="email in_comn" value="" name="prj_user_mail">
                                    </td>
                                </tr>
								 <tr class="nth10">
                                    <th scope="row">대표 전화번호<span class="star">*</span></th>
                                    <td>
                                        <input type="text" class="tel in_comn" value="" name="prj_user_tel">
										<span class="d_cmn">대표 전화번호는 숫자로만 입력해주세요.</span>
                                    </td>
                                </tr>
								<tr class="nth11">
                                    <th scope="row">대표자명<span class="star">*</span></th>
                                    <td>
                                        <input type="text" name="CEO" value="">
                                    </td>
                                </tr>
								<tr class="nth11">
                                    <th scope="row">주소<span class="star">*</span></th>
                                    <td>
										<input id="zip" type="text" name="zip" size="10" value="34672" readonly="readonly">
										<input type="button" value="우편번호 검색" class="button  btn-green-sm" onclick="openDaumZipAddress()">
										<br>
										<input id="address1" type="text" name="address1" size="50" value="대전 동구 판암동 497-7" class="mt10" readonly="readonly">
										<input id="address2" type="text" name="address2" size="50" value="" class="mt10">
									</td>
                                </tr>
								<!--<tr class="nth7">
									<th scope="row">주소<span class='star'>*</span></th>
									<td>
										<input type="text" class="in_comn" value="" name="CorpAddress"><span class='d_cmn'>※  사업자등록증 기준, 사업자등록증이 없는 창업팀의 경우 대표자 주소로 기재</span></td>
								</tr>-->

								<tr>
									<th scope="row">사진등록<span class="star">*</span></th>
									<td>
																					<input type="file" name="mb_files[photo1]" size="30" hname="사진" style="background-color:#fff;">				
																						<span class="d_cmn">980b369b73283ddb43e67d9876511c9f_wXt7A1GbT2v.jpg</span>
											<input type="checkbox" name="mb_files_del[photo1]" value="1" class="ml10">
											<span class="d_cmn">삭제(사진을 등록해 주세요.)</span>
																														
										<br>
										<span style="font-size:14px; padding-top:5px; color:orange">* 사이즈 구분없이 정사각형 비율의 사진을 올려주세요.</span>
									</td>
								</tr>



								<tr class="nth13">
                                    <th scope="row">홈페이지</th>
                                    <td>
                                        <input type="text" class="homp in_comn" value="" name="prj_home_url">
                                        <span class="d_cmn">※  입력 시 'http://' 제외</span></td>
                                </tr>
                                <tr class="nth14">
                                    <th scope="row">페이스북</th>
                                    <td>
                                        <input type="text" class="faceb in_comn" value="" name="prj_facebook"><span class="d_cmn">※  입력 시 'http://' 제외</span></td>
                                </tr>
                                <tr class="nth15">
                                    <th scope="row">블로그</th>
                                    <td>
                                        <input type="text" class="blog in_comn" value="" name="prj_blog"><span class="d_cmn">※  입력 시 'http://' 제외</span></td>
                                </tr>
								<tr class="nth15">
                                    <th scope="row">인스타그램</th>
                                    <td>
                                        <input type="text" class="blog in_comn" value="" name="prj_insta"><span class="d_cmn">※  입력 시 'http://' 제외</span></td>
                                </tr>

								
                               
                            </tbody>
                        </table>
						
						<script type="text/javascript"> 
				  
								$(document).ready(function() { 
							  
									// DOM 생성 완료 시 화면 숨김 (파라미터로 전달되는 id는 제외) 
									// hideExclude("change1"); 
							 
									// radio change 이벤트 
									$("input[name=radioName]").change(function() { 
										var radioValue = $(this).val(); 
										if (radioValue == "radio1") { 
											hideExclude("change1"); 
										} else if (radioValue == "radio2") { 
											hideExclude("change2"); 
										
										} 
									});
									 
									// 체크 되어 있는지 확인 
									var checkCnt = $("input[name=radioName]:checked").size(); 
									if (checkCnt == 0) { 
										// default radio 체크 (첫 번째) 
										$("input[name=radioName]").eq(0).attr("checked", true); 
										$("input[name=radioName]").eq(0).change(); 
									}else{
										$("input[name=radioName]:checked").change();
									} 
							  
								}); 
							 
								// text area 숨김 
								function hideExclude(excludeId) { 
									$("#changeTextArea").children().each(function() { 
										$(this).hide(); 
									}); 
							  
									// 파라미터로 넘겨 받은 id 요소는 show 
									$("#" + excludeId).show(); 
								} 
							 
							</script>

						
						
					</div>
					
<!-----------------------------------------두번째폼---------------------------------------------- -->
					<div class="appl_page">
                        <p class="required">
						*은 필수 입력 항목입니다.  </p>
                        <table class="tstep">
                            <tbody>
                                <tr>
                                    <th scope="row">프로젝트 분야<span class="star">*</span></th>
                                    <td>
                                         <input type="text" class="area" id="ProjectArea" name="ProjectArea" value="" maxlength="40" onkeyup="checkByte(this,'h_project_name_cbyte',40)">
                                         <span class="fact_number d_cmn"><span name="h_project_name_cbyte" id="h_project_name_cbyte">0</span>/40</span>
                                    </td>
                                </tr>
                               
                                
                                <tr class="nth5">
                                    <th scope="row">프로젝트 대표이미지 등록<span class="star">*</span></th>
                                    <td style="position:relative;">
                                        <div id="mainImagePreview">
                                        
                                        </div>
                                        <input type="file" class="file" name="MainImage" id="MainImage"><span class="fname d_cmn">image size 680*408 pixel </span>
                                        <p class="pred d_cmn">※ 프로젝트 별 상세페이지 상단에 노출되는 배너이미지입니다.</p>
                                        <input type="hidden" name="MainImage_old" value="">
                                    </td>
                                </tr>
								 

								
								<tr class="nth4">
                                    <th scope="row">프로젝트 간략소개<span class="star">*</span></th>
                                    <td>
                                        <textarea class="txtarea" id="ExplainText" name="ExplainText" onkeyup="checkByte(this,'h_time_cbyte',50)"></textarea>
                                        <span class="fact_number d_cmn"><span name="h_time_cbyte" id="h_time_cbyte">0</span>/50</span>
                                    </td>
                                </tr>
                                <tr class="nth6">
                                    <th scope="row">
                                        프로젝트 내용입력<span class="star">*</span>
                                        <br>
                                        <div id="arrow_div">
                                            <p class="mb5">
                                                <span class="d_cmn">
									                                                    ※ 문장에 적용한 효과를 삭제하려면 해당 문장을 선택한 뒤 적용한 효과 버튼을 한번 더 눌러주세요.<br><br>
									                                                    ※ 타 파일에서 문장 및 표등을 복사, 붙여넣기 전에 메모장등에 한번 거쳐서 입력해주세요.<br><br>
									                                                    ※ 이미지가 삽입되지 않는다면, 이미지 크기가 커서 용량 제한이 있을 수 있습니다. 이미지 크기를 줄여서 삽입해주세요.
                                                </span>
                                            </p>
                                        </div>
                                    </th>
                                    <td style="position:relative;">
										 <p class="mb5"><span class="d_cmn">※ 문단과 문단 사이 간격이 넓습니다. 간격을 줄이실려면 <span class="star">shift + enter</span> 를 사용해주세요.</span></p>
										<div>
									 	<jsp:include page="/WEB-INF/views/daumeditor/includeEditor.jsp" flush="false"></jsp:include>
										 </div>
                                    </td>
                                </tr>
                               
                                <tr class="nth8">
                                    <th scope="row">해시태그(#)</th>
                                    <td>
                                        <input type="text" class="putag" name="tag" value="">
                                        <br><span class="d_cmn">※ 태그와 태그는 쉼표로 구분하며(태그앞에 #)을 붙여주세요.ex) #태그</span></td>
                                </tr>
                            </tbody>
                        </table>
                        <!--<div class="layer-pop-icon">
                            <div class="pop-icon1">
                                <a href="#none" href="javascript:void(0);" onclick="javascript:$('div.layer-pop-cont1').toggle();"><i>?</i></a>
                                <div class="layer-pop-box layer-pop-cont1">
                                    <img src="../images/common/app-txt-1.jpg" alt="" />
                                </div>
                                
                            </div>
                        </div>-->
                        
                    </div>
                    
<!------------------------  마지막 스텝부분 ---------------------------------------------------------------------->
					<table class="tstep">
                            <tbody>
                                <tr>
                                    <th scope="row">펀딩시작일<span class="star">*</span></th>
                                    <td>
                                       <div class="picker">
										 <input type="text" class="search-date-picker mr5 hasDatepicker" id="InvestStartDate" name="InvestStartDate" title="시작일" value="" readonly="readOnly" placeholder="펀딩시작일 선택"><img class="ui-datepicker-trigger" src="../resources/images/icon_calendar.png" alt="달력" title="달력"> 
										  <span class="d_cmn ml20"> ※ 파트너쉽을 선택한 프로젝트의 경우 시작일과 마감일은 각 파트너쉽 운영 일정에 따라 변경될 수 있습니다.</span>
									   </div><!--//picker-->
									 

                                    </td>
                                </tr>
								 <tr>
                                    <th scope="row">펀딩마감일<span class="star">*</span></th>
                                    <td>
										<div class="picker">
										  <input type="text" class="search-date-picker mr5 hasDatepicker" id="InvestEndDate" name="InvestEndDate" title="종료일" value="" readonly="readOnly" placeholder="펀딩마감일 선택"><img class="ui-datepicker-trigger"  src="../resources/images/icon_calendar.png"alt="달력" title="달력">
									   </div><!--//picker-->
                                    </td>
                                </tr>
								<tr>
                                    <th scope="row">펀딩목표금액<span class="star">*</span></th>
                                    <td>
                                       <input type="text" class="tel in_comn" value="0" id="TargetAmt" name="TargetAmt" onkeyup="inputNumberFormat(this);"> 
									   <span class="unit d_cmn">원</span> <span class="d_cmn ml20">※ 숫자만 입력가능, “ , ” 삽입불가</span>
                                    </td>
                                </tr>
								<tr>
                                    <th scope="row">펀딩방식<span class="star">*</span></th>
                                    <td>
										
										<input type="radio" id="FundingTypeK" name="FundingType" value="K"> <label for="FundingTypeK"> Keep it all</label> 
                                        
                                        <input type="radio" id="FundingTypeA" name="FundingType" value="A"> <label for="FundingTypeA" class=""> All or nothing</label> 

										<br>
									</td>
                                </tr>

								<tr class="nth3">
									<th scope="row">사업자등록증 <span class="star">*</span></th>
									<td>
										<input type="file" class="file" name="businessRegistration" id="businessRegistration">
																				<span class="d_cmn">※ 정산을 위해 사업자등록증, 개인일 경우 신분증사본을 첨부해주세요</span>
									</td>
								</tr>
								<tr>
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
							
							<input type="button" value="펀딩 등록" class="preview" onclick='saveContent()'
							style="display: inline-block; border-radius: 0;
    							width: 152px; color: #fff;background: #6291c3;padding: 0 0;font-size: 16px;margin-left: 5px;">
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
			alert('내용을 입력하세요');
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
        alert(content);

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
