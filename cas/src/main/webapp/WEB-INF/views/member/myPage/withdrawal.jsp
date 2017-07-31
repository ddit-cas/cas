<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<body>
<style>
.text-danger strong {
    		color: #9f181c;
		}
		.receipt-main {
			background: #ffffff none repeat scroll 0 0;
			border-bottom: 12px solid #333333;
			border-top: 12px solid #9f181c;
			margin-top: 50px;
			margin-bottom: 50px;
			padding: 40px 30px !important;
			position: relative;
			box-shadow: 0 1px 21px #acacac;
			color: #333333;
			font-family: open sans;
		}
		.receipt-main p {
			color: #333333;
			font-family: open sans;
			line-height: 1.42857;
		}
		.receipt-footer h1 {
			font-size: 15px;
			font-weight: 400 !important;
			margin: 0 !important;
		}
		.receipt-main::after {
			background: #414143 none repeat scroll 0 0;
			content: "";
			height: 5px;
			left: 0;
			position: absolute;
			right: 0;
			top: -13px;
		}
		.receipt-main thead {
			background: #414143 none repeat scroll 0 0;
		}
		.receipt-main thead th {
			color:#fff;
		}
		.receipt-right h5 {
			font-size: 16px;
			font-weight: bold;
			margin: 0 0 7px 0;
		}
		.receipt-right p {
			font-size: 12px;
			margin: 0px;
		}
		.receipt-right p i {
			text-align: center;
			width: 18px;
		}
		.receipt-main td {
			padding: 9px 20px !important;
		}
		.receipt-main th {
			padding: 13px 20px !important;
		}
		.receipt-main td {
			font-size: 13px;
			font-weight: initial !important;
		}
		.receipt-main td p:last-child {
			margin: 0;
			padding: 0;
		}	
		.receipt-main td h2 {
			font-size: 20px;
			font-weight: 900;
			margin: 0;
			text-transform: uppercase;
		}
		.receipt-header-mid .receipt-left h1 {
			font-weight: 100;
			margin: 34px 0 0;
			text-align: right;
			text-transform: uppercase;
		}
		.receipt-header-mid {
			margin: 24px 0;
			overflow: hidden;
		}
		
		#container {
			background-color: #dcdcdc;
		}
		
		#body{}
		
		#btnses{
			margin:10px;
			text-align:center;
		
		}
</style>


<div id="body">
<div class="container">
<div class="company-cont" style="height: auto; width: 960px;">
			<h3 class="box" style="background-color:;">탈퇴신청하기</h3>
	<div class="row">
        <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
    			<div class="receipt-header">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="receipt-left">
						<!--이미지사진  -->
<!-- 							<img class="img-responsive" alt="iamgurdeeposahan" src="/resources/images/noticee.png" style="width: 71px; border-radius: 43px;"> -->
						</div>
					</div>
					
				</div>
            </div>
			
            <div>
                <div class="c_header">
				<h2>탈퇴 안내</h2>
				<p class="contxt">회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
			</div>

			<!-- [D] input type="text"에 focus 되었을때 class에 on 추가 (ie6,ie7 대응) -->
			<div class="section_delete">
				<h3 class="h_dropout">
					사용하고 계신 아이디(<em></em>)는 탈퇴할 경우 재사용 및 복구가 불가능합니다.
				</h3>
				<p class="dropout_dsc">
					<em>탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</em>하오니 신중하게 선택하시기 바랍니다.
				</p>
				<h3 class="h_dropout">탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</h3>
				<p class="dropout_dsc">
					회원정보 및 게시물, 주소록 등 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.<br>삭제되는
					내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요.
				</p>
				<table cellspacing="0" border="1"
					summary="탈퇴 후 회원정보 및 개인형 서비스 이용기록 삭제 안내" class="tbl_type">
					<caption>탈퇴 후 회원정보 및 개인 이용기록은 모두 삭제됩니다.</caption>
					<colgroup>
						<col width="145">
						<col width="*">
					</colgroup>
					<tbody id="tblBullet1">
						<tr>
							<th scope="row">포인트</th>
							<td>보유 중인 포인트 소멸, 크라우드펀딩진행 중 탈퇴시 정보 삭제</td>
						</tr>
						<tr>
						<tr>
							<th scope="row">크라우드 펀딩</th>
							<td>저장된 펀딩 삭제</td>
						</tr>
						<tr>
							<th scope="row">게시판</th>
							<td>게시물 및 댓글 삭제</td>
						</tr>
						<tr>
							<th scope="row">기타</th>
							<td>아이디에 연계된 개인적 영역의 정보 및 게시물 삭제</td>
						</tr>
					</tbody>
				</table>
            </div>
            
            <form name="fm" id ="fm" method="post" action="/user2/help/leaveId.nhn?m=viewInputUserInfo">
				<input type="hidden" name="token_help" value="LMngb1Wu2crxTa62" />
				<input type="hidden" name="lang" value="ko_KR" />
				<div class="dropout_agree_area">
					<p class="contxt">
						<strong>
						     	  탈퇴 후에는 아이디 <em></em> 로 다시 가입할 수 없으며 아이디와 데이터는 복구할 수 없습니다.
						     <br>
								 게시판형 서비스에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.<br>또한, 네이버 아이디를 사용해 다른 서비스에 로그인 할 수 없게 됩니다. 
							</strong>
					</p>
					<input type="checkbox" id="dropoutAgree" name="dropoutAgree" onclick="clickcr(this,'otn.guideagree','','',event);" >
					<label for="dropoutAgree"><strong>안내 사항을 모두 확인하였으며, 이에 동의합니다.</strong></label>
				</div>
				
				<div class="col-sm-12" style="margin-bottom:30px;">
					<div class="form-group">
						<label class="col-sm-4" for="memPwd">비밀번호 확인</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="pwd1" placeholder="비밀번호를 입력하세요." name="memPwd">
						</div>
					</div>	
				</div>
				<div id="btnses">
					<input type="submit" class="btn btn-primary" value="탈퇴" />
					<input type="reset" class="btn btn-danger" value="취소" />
				</div> 
			</form>
            
			
			
			
			
        </div>    
	</div>
</div>
</div>
</div>
</body>