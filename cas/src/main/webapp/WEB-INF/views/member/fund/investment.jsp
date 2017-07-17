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
		<div id="wpaymentContent" style="margin-top: 167px";>

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

				<!-- 청약금설정 -->
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
	 

</script>

						<div class="setting-account">
							<button type="button" id="settingAccountBtn"
								onclick="showSettingAccountPop();" class="btn-basic"
								style="background-size: 8px 14px; display: block; width: 100%; padding: 15px 20px; border: 1px solid #ddd; border-radius: 3px; text-align: left;">
								<span><strong>계좌 설정하기</strong></span>
							</button>
							<p class="error-comment" style="display: none;">계좌 설정은 투자 신청
								필수 정보 입니다.</p>
						</div>
						<!-- //주식입고계좌설정 -->
						<div class="event-banner"></div>
					</div>
				</div>
				<!-- //청약금설정 -->
				

				
				<!-- 약관동의 -->
				<div class="wpayment-agree-wrap">
					<h3>약관 동의</h3>
					<ul class="sort_term">
						<li><label for="terms1" onclick="openTerms('1', 'confirm');"><input
								type="checkbox" id="terms1" name="terms1" class="input-check"><span></span>서비스
								이용 약관 동의</label>
							<button type="button" class="btn-terms"
								onclick="viewTerms('1', 'alert');">내용보기</button></li>


						<li><label for="terms3" onclick="openTerms('3', 'confirm');"><input
								type="checkbox" id="terms3" name="terms3" class="input-check"><span></span>개인정보
								제공 동의</label>
							<button type="button" class="btn-terms"
								onclick="viewTerms('3', 'alert');">내용보기</button></li>
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

					<h3>투자 신청 이메일 인증</h3>
					<p class="sub-text">
						신청내역을 최종적으로 확인해주세요.<br>이메일 인증완료 후 신청 내용 변경이 불가합니다.
					</p>
					<div class="email-info">
						<dl>
							<dt>seolartn@gmail.com</dt>
							<dd>
								<button type="button" id="cancelAuthEmailBtn"
									class="btn-link cancel" onclick="cancelAuthEmail();"
									style="display: none;">이메일 인증 취소</button>
							</dd>
						</dl>
					</div>
					<div class="inner-btn-wrap" id="sendAuthEmailBtn">
						<button type="button" class="btn-complete"
							onclick="sendAuthEmail();" style="display: block; width: 100%; height: 52px; line-height: 52px; text-align: center;
							color: #fff; font-size: 17px; background: #23DBAB;">인증번호 발송</button>
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
										<option value="BANK000034">광주은행</option>
										<option value="BANK000003">기업은행</option>
										<option value="BANK000031">대구은행</option>
										<option value="BANK000032">부산은행</option>
										<option value="BANK000901">산림조합</option>
										<option value="BANK000050">상호저축은행</option>
										<option value="BANK000045">새마을금고</option>
										<option value="BANK000007">수협중앙회</option>
										<option value="BANK000088">신한은행</option>
										<option value="BANK000048">신협중앙회</option>
										<option value="BANK000020">우리은행</option>
										<option value="BANK000071">우체국</option>
										<option value="BANK000037">전북은행</option>
										<option value="BANK000035">제주은행</option>
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
 								<p><em>본 프로젝트는 증권을 입고 받을 증권계좌를 등록하셔야 청약 신청이 가능합니다.</em></p>
				   				<p>청약신청자 본인 명의의 계좌로만 증권 입고가 가능합니다. 입고가 불가능한 계좌로 등록된 경우 배정에서 제외됩니다.<br>(비활성 상태 계좌 또는 CMA 계좌인 경우 증권 입고 불가)</p>
				   				<p>프로젝트 마감 전까지 나의 펀딩 현황 페이지에서 계좌 정보 변경이 가능합니다.</p>
		   			</div>
		   			
		   			
				
				<div class="pop-btn-wrap">
	   				<div class="terms div2" style="text-align: center;">
 						<button type="button" class="btn-cancel" onclick="closeSettingAccountPop();" style="height: 52px; margin-right: 6px;
    						line-height: 52px; text-align: center; width: 132px; color: #777; font-size: 17px; background: #fff; border: 1px solid #ddd; box-sizing: border-box;">취소</button>
	   					<button type="button" id="selectAccountBtn" class="btn-complete" onclick="selectAccount();" style="color: #aaa; background: #999; border: 1px solid #999; cursor: default;  width: 132px;
    						height: 53px; padding-top: 3px;" >계좌 설정</button>
	   				</div>
	  			</div>
			
				</form>
				
	  			
	  			<script>
	  				
	  				function closeSettingAccountPop(){
	  					
	  					$("#enquirypopup").close();

	  				}
	  			
	  			</script>
			</div>
			
		</div>
	</div>
	

</body>
</html>