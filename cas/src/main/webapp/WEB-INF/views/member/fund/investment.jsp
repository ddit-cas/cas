<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<body>

<link rel="stylesheet" href="/cas/resources/css/invest.css" type="text/css">

<style>
.wpayment-userinfo .type-info dt em.np100 {
    background-image: url(resources/images/icon_account_pstype01.png);
}

#wpaymentContainer button.btn-basic {
    display: block;
    width: 100%;
    padding: 15px 20px;
    border: 1px solid #ddd;
    border-radius: 3px;
    text-align: left;
    background: url(resources/images/icon_btn_go.png) no-repeat 95% center #fff;
    background-size: 8px 14px;
}

.wpayment-inputstock .setting-account {
    width: 100%;
}


#wpaymentContainer button#btn-basic {
  
    background: url(resources/images/icon_btn_go.png) no-repeat 95% center #fff;
  
}

.wpayment-inputstock .setting-account .btn-basic span {
    display: block;
    padding-left: 38px;
    background: url(resources/images/icon_gray_account.png) no-repeat 0 center;
    background-size: 26px 19px;
}

ol, ul {
    list-style: none;
}

#enquirypopup .modal-dialog {
    width: 400px;
    padding: 0px ;
    position: relative;
}

#enquirypopup .modal-dialog {
    width: 400px;
    padding: 0px ;
    position: relative;
}
#enquirypopup .modal-dialog:before {
    content: '';
    height: 0px;
    width: 0px;
    border-left: 50px solid #17B6BB;
    border-right: 50px solid transparent;
    border-bottom: 50px solid transparent;
    position: absolute;
    top: 1px;
    left: -14px;
    z-index: 99;
}

.custom-modal-header {
    text-align: center;
    color: #17b6bb;
    text-transform: uppercase;
    letter-spacing: 2px;
    border-top: 4px solid;
}

#enquirypopup .modal-dialog .close {
    z-index: 99999999;
    color: white;
    text-shadow: 0px 0px 0px;
    font-weight: normal;
    top: 4px;
    right: 6px;
    position: absolute;
    opacity: 1;
}

.custom-modal-header .modal-title {
    /* font-weight: bold; */
    font-size: 18px;
}

#enquirypopup .modal-dialog:after {
    content: '';
    height: 0px;
    width: 0px;
    /* border-right: 50px solid rgba(255, 0, 0, 0.98); */
    border-right: 50px solid #17b6bb;
    border-bottom: 50px solid transparent;
    position: absolute;
    top: 1px;
    right: -14px;
    z-index: 999999;
}

.form-group {
    margin-bottom: 15px !important;
}

.form-inline .form-control {
    display: inline-block;
    width: 100%;
    vertical-align: middle;
}



</style>
	<div class="wpayment-wrap">
		<!-- wpaymentHeader -->
		<div id="wpaymentHeader">
			<div class="wpayment-header">
				<button type="button" class="btn-info"
					onclick="showLyPop('equityNotice');"></button>
				<h2>
					투자 신청서 작성<span id="testCount"></span>
				</h2>
				<button type="button" class="btn-back"
					onclick="showLyPop('stopWrite');"></button>
			</div>
		</div>
		<!-- //wpaymentHeader -->

		<!-- wpaymentContent -->
		<div id="wpaymentContent" style="margin-top: 0px";>

			<div class="wpayment-write-wrap">
				<!-- 투자자정보 -->
				<div class="wpayment-userinfo">
					<div class="type-info">
						
							<dl>

								<dt>
									<em class="np100"></em>
								</dt>
								<dd>
									<p>설승민님의 투자 신청서 작성</p>
									<p class="type">개인 일반 투자자</p>
								</dd>

							</dl>
							<em class="arrow"></em>
						
					</div>

				</div>
				<!-- //투자자정보 -->

				<!-- 투자금설정 -->
				<div class="wpayment-inputstock">
					<div class="inner-wrap">
						<h3>투자금 설정</h3>

						<div class="inputstock-wrap">
							<dl id="inputQtyArea" class="input-wrap error">
								<dt style="font-size:12px; float:left;">신청 투자 금액</dt>
								<dd>
									<label class="input-stock"><input type="tel" id="qty"
										class="input-text" placeholder="투자 금액 입력" maxlength="8"
										tabindex="99"><em>원</em></label>
								</dd>
							</dl>
						</div>

						<!-- 주식입고계좌설정 -->




						<h3>상환 계좌</h3>
						<p class="sub-text">원리금(또는 정산금)을 상환받을 계좌를 설정하세요.</p>
<script>
 function showSettingAccountPop(){
	 
	 setTimeout(function() {
         $('#enquirypopup').modal('show');
 }, 1);
};

function selectAccount(){
	var bankAccountNo = $("#newBankAccountNo").val();
	$('#account').text(bankAccountNo);
	$('#enquirypopup').modal('hide');
}
	 

</script>

						<div class="setting-account">
							<button type="button" id="settingAccountBtn"
								onclick="showSettingAccountPop();" class="btn-basic"
								style="background-size: 8px 14px; display: block; width: 100%; padding: 15px 20px; border: 1px solid #ddd; border-radius: 3px; text-align: left;">
								<span id="account"><strong>계좌 설정하기</strong></span>
							</button>
						
						</div>
						<!-- //주식입고계좌설정 -->
						<div class="event-banner"></div>
					</div>
				</div>
				<!-- //투자금설정 -->
				

				
				<!-- 약관동의 -->
				<div class="wpayment-agree-wrap">
					<h3>약관 동의</h3>
					<ul class="sort_term">
						<li><label for="terms1" onclick="viewTerms();"><input
								type="checkbox" id="terms1" name="terms1" class="input-check"><span></span>서비스
								이용 약관 동의</label>
							<button type="button" class="btn-terms"
								onclick="viewTerms();">내용보기</button></li>


						<li><label for="terms3" onclick="viewTerms2();"><input
								type="checkbox" id="terms3" name="terms3" class="input-check"><span></span>개인정보
								제공 동의</label>
							<button type="button" class="btn-terms2"
								onclick="viewTerms2();">내용보기</button></li>
					</ul>
				</div>
				<!-- //약관동의 -->

			</div>



			<div class="wpayment-email-confirm">
				<form id="investInfoForm" name="investInfoForm"
					novalidate="novalidate">
					<input type="hidden" id="campaignId" name="campaignId" value="598">
					<input type="hidden" id="userName" name="userName"
						value="seolartn@gmail.com"> <input type="hidden"
						id="nickName" name="nickName" value="설승민"> <input
						type="hidden" id="securtId" name="securtId" value="710"> <input
						type="hidden" id="securtAmount" value="100000"> <input
						type="hidden" id="qty_real" name="qty" value=""> <input
						type="hidden" id="investAmount" name="investAmount" value="">
					<input type="hidden" id="accountType" name="accountType" value="">
					<input type="hidden" id="scrtRegNo" name="scrtRegNo" value="0">
					<input type="hidden" id="accountCode" name="accountCode" value="">
					<input type="hidden" id="accountNo" name="accountNo" value="">
					<input type="hidden" id="couponCode" name="couponCode" value="">

					
					
					<div class="inner-btn-wrap" id="sendAuthEmailBtn">
						<button type="button" class="btn-complete"
							onclick="sendAuthEmail();" style="display: block; width: 100%; height: 52px; line-height: 52px; text-align: center;
							color: #fff; font-size: 17px; background: #26bbe2;">투자하기</button>
					</div>

					<div class="authnum-info" style="display: none;">
						<dl class="input-box active">
							<dt>
								<input type="tel" id="authKey" name="authKey"
									class="input-text numOnly" maxlength="6"
									placeholder="인증번호 6자리 입력">
							</dt>
							<dd>
								<button type="button" id="confirmAuthEmailBtn" class="btn-auth"
									onclick="ajaxAuthEmailConfirm();">인증 확인</button>
							</dd>
						</dl>
						<p id="authEmailErrorComment" class="error-comment"
							style="display: none;"></p>
						<div class="util-box">
							<button type="button" class="btn-link"
								onclick="retrySendAuthEmail();">인증번호 재발송</button>
							<p class="time-info">
								남은 시간 <em id="minTime">10</em>
							</p>
						</div>
					</div>
				</form>
			</div>


			<div class="btn-wrap">
				<button id="registEquityBtn" class="btn-complete"
					onclick="ajaxRegistEquity();" disabled="disabled"
					style="display: none;">작성 완료</button>
			</div>
		</div>
		
	</div>


<!-- 팝업 -->
<div id="enquirypopup" class="modal fade in" role="dialog">
		<div class="modal-dialog">
			
			<!-- Modal content-->
			<div class="modal-content row" style="height:554px;">
				<div class="modal-header custom-modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">계좌 설정</h4>
				</div>
				<form>
				<div class="pop-setting-account">
					<div>
		   				<ul class="radio-wrap">
							<li><input type="radio" class="input-radio" id="bankAccount" name="account" value="bank" checked="checked"><label for="bankAccount">은행계좌</label></li>
		   				</ul>
		   				   				
		   				<div id="accountTypeCon2" class="account-type input-wrap">
		    				<dl>
		    					<dt>은행</dt>
		    					<dd style="margin-top: -34px;">
		    						<select id="newDfBankCode" name="newDfBankCode" class="select-list"><option value="">은행 선택</option><option value="BANK000039">경남은행</option>
										<option value="BANK000034">하나(구 외환)은행</option>
										<option value="BANK000031">대구은행</option>
										<option value="BANK000032">부산은행</option>
										<option value="BANK000901">산업은행</option>
										<option value="BANK000045">새마을금고</option>
										<option value="BANK000007">수협중앙회</option>
										<option value="BANK000088">신한은행</option>
										<option value="BANK000048">신협중앙회</option>
										<option value="BANK000020">우리은행</option>
										<option value="BANK000071">우체국</option>
										<option value="BANK000037">전북은행</option>
										<option value="BANK000027">한국씨티은행</option>
										<option value="BANK000011">NH농협은행</option>
										<option value="BANK000004">KB국민은행</option>
										<option value="BANK000002">KDB산업은행</option>
										<option value="BANK000081">KEB 하나은행</option>
										<option value="BANK000023">SC제일은행</option>
										<option value="BANK000090">케이뱅크</option>
									</select>
		    					</dd>
		    				</dl>
		    				<dl>
		    					<dt>계좌번호</dt>
		    					<dd style="margin-top: -37px;"><input type="tel" id="newBankAccountNo" name="newBankAccountNo" class="input-text numOnly" maxlength="18" placeholder="'-' 제외한 계좌번호 입력"></dd>
		    				</dl>
		    				<dl>
		    					<dt>예금주</dt>
		    					<dd style="margin-top: -36px;">설승민</dd>
		    				</dl>
		   				</div>
		   			</div>
		   		</div>
		   			<div class="wpayment-notice-comment">	
 								<p><em>본 프로젝트는 투자금을 입고 받을 계좌를 등록하셔야 투자 신청이 가능합니다.</em></p>
				   				<p>투자신청자 본인 명의의 계좌로만  입금이 가능합니다. 입금이 불가능한 계좌로 등록된 경우 배정에서 제외됩니다.<br>(비활성 상태 계좌 또는 CMA 계좌인 경우 금액 입고 불가)</p>
				   				<p>프로젝트 마감 전까지 나의 펀딩 현황 페이지에서 계좌 정보 변경이 가능합니다.</p>
		   			</div>
	
<!-- 계좌번호를 입력하고 다시 마우스 가져다대면 지워지는 메소드		   			 -->
<script>
$(function(){
	$('input#newBankAccountNo').on('click',function(){
		$('input#newBankAccountNo').val("");
	});
});


</script>		   			
				
				<div class="pop-btn-wrap">
	   				<div class="terms div2" style="text-align: center;">
 						<button type="button" data-dismiss="modal" class="btn-cancel" onclick="closeSettingAccountPop();" style="height: 52px; margin-right: 6px;
    						line-height: 52px; text-align: center;  width: 132px; color: #777; font-size: 17px; background: #fff; border: 1px solid #ddd; box-sizing: border-box;">취소</button>
	   					<button type="button" id="selectAccountBtn" class="btn-complete" onclick="selectAccount();" style="rgb(255, 247, 247); background: #999; border: 1px solid #999; cursor: default;  width: 132px;
    						height: 52px; color: white; padding-top: 5px;" >계좌 설정</button>
	   				</div>
	  			</div>
			
				</form>
				
			</div>
			
		</div>
	</div>
	
<!----------------------------- 서비스 이용 약관 동의 ----------------------------------------------->
<div id="servicePopup" class="modal fade in" role="dialog">
		<div class="modal-dialog">
			
			<!-- Modal content-->
			<div class="modal-content row" style="height:662px;">
				<div class="modal-header custom-modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">약관 동의</h4>
				</div>
				
		<div id="terms1Lypop" class="lypop-fixed" style="display: block;">
			<div class="wpayment-popup terms">
		  		<div class="wpayment-popheader">
		  			<h2>서비스 이용 약관 동의</h2>
		  		</div>
		  		<div class="wpayment-popcontent">
		  			<div class="terms-wrap">
<style type="text/css">
.cont_terminfo {font-size:12px;line-height:19px;color:#4a4a4a;padding:24px;-webkit-font-smoothing: antialiased;}
.cont_terminfo .info-title{margin:50px 0 15px;font-weight:bold;}
.cont_terminfo .terms-date{text-align:right;}
.cont_terminfo .terms-text{margin-bottom:14px}
.cont_terminfo .terms-text:last-child{margin-bottom:0}
.cont_terminfo h3{margin:20px 0 15px;font-weight:bold;font-size:13px;}
.cont_terminfo .terms-title{font-size:12px;margin:25px 0 5px 0}
.cont_terminfo h3:first-child{margin-top:0;}
.cont_terminfo h4{margin:20px 0 10px;font-weight:bold;}

.wpayment-popup .div2 button {
    display: inline-block !important;
    width: 28% !important;
}
</style> 


<div class="cont_terminfo">
	<h3 class="info-title">온라인소액투자중개(크라우드펀딩)&nbsp;서비스&nbsp;이용약관</h3>
	<p class="terms-date">개정 2017. 4. 3.</p>
	<p class="terms-date">개정 2016. 11. 14.</p>
	<p class="terms-date">시행 2016. 1. 25.</p>
	<p class="terms-date">제정 2016. 1. 24.</p>
	<h3>제1장 총칙</h3>				
	<h4>제1조 (목적)</h4>
	<p class="terms-text">본 약관은 CAS(이하 “회사”)와 회사가 제공하는 온라인소액투자중개(이하 “투자형 크라우드 펀딩”) 서비스를 이용하는 회원 간의 서비스를 이용하는 회원(이하 “회원”) 간의 서비스 이용에 관한 권리·의무 관련 사항을 정함을 그 목적으로 합니다.</p>
	<h4>제2조 (용어의 정의)</h4>
	<p class="terms-text">본 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다.</p>
	<ol>
		<li>1. 서비스 : 회원이 전자적 시스템에 접속하여 투자거래 등을 할 수 있게 본 약관에 따라 회사가 제공하는 서비스를 말합니다.</li>
		<li>2. 홈페이지 : 본 약관에 따라 회사가 제공하는 서비스가 구현되는 온라인상의 웹페이지를 말합니다.</li>
		<li>3. 발행인 : 회사의 CAS 회원가입 기본약관(이하 “CAS 기본약관”)에 따른 회원의 자격을 부여받은 자 중에서 온라인소액투자중개의 방법으로 금액을 발행하려는 자를 말합니다.</li>
		<li>4. 투자의 신청 : 회원이 발행인이 발행하는 금액의 배정을 받기 위하여 본 약관에 따른 방법으로 투자의 의사표시를 하는 것을 말합니다.</li>
		<li>5. 투자의 철회 : 회원이 투자의 신청 후 투자기간 내에 투자의 의사표시를 철회하는 것을 말합니다</li>
		<li>6. 투자모집률 : 발행인이 목표한 모집예정금액을 기준으로 투자의 접수가 완료된 모집금액이 차지하는 비율을 말합니다.</li>
		<li>7. 투자증거금관리기관 : 회원이 입금한 투자증거금을 자본시장과 금융투자업에 관한 법률(이하 “자본시장법”)에 따라 예치하여 보관하는 금액금융 또는 은행 등의 기관을 말합니다. </li>
		<li>8. 중앙기록관리기관: 회사로부터 발행인과 투자자에 대한 정보를 제공받아 관리하는 기관인 한국예탁결제원을 말합니다. </li>
		<li>9. 투자형 크라우드 펀딩 : 자본시장법에 따라 온라인소액투자중개업자를 통하여 발행인이 발행하는 채무금액, 지분금액, 투자계약금액에 관한 모집 또는 사모에 관한 중개행위를 말합니다. </li>                    
	</ol>
	<h3>제2장 서비스의 이용</h3>
	<h4>제3조 (서비스의 제공)</h4>
	<ol>
		<li>① 회사가 본 약관에 따라 제공하는 서비스의 종류는 다음 각 호와 같습니다.
			<ol>
				<li>1. 투자거래서비스  : 투자의 주문 정보에 대한 사실확인, 투자의 접수, 투자 가능 여부 통지, 투자결과 및 배정내역 통보 등</li>
				<li>2. 제1호의 서비스 제공을 위해 필요하거나 이에 부수하는 서비스 </li>
			</ol>
		</li>
		<li>② 서비스의 이용은 24시간 가능한 것을 원칙으로 합니다. 다만, 이체서비스 이용시간의 제한 등의 사유로 인하여 서비스 이용시간이 변경되는 경우 사전에 홈페이지를 통하여 그 변경 사항을 공지합니다.</li>              
	</ol>
	<h4>제4조 (서비스의 신청)</h4>
	<ol>
		<li>① 본 약관 제3조의 서비스를 이용하려는 자는 CAS 기본약관에 따라 회원의 자격을 취득하여 로그인한 후 서비스 신청을 하여야 합니다.</li>
		<li>② 회사는 회원이 입력한 아이디, 비밀번호가 회사에 등록된 것과 일치할 경우 본 약관에 따른 서비스 신청을 접수합니다. </li>
	</ol>
	<h4>제5조 (서비스의 이용료 등)</h4>
	<p class="terms-text">회사는 온라인소액금액의 투자과 관련하여 별도의 수수료는 징수하지 아니합니다. 다만, 투자증거금 이체 시 이체수수료가 발생할 수 있습니다.</p>
	<h3>제3장 투자정보의 제공·확인 및 의견교환 등</h3>		
	<h4>제6조 (투자정보의 게재 등)</h4>
	<ol>
		<li>① 금액의 모집을 시작하기 전에 홈페이지에 발행인이 게재하는 금액의 발행조건, 재무서류, 사업계획서 등 투자판단을 위해 필요한 정보가 게재됩니다. </li>
		<li>② 회사는 제1항에 따라 게재된 정보에 관한 사실을 확인하여야 합니다. </li>
		<li>③ 제2항에도 불구하고 회원이 게재된 내용에 의존하여 투자판단을 한 경우 이로부터 발생하는 결과에 대하여 회사는 회사의 고의 또는 과실이 없는 이상 책임을 지지 않습니다. </li>
		<li>④ 제1항에도 불구하고 투자기간 중에도 홈페이지에 추가적으로 투자정보가 게재될 수 있습니다.</li>
		<li>⑤ 투자기간의 말일로부터 7일 이내에 발행인이 홈페이지에 게재한 정보 중 투자자의 투자판단에 영향을 미칠 수 있는 중요한 정보를 정정한 경우 그날로부터 7일 후로 투자기간이 연장됩니다.</li>
		<li>⑥ 제14조에 따라 모집결과가 “성공”인 경우 투자기간이 종료한 후에도 매년 1회 재무제표 등 결산 관련 서류가 홈페이지에 게재됩니다.</li>
	</ol>
	<h4>제7조 (투자의 주문 전 정보 확인 등)</h4>
	<ol>
		<li>① 회원은 본 약관에 따른 투자의 주문 전에 제6조에 따라 제공되는 정보뿐만 아니라 투자기간, 금액의 배정조건, 금액매도의 제한 등에 관하여 충분히 숙지한 후 투자의 의사표시를 하여야 합니다.</li>
		<li>② 발행인이 투자자의 유형별로 자격을 제한하거나 배정방법 및 그 기준을 다르게 설정하기를 회사에 요청하는 경우 회사는 그 배정방법과 기준이 합리적이고 명확한 기준에 의한 것인 경우 그 내용을 홈페이지에 게재하며, 이 경우 회원은 위 내용에 따라 금액의 배정을 받는데 제한을 받게 될 수 있습니다.  </li>
		<li>③ 회사는 회원이 본 약관에 따른 투자의 주문을 하기 전에 회사로부터 투자대상이 되는 금액에 대한 투자의 위험고지 등에 대하여 회원이 충분히 확인을 하였는지를 전자서명이나 전자우편 등의 방법으로 확인한 후에 투자의 주문을 받을 수 있습니다.</li>
	</ol>
	<h4>제8조 (투자의견의 교환 등)</h4>
	<ol>
		<li>① 회원은 홈페이지에 개설된 게시판을 통해 투자정보에 대한 질의 또는 답변을 게시하는 방법으로 투자의견을 교환할 수 있습니다.</li>
		<li>② 회사는 자신의 홈페이지를 통하여 공개되는 투자자들의 의견을 임의로 삭제하거나 수정하여서는 아니 됩니다. 다만, 다른 법률에 근거가 있는 경우 그러하지 아니합니다. </li>
		<li>③ 발행인은 금액의 투자기간의 종료일부터 7일 전까지 회사가 관리하는  홈페이지를 통하여 투자자의 투자판단에 도움을 줄 수 있는 정보를 제공할 수 있습니다.</li>
	</ol>
	<h3>제4장 투자의 주문 및 접수 등</h3>
	<h4>제9조 (투자의 주문 신청)</h4>
	<ol>
		<li>① 회원이 투자하려는 금액에 대한 투자의 주문을 하기 위하여는 아래와 같은 정보를 회사가 제공하는 양식에 따라 입력하여야 합니다. 
			<ol>
				<li>1. 회원의 실명(법인인 경우 상호 및 명칭)</li>
				<li>2. 주민등록번호(법인인 경우 법인등록번호·사업자등록번호, 외국인의 경우 외국인등록번호·국내거소신고번호)</li>
				<li>3. 투자자의 유형</li>
				<li>4. 그 밖에 자본시장법 등 관계법령에 따라 온라인소액투자중개에 필요한 투자자 정보 </li>
			</ol>
		</li>
		<li>② 회사는 투자의 주문을 하려는 회원의 실명인증 및 투자자 본인과의 동일성 확인을 위한 인증절차를 거쳐야 합니다.</li>
		<li>③ 회원은 제1항 제3호와 관련하여 홈페이지의 &lt;회원정보란&gt;에서 정한 투자자유형과 다른 유형의 투자자자격으로 투자의 주문을 하려는 경우 투자의 주문 전에 &lt;회원정보란&gt;에서 투자자유형을 사전에 변경하여야 합니다. </li>
		<li>④ 회원은 일반투자자가 아닌 경우(소득적격투자자, 전문투자자)에 이에 관한 증빙자료(소득요건 등에 관한 자료, 법인등기부등본 등)를 제출한 후에 투자의 신청이 가능합니다.</li>
		<li>⑤ 회원은 자본시장법 등 관계법령에서 정한 투자한도를 준수하여 투자의 주문을 하여야 합니다.	</li>
		<li>⑥ 제2항에 따라 투자자가 제출한 정보는 자본시장법 등 관계법령에 따라 중앙기록관리기관에 제공됩니다. </li>
		<li>⑦ 회원은 회사가 제공하는 방법에 따라 투자증거금을 회원 명의의 계좌에서 투자증거금관리기관에 개설된 회사 명의의 투자증거금 관리계좌에 직접 이체하여야 합니다.</li>
		<li>⑧ 제7항에 따라 이체된 투자증거금은 투자증거금관리기관에 예치 또는 신탁됩니다. </li>
	</ol>
	<h4>제10조 (투자의 주문 접수)</h4>
	<ol>
		<li>① 회원은 제9조에 따라 정보를 입력하고 실명인증 등 확인절차를 이행한 후 “투자의 주문”을 의미하는 버튼을 클릭하면 투자의 주문이 회사에 신청되며, 이와 같은 투자의 주문 신청을 회사가 접수를 하면 투자의 주문 접수가 완료됩니다. 다만, 회사는 발행인이 합리적이고 명확한 기준에 따라 투자자의 자격 제한을 요청한 경우 그에 따라 투자의 주문 신청에 대한 접수를 제한할 수 있습니다.</li>
		<li>② 회원은 투자의 주문 접수 결과는 전자우편 또는 문자메시지를 통해 통보받게 됩니다.</li>
		<li>③ 투자의 주문이 접수되면 홈페이지에 투자모집률이 게시됩니다. 다만, 본 약관에 따라 투자의 철회가 있거나 투자의 주문이 효력이 상실되는 경우에는 투자모집률은 변동될 수 있습니다.</li>
		<li>④ 투자의 주문이 접수된 후에 제9조에 따라 입력한 정보에 변동사항이 있는 경우회원은 투자기간이 종료되기 전에 한하여 전자우편 등의 방법으로 통지한 후 변경을 요청할 수 있습니다. </li>
	</ol>
	<h4>제11조 (투자의 주문 취소 등)</h4>
	<ol>
		<li>① 회사는 투자기간이 종료되기 전까지 제9조에 따라 제공받은 정보들의 전부 또는 일부에 대하여 회사 또는 회사가 업무를 위탁한 기관이 정한 절차에 따라 그 진위 여부 또는 유효성에 대한 사실확인절차를 이행하여야 합니다.</li>
		<li>② 회사는 필요한 경우 제1항에 따른 확인절차를 이행하기 위하여 자본시장법 등 관계법령이 허용하는 한도 내에서 중앙기록관리기관 등에 정보조회를 의뢰할 수 있습니다.</li>
		<li>③ 회사가 본 조에 따른 사실확인절차를 이행한 결과 제9조에 따라 입력되고 이행되어야 할 전부 또는 일부의 사항들(소득적격투자자 또는 전문투자자 요건, 금액계좌유효성)이 추후 허위로 판명되거나 누락된 경우 또는 입증이 이루어지지 아니하는 경우(증빙자료가 제출되지 않은 경우 포함)(이하 “투자의 주문 취소사유”)에는 투자의 주문이 취소되어 효력이 상실될 수 있습니다.</li>
		<li>④ 회원이 투자의 주문을 완료한 후 CAS 기본약관에 따른 회원의 자격을 상실한 경우에도 해당 투자의 주문 건에 대하여는 투자의 주문이 유효하게 있는 것으로 봅니다.</li>
		<li>⑤ 금액의 모집이 개시된 이후에도 발행회사의 사정 또는 회사와 발행인과의 온라인소액투자중개계약 해지 등 관계법령이 정하는 사유로 인하여 금액의 발행이 취소될 수 있습니다. 이 경우 회원의 투자의 주문 신청의 효력은 상실됩니다.</li>
	</ol>
	<h4>제12조 (투자의 철회)</h4>
	<ol>
		<li>① 회원은 투자기간의 종료 전(본 약관에서 정한 사유로 투자기간이 연장된 경우에는 연장된 투자기간의 종료 전)까지 투자의 의사표시를 철회할 수 있습니다.</li>
		<li>② 회원이 투자증거금을 입금한 후에 제1항에 따라 회원이 투자을 철회를 한 경우, 위 투자증거금을 투자철회신청이 회사에게 도달한 날로부터 지체 없이 고객의 계좌로 반환됩니다. </li>
	</ol>
	<h4>제13조 (회원탈퇴 등에 대한 조치)</h4>
	<p class="terms-text">
		회원이 투자의 주문을 위해 투자증거금을 입금한 후 투자기간이 종료되기 이전에  탈퇴사유가 발생한 경우에는 회사는 회원에게 이와 같은 사실을 사전에 통지하고 제12조 제2항의 경우와 같이 투자증거금을 반환합니다. 
	</p>	                
	<h3>제5장 모집결과에 따른 금액의 배정·발행·예탁 등</h3>
	<h4>제14조 (모집결과의 게시 및 통보 등)</h4>
	<ol>
		<li>① 투자기간이 종료되면 회사는 모집결과를 아래와 같은 기준에 따라 “성공”또는 “실패”로 구분하여 홈페이지에 게시하며, 투자의 접수를 완료한 회원에게 모집결과 및 각 투자의 접수에 대한 금액의 배정내역을 통보합니다. 
			<ol>
				<li>1. “성공”: 회원의 투자에 따라 모집된 금액이 발행인이 목표한 모집금액의 80% 이상인 경우</li>
				<li>2. “실패”: 회원의 투자에 따라 모집된 금액이 발행인이 목표한 모집금액의 80% 미만인 경우</li>
			</ol>
		</li>
		<li>② 투자된 금액이 모집예정금액을 초과하였을 때에는 발행인의 의사에 따라 당초 목표한 모집금액이 증액될 수 있으며, 이 경우 제6조에 따라 게재되는 정보의 변경이 있게 되면 변경된 사항(모집가액, 모집자금의 사용 목적 등)은 홈페이지에 정정되어 게재됩니다.</li>
		<li>③ 제2항에 따라 모집가액이 증액되어 변경됨에 따라 자본시장법 등 관계법령에서 발행인에게 요구하는 회계감사의 단계가 변경되는 경우에는 증액된 금액에 상응하는 회계감사의 기준에 따라 정정된 정보가 게재됩니다.</li>
		<li>④ 투자기간의 만료일로부터 7일 이내에 발행인이 정정한 중요 게재정보(모집자금의 사용목적 등)에 대하여 투자기간의 만료일은 정정게재일로부터 7일의 범위 내에서 연기될 수 있습니다.</li>
		<li>⑤ 회사는 투자기간 만료 시 대상금액의 투자 및 발행에 관한 내역을 홈페이지에 게시하고 전자우편 등을 통해 투자자에게 통지하여야 합니다. 통지하는 내역은 다음 각 호와 같다. 
			<ol>
				<li>1. 전체 투자자의 투자증거금액, 투자수량, 투자 증거금 및 그밖에 금액의 취득에 관한 투자의 세부사항 </li>
				<li>2. 전체 투자자의 투자증거금액이 모집예정금액의 80% 이상인지 여부, 전체 투자자로부터 발행인에게 실제 납입될 금액 대금, 그 밖에 금액의 발행에 관한 세부사항 </li>
				<li>3. 투자한 회원에게 배정된 금액의 가액 및 수량, 납입기일, 그 밖에 금액 배정 및 납입에 관한 사항 </li>
				<li>4. 회사가 투자증거금을 반환하여야 할 경우 그 금액 및 반환일정 등 반환에 관한 사항</li>
			</ol>
		</li>
	</ol>
	<h4>제15조 (투자금의 납입 및 반환)</h4>
	<ol>
		<li>① 제14조 제1항 제1호에 따라 모집결과가 “성공”인 경우 투자증거금관리기관에 예치되어 있던 투자증거금 전액이 발행인 명의 납입계좌로 납입됩니다.</li>
		<li>② 제14조 제1항 제2호에 따라 모집결과가 “실패”인 경우 회원이 입금한 투자증거금 원금은 투자기간이 종료한 경우 지체 없이 고객의 계좌로 반환됩니다. </li>
		<li>③ 제10조, 제11조에 따라 투자의 주문 접수가 되지 않거나 투자의 주문이 효력을 상실한 경우 회원이 입금한 투자증거금은 지체 없이 고객이 회사에 등록한 계좌로 반환됩니다. </li>
	</ol>
	<h4>제16조 (금액의 발행 및 예탁 등)</h4>
	<ol>
		<li>① 제15조 제1항에 따라 투자금이 납입되면 제6조의 게재된 발행조건(변경된 발행조건 포함)에 따라 금액이 발행되어 금액의 배정을 받은 회원 명의가 투자자명부에 등록되어 한국예탁결제원에 배정받은 금액이 예탁됩니다. </li>
		<li>② 제1항에 따라 발행 후 예탁된 금액은 의무적으로 한국예탁결제원에 예탁되거나 보호예수되며, 회원은 배정받은 금액을 1년 간 매도나 인출을 할 수 없습니다. 다만, 관계법령에 따라 예외적으로 매도가 가능한 경우로 인정되는 경우에는 그러하지 아니합니다. </li>
	</ol>
	<h3>제6장 기타</h3>
	<h4>제17조 (권리의 귀속 등)</h4>
	<p class="terms-text">회사가 제공하는 서비스(데이터, 소프트웨어, 게시물의 저작권 등)에 관한 권리는 회사에게 귀속됩니다.</p>
	<h4>제18조 (불가항력에 따른 면책) </h4>
	<p class="terms-text">회사는 천재지변, 전시·사변 또는 이에 준하는 불가항력이라고 인정되는 사유로 인하여 회원에게 발생하는 손해에 대하여 책임을 지지 아니합니다. </p>
	<h4>제19조 (약관의 적용 등) </h4>
	<ol>
		<li>① 본 약관에서 정하지 아니한 사항에 대해서는 회사의 CAS 기본약관 및 자본시장법 등 관계법규를 따릅니다. 다만, 관계법규 및 관련약관에 정하는 바가 없으면 일반적인 상관례를 따릅니다.</li>
		<li>② 본 약관에 의한 거래 중 전자금융거래에 관하여는 ‘전자금융거래이용에 관한 기본약관’ 및 전자금융거래법령이 우선 적용됩니다.</li>
		<li>③ 회사와 고객 간에 개별적으로 합의한 사항이 이 약관에서 정한 사항과 다를 때에는 그 합의사항을 이 약관에 우선하여 적용됩니다.</li>
	</ol>
	<h4>제20조 (약관의 게시 및 변경)</h4>
	<ol>
		<li>① 회사는 본 약관을 변경하고자 하는 경우 변경내용을 변경되는 약관의 시행일 1개월 전에 고객이 확인할 수 있도록 인터넷 홈페이지 그 밖에 이와 유사한 전자통신매체를 통하여 게시합니다. 다만, 자본시장법 등 관계법령의 제·개정에 따른 제도변경 등으로 약관이 변경되는 경우로서 본문에 따라 안내하기가 어려운 급박하고 부득이한 사정이 있는 경우에는 변경내용을 앞의 문장과 같은 방법으로 개정 약관의 시행일 전에 게시합니다.</li>
		<li>② 회사는 제1항의 변경내용이 고객에게 불리한 것일 때에는 이를 서면 등 고객과 사전에 합의한 방법으로 변경되는 약관의 시행일 1개월 전까지 통지하여야 합니다. 다만, 기존 고객에게 변경 전 내용이 그대로 적용되는 경우 또는 고객이 변경내용에 대한 통지를 받지 아니하겠다는 의사를 명시적으로 표시한 경우에는 그러하지 아니합니다.</li>
		<li>③ 회사는 제2항의 통지를 할 경우 "고객은 약관의 변경에 동의하지 아니하는 경우 계약을 해지할 수 있으며, 통지를 받은 날로부터 변경되는 약관의 시행일 전의 영업일까지 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 본다"라는 취지의 내용을 통지하여야 합니다.</li>
		<li>④ 고객이 제3항의 통지를 받은 날로부터 변경되는 약관의 시행일 전의 영업일까지 계약해지의 의사표시를 하지 아니하는 경우에는 변경에 동의한 것으로 봅니다.</li>
		<li>⑤ 회사는 본 약관을 회사의 인터넷 홈페이지 그 밖에 이와 유사한 전자통신매체에 게시하여 회사의 영업점에 투자자가 확인할 수 있도록 마련해 두거나 게시하여 투자자가 요구할 경우 이를 교부하여야 하며, 고객이 약관을 확인하고 다운로드(화면출력 포함)받을 수 있도록 하여야 합니다.</li>                   
	</ol>
	<h4>제21조 (준거법 등)</h4>
	<ol>
		<li>① 본 약관의 해석 및 적용에 관하여는 대한민국법을 적용합니다.</li>
		<li>② 본 약관에 의한 거래와 관련하여 발생된 분쟁에 대하여 회사와 고객 사이에 소송의 필요가 생긴 경우에는 그 관할법원은 민사소송법이 정한 바에 따릅니다.</li>
	</ol>
	<h3>&lt;부칙&gt;</h3>
	<p class="terms-text">제1조(시행일) 본 약관은 2017년 4월 3일부터 시행합니다.</p>	    
</div>
<!-- // 서비스 이용 약관 동의  --></div>
		  		</div>
				<div class="pop-btn-wrap">
					<div class="terms div2"><button type="button" data-dismiss="modal" id="closeTerms1" class="btn-cancel" onclick="cancel();" style="height: 52px; margin-right: 6px;
    				line-height: 52px; text-align: center; color: #777; font-size: 17px; background: #fff;border: 1px solid #ddd;
    				box-sizing: border-box;" >취소</button>
    
    <button type="button" data-dismiss="modal" id="checkTerms1" class="btn-complete" onclick="checkTerms('1');" style="height: 52px;
	line-height: 52px;text-align: center; color: #fff;font-size: 17px;background: #32aece;">동의합니다.</button></div>
				</div>
			</div>
		</div>
						
			</div>
			
		</div>
	</div>	
	
<script>
function viewTerms(){
	if ($("#terms1").is(":checked")){
			setTimeout(function() {
		        $('#servicePopup').modal('show');
		}, 1);
		
	}
	
}

function viewTerms2(){
	if ($("#terms3").is(":checked")){
			setTimeout(function() {
		        $('#privatePopup').modal('show');
		}, 1);
		
	}
}
	
function cancel(){
	
	 $("#terms1").prop( "checked", false );

			
	}
	
function cancel2(){
	
	 $("#terms3").prop( "checked", false );

			
	}
	



</script>



<!----------------------------- 개인정보 제공 동의 ----------------------------------------------->
<div id="privatePopup" class="modal fade in" role="dialog">
		<div class="modal-dialog">
			
			<!-- Modal content-->
			<div class="modal-content row" style="height:662px;">
				<div class="modal-header custom-modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">약관 동의</h4>
				</div>
				<div id="terms3Lypop" class="lypop-fixed" style="display: block;">
			<div class="wpayment-popup terms">
		  		<div class="wpayment-popheader">
		  			<h2>제 3자에 대한 개인정보 제공 동의</h2>
		  		</div>
		  		<div class="wpayment-popcontent">
		  			<div class="terms-wrap">
<style type="text/css">
.cont_terminfo {font-size:12px;line-height:19px;color:#4a4a4a;padding:24px;font-family: 'Apple SD Gothic Neo', 'notokr-regular', 'Malgun Gothic', sans-serif;-webkit-font-smoothing: antialiased;background:#fff;text-align:justify}
.cont_terminfo .info-title{margin:50px 0 15px;font-weight:bold;}
.cont_terminfo .terms-date{text-align:right;}
.cont_terminfo .terms-text{margin-bottom:14px}
.cont_terminfo .terms-text:last-child{margin-bottom:0}
.cont_terminfo h3{margin:20px 0 15px;font-weight:bold;font-size:13px;}
.cont_terminfo .terms-title{font-size:12px;margin:25px 0 5px 0}
.cont_terminfo h3:first-child{margin-top:0;}
.cont_terminfo h4{margin:20px 0 10px;font-weight:bold;}
</style> 				

<!-- 개인정보 제공 동의 161026 -->
<div class="cont_terminfo">
	<p class="terms-text">아래 내용에 대하여 동의를 거부하실 수 있으며, 거부 시 청약거래 서비스 이용이 제한됩니다.</p>
	<h3 class="terms-title">제공받는 자</h3>
	<p class="terms-text">주식회사 고로풍력, 한국예탁결제원, 청약증거금예치기관(한국증권금융)</p>
	<h3 class="terms-title">목적</h3>
	<p class="terms-text">자본시장과 금융투자업에 관한 법률 등 관계법령에 따라 온라인 소액투자 중개업자가 증권발행기업, 한국예탁결제원, 한국증권금융, 기업은행 등 예치기관에 제공하는 투자자 정보의 제공, 조회 등</p>
	<h3 class="terms-title">항목</h3>
	<p class="terms-text">성명(법인명, 조합명), 주민등록번호(법인의 경우 법인등록번호, 사업자등록번호, 조합의 경우 고유번호), 이메일, 휴대폰번호, 주소, 증권계좌정보 (증권사, 증권계좌번호), 거래 ID</p>
	<h3 class="terms-title">보유기간</h3>
	<p class="terms-text">거래정보등의 제공내용 기록관리내용은 금융실명거래 및 비밀보장에 관한 법률에 따라 5년 보존 후 파기</p>
</div>
<!-- // 개인정보 제공 동의 161026 --></div>
		  		</div>
				<div class="pop-btn-wrap">
					<div class="terms div2">
					<button type="button" id="closeTerms3" class="btn-cancel" onclick="cancel2();" style="height: 52px; margin-right: 6px;
    				line-height: 52px; text-align: center; color: #777; font-size: 17px; background: #fff;border: 1px solid #ddd;
    				box-sizing: border-box;" data-dismiss="modal">취소</button>
					<button type="button" id="checkTerms3" class="btn-complete" onclick="checkTerms();" style="height: 52px;
					line-height: 52px;text-align: center; color: #fff;font-size: 17px;background: #32aece;;">동의합니다.</button></div>
				</div>
			</div>
		</div>
		
						
			</div>
			
		</div>
	</div>	
<script>
function checkTerms(){
	$('#privatePopup').modal('hide');
}

</script>
	

</body>
</html>