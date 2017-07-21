<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<style>

#accountWrap {
    width: 100%;
    min-height: 100%;
    background: #f9f9f9;
}

#accountWrap #newContainer {
    background: #f9f9f9;
}
.account-wrap {
    padding: 100px 350px;
}
.account-wrap h2 {
    margin-bottom: 8px;
    font-size: 20px;
    color: #4a4a4a;
    font-weight: normal;
}
.account-wrap h3 {
    font-size: 13px;
    line-height: 16px;
    color: #4a4a4a;
    font-weight: normal;
}

.email-input-wrap {
    padding-top: 16px;
}

.input-text {
    -webkit-appearance: none;
    border-radius: 0;
}
.input-text {
    box-sizing: border-box;
    display: block;
    width: 100%;
    padding: 0 17px;
    margin-bottom: 7px;
    height: 46px;
    line-height: 45px;
    font-size: 13px;
    color: #4a4a4a;
    background: #fff;
    border: 1px solid #e4e4e4;
    outline: none;
}
.btn-wrap.small {
    padding-top: 8px;
}
.btn-wrap {
    width: 100%;
    margin-bottom: 10px;
}
.isJoin-email-wrap {
    padding-top: 32px;
    text-align: center;
}

.isJoin-email-wrap p {
    font-size: 13px;
    line-height: 18px;
    color: #4a4a4a;
    display: none;
}

.error-text {
    margin-bottom: 12px;
    font-size: 11px;
    line-height: 14px;
    color: #d0021b;
    display: none;
}

.input-text.error {
    border-color: #d0021b;
}


</style>


            <!-- S : #newContainer -->
            <div id="newContainer">
                <!-- account-wrap -->
                <div class="account-wrap">
                    <h2>아이디 찾기</h2>
                    <h3>소유하고 계신 계정의 정보를 입력해보세요.<br>가입여부를 확인해드립니다.</h3>
                    <form id="form-findId">
                        <div class="email-input-wrap">
                            <input type="email" id="userName" name="userName" class="input-text"  placeholder="이메일 계정" onkeydown="hitEnterkey(event);">
                            <p id="emailError" class="error-text">이메일 형식이 올바르지 않습니다.</p>
                          	<input type="tel" id="userPhone" name="userPhone" class="input-text" placeholder="핸드폰 번호">
                          	<p id="phoneError" class="error-text">휴대폰 형식이 올바르지 않습니다.</p>
                            <p style="display:none;"> 해당 아이디는 seol 입니다</p>
                            <div class="btn-wrap small">
                                <button type="button" id="btnIsJoinedEmail" class="btn-block-mint" onclick="checkEmail()"
                                style="display: block;width: 100%; height: 42px; line-height: 42px; text-align: center;
  										 font-size: 15px; color: #fff; border: none;background: #337ab7; cursor: pointer;">확인</button>
                            </div>
                        </div>
                        
                        
                        <div class="isJoin-email-wrap">
                            <p id="inputedEmail" class="email-text">email</p>
                            <p id="joinedEmail">회원으로 등록된 이메일 아이디입니다.<br>해당 이메일로 로그인하고 CAS를 이용하세요!</p>
                            <p id="notJoinedEmail">는 CAS에 등록되어 있지 않은 계정입니다.</p>
<!--                             <div id="goToJoin" class="btm-menu-link go-to"> -->
<!--                                 <span><a href="/web/waccount/wAccountRegistIntro">회원가입하기</a></span> -->
<!--                             </div> -->
<!--                             <div id="goToLogin" class="btm-menu-link go-to"> -->
<!--                                 <span><a href="/web/waccount/wAccountLogin">로그인</a></span> -->
<!--                             </div> -->
                        </div>
                      </form>
                      <hr>
<!---------------------------------------------비밀번호 찾기 폼------------------------------------------------>
				<div style="margin-top:60px;">
                   <form>
                    <h2>비밀번호 찾기</h2>
                    <h3>가입하셨던 정보들을 입력하시면,<br>비밀번호를 찾으실 수 있습니다.</h3>
                    <div class="email-input-wrap">
                        <input id="userId" type="text" class="input-text" placeholder="아이디">
                        <input id="userName2" type="email" class="input-text" placeholder="이메일 계정">
                        <p class="error-text" id="emailError2">이메일 형식이 올바르지 않습니다.</p>
                        <input id="userTel" type="tel" class="input-text" placeholder="핸드폰 번호">
                        <p id="phoneError2" class="error-text">휴대폰 형식이 올바르지 않습니다.</p>
                        <p class="error-text" id="notJoinedEmail">CAS에 등록되어 있지 않은 계정입니다.</p>
                        
                    </div>
                    <div class="btn-wrap small">
                                <button type="button" id="pwdBtn" class="btn-block-mint" onclick="check()"
                                style="display: block;width: 100%; height: 42px; line-height: 42px; text-align: center;
  										 font-size: 15px; color: #fff; border: none;background: #337ab7; cursor: pointer;">확인</button>
                            </div>
                    <div class="isJoin-email-wrap" id="linkBtnClick" style="display:none;">
                        <p id="inputedEmail" class="email-text">email</p>
                        <p id="joinedEmail">위의 이메일로 비밀번호를 다시 등록할 수 있는<br>링크를 발송했으니 이메일을 확인해주세요.</p>
                        <p id="notJoinedEmail">는 CAS에 등록되어 있지 않은 계정입니다.<br>다른 계정을 입력해보세요.</p>
                    </div>
                    
                    
                    </form>
                    
                    </div>
                </div>
            </div>
                <!-- //account-wrap -->
            <!-- E : #newContainer -->
            
            
<script type="text/javascript">
        //enter 클릭시 버튼 클릭 동작
        function hitEnterkey(e) {
            if (e.which == 13) {
                checkEmail();
            }
        }

        //이메일,핸드폰 번호 형식 확인하는 펑숀
        function checkEmail() {
            var email = $('#userName').val();
            var phoneNum = $('#userPhone').val();
            if (emailCheck(email)) {
                $('#emailError').hide();
                $('#userName').removeClass('error');
                
                isJoinedEmail();
            }
            else {
                $('#emailError').show();
                $('#userName').addClass('error');
            }
            
           //핸드폰 번호 형식 확인
            
            if (phoneCheck(phoneNum)) {
                $('#phoneError').hide();
                $('#userPhone').removeClass('error');
                
            }
            else {
                $('#phoneError').show();
                $('#userPhone').addClass('error');
            }
        }
        
//         비밀번호에서 체크하는 부분
        function check() {
            var email = $('#userName2').val();
            var phoneNum = $('#userPhone').val();
            if (emailCheck(email)) {
                $('#emailError2').hide();
                $('#userName2').removeClass('error');
                
                isJoinedEmail();
            }
            else {
                $('#emailError2').show();
                $('#userName2').addClass('error');
            }
            
           //핸드폰 번호 형식 확인
            
            if (phoneCheck(phoneNum)) {
                $('#phoneError2').hide();
                $('#userTel').removeClass('error');
                
            }
            else {
                $('#phoneError2').show();
                $('#userTel').addClass('error');
            }
        }
        

        //가입된 이메일인지 조사
        function isJoinedEmail() {
            $.ajax({
                url: '/web/waccount/ajaxFindId',
                data: {
                    userName: $('#userName').val()
                },
                type: 'POST',
                success: function(result) {
                    $('#inputedEmail').show();
                    $('#inputedEmail').text($('#userName').val());
                    $('#btnIsJoinedEmail').text('다시 확인');
                    if (result.code==='SUSBA02') {
                        $('#joinedEmail').show();
                        $('#notJoinedEmail').hide();
                        $('span>a', '#goToLogin').attr('href', '/web/waccount/wAccountLogin?account='+$('#userName').val());
                        $('#goToLogin').show();                        
                        $('#goToJoin').hide();                        
                    }
                    else if(result.code==='SUSS000') {
                        $('#joinedEmail').hide();
                        $('#notJoinedEmail').show();
                        $('#goToLogin').hide();
                        $('#goToJoin').show();
                    }
                    else {
                    	alertify.alert('오류가 발생했습니다. CAS에 문의해주시거나(1661-9056), 입력된 정보가 올바른지 다시 한번 확인해주시기 바랍니다.');
    				}
                },
    			fail: function(xhr) {
    				alertify.alert("오류가 발생했습니다. CAS에 문의해주세요(1661-9056). 오류코드 : " + xhr.status);
                }
            });
        }
        
        /* 이메일 형식 확인 */
        function emailCheck(emailAddr) {        	
           	var result = false;
           	var emailIndex = emailAddr.indexOf('@');
           	if (emailIndex > -1 && emailAddr.length > emailIndex+1) {   		
           		result = true;
           	}        	
           	return result;
        }
        
        /* 휴대폰 형식 확인 */
        function phoneCheck(phoneNum){
        	var result = false;
        	var pattern = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/; 
        	if(pattern.test(phoneNum)) { 
        		result = true;
        	}
        	return result;
        }
        
        </script>

</body>
</html>