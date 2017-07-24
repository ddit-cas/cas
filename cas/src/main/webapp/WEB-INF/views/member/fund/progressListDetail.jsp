<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>



<body>


<link rel="stylesheet" href="/cas/resources/css/fundListDetail.css" type="text/css">
<script type="text/javascript" src="/cas/resources/js/jquery.scrollfollow.js"></script>
<style>
div.company-wrap {
    width: 1000px;
    margin: -57px 212px;
}

.detail-top-wrap .top-title h3 {
    font-size: 29px;
    line-height: 42px;
    font-weight: 500;
    text-align: center;
    color: #fff;
}

.wd-layout-sub-content-inner {
    width: 1071px;
    /* width: 1000px; */
    margin: 0 -77px;
    padding: 0 65px;
    /* min-height: 700px; */

}

.goal_progress .progress1-bar .ribbon-view {
    display: block;
    position: absolute;
    right: -7px;
    top: -30px;
    width: 7px;
    height: 28px;
    background: url(resources/images/riboon_bar_view.png) no-repeat 0 0;
    
}

.btn-zzim i.ico-star {
    display: block;
    width: 39px;
    height: 24px;
    margin: 9px auto 5px;
/*     background: url(resources/images/icon_like.png) no-repeat 0 0; */
    background-size: 100% auto;
}


.recommend-box {
	position:absolute;
    margin-top: 18px;
    float: right;
    width: 242px;
    border: 1px solid #e4e4e4;
    padding: 20px 20px;
    background-color: #fff;
}

.recommend-box p {
    margin: 5px 0px 10px 5px;
    font-weight: 500;
    font-size: 16px;
    border-bottom: 1px solid #dddddd;
    width: 200px;
    padding-bottom: 3px;
}

.detail-top-wrap .top-title {
	margin-top: 77px;
    width: 100%;
    padding: 60px 0 55px;
    background: #26bbe2;
}
.bg_primary {
    background: #26bbe2 !important;
}

</style>
<script>
function fundEntrollment_go(){
	location.href="/cas/member/insertFundIntro";
}
</script>


<div id="body">
	<div class="company-snb" style="float:left;">
		<h2>크라우드 펀딩</h2>
		<div class="">
			<ul>
				<li class="active"><a href="fundList">진행중인 펀딩</a></li>
			<li><a href="endFundList">종료된 펀딩</a></li>
			<li><a href="fundingExampleList">성공한 펀딩 </a></li>
			<li>
			<span class="btn">
			<button class="btn btn-primary" onclick='fundEntrollment_go();' style = "background-color:#26bbe2;">펀딩 등록하기</button>
			</span>
			</li>
			</ul>
		</div>
	</div>

	<div class="company-wrap" style="width:960px; float:left;">

	

	<div class="detail-top-wrap">
		<div class="top-title">
			<h4>
				<em>공공프로젝트</em> <strong>#아픔을</strong> 프로젝트
			</h4>
			<h3>
				<a href="/web/campaign/detail/436">성폭력 피해자들의 치료를 돕기 위한 음원 발매
					프로젝트, 승화</a>
			</h3>
		</div>
		<div class="tab-list">
			<ul>
				<li class="active"><a href="#">스토리</a></li>
			</ul>
		</div>
	</div>

	<div class="wd-layout-sub-content-inner">
		<div class="wd-ui-sub-contents" style="padding-top: 0px;">

			<!-- 캠페인 정보, 개설자 정보 -->
			<div class="wd-ui-info-wrap ">

				<!-- S : 캠페인 정보 -->
				<div class="wd-ui-sub-campaign-info " style="padding-top: 0;clear:both;">

					<!-- S : Tab Content -->
					<div class="wd-ui-tab-content" style="padding-top: 0;float:left;">

						<!-- 이미지가 아닌 동영상 URL이 넘어오는 경우 iframe에 동영상을 보여줘야 함 -->
						<div class="wd-ui-campaign-mov">

							<iframe id="campaignVideoFrame" width="632" height="355"
								src="//www.youtube.com/embed/l_dTnQ2N_CA" frameborder="0"
								allowfullscreen="" wmode="Opaque"></iframe>
							<!-- <video width="300" height="170" src="http://youtu.be/l_dTnQ2N_CA" class="video-js vjs-default-skin" controls="controls" ></video> -->
						</div>


						<!-- S : campaign 컨텐츠 -->
						<div class="wd-ui-campaign-content">
							<div class="wd-ui-cont" style="width:600px;">

								<div class="summary" style="background-color: #ffffff;">
									<h2>성폭력 범죄는 끊임없이 일어납니다. 하지만 성폭력 피해자들에 대한 관심은 일시적일 뿐입니다.
										한번이라도 성폭력 피해자들의 아픔과 상처를 생각해 본 적이 있나요? 저희 [집에가는길]은 피해자들의 마음을
										이해하고 보듬으며 ‘승화’라는 프로젝트 명처럼 성폭력 피해자들의 아픔과 상처를 음악, 미술 등 예술로 승화하고자
										합니다.</h2>

								</div>

								<br>

								<!-- S : 펀딩 기간, 보상품 제공일 -->
								<div>
									<div style="padding: 20px; background: #eafbf7">
										<p
											style="color: #23dbab; font-size: 13px; line-height: 20px; margin-bottom: 10px;">
											<strong>목표 금액</strong> 500,000원 &nbsp; &nbsp; <strong>펀딩기간</strong>
											2014.09.26-2014.11.21
										</p>



										<p style="color: #4a4a4a; font-size: 12px; line-height: 19px;">
											<strong>100% 모이지 않아도 리워드가 제공되는 프로젝트</strong><br> 이 프로젝트는
											펀딩 마감일까지 목표 금액이 100% 모이지 않아도 리워드가 제공되며, 결제가 진행됩니다.<br>메이커가
											약속한 가장 빠른 리워드 발송 시작일은 <strong>2014.11.21</strong> 입니다. (리워드마다
											발송 시작일이 다를 수 있으니 펀딩 전, 꼭 확인해 주세요)
										</p>


									</div>
									<div style="padding: 20px; background: #f0f0f0;">

										<p
											style="color: #4a4a4a; font-size: 12px; line-height: 19px; margin-bottom: 10px;">
											<strong>펀딩 결제 안내</strong><br> 펀딩 결제는 바로 진행되지 않고, 펀딩 마감일
											다음 영업일인 <strong>2016.11.01</strong>에 모두 함께 진행됩니다.
										</p>

										<p style="color: #4a4a4a; font-size: 12px; line-height: 19px;">
											<strong>펀딩 취소 안내</strong><br> 펀딩 마감일까지는 MY 페이지 [나의
											펀딩현황]에서 언제든 펀딩 취소가 가능하지만, 마감일 이후에는 리워드 제작 및 배송이 시작되어 펀딩 취소가
											불가합니다.<br> 리워드 관련 환불 및 교환은 메이커가 정한 규정에 따르며, 스토리 하단의 프로젝트
											위험 요인과 해결 방안을 참고해주세요.
										</p>
									</div>
								</div>
								<!-- E : 펀딩 기간, 보상품 제공일 -->
								<br> <br>
								<!-- S : 프로젝트 내용 -->
								<div id="introdetails" style="height: auto;" class="story">
									<div class="inner-contents">
										<p>

											<img style="max-width: 630px;"
												src="https://www.wadiz.kr/wwwwadiz/green001/2014/0926/JEVKMFKBPXOE.png"><br
												style="clear: both;">&nbsp;

										</p>
										<div class="wd-ui-risk">
											<div style="margin-top: 10px;">
												<span style="">프로젝트 위험 요인</span>
											</div>
										</div>
		
									</div>
									<!-- E : 프로젝트 내용 -->
								</div>
								<!-- E : campaign 컨텐츠 -->
								<!-- S : 업데이트 링크 -->

								<!-- E : 업데이트 링크 -->
								<!-- S : 댓글 영역 -->
								<div style="margin-top: -34px;">
									<!-- S : 댓글 리스트 include -->
									
									<!--안내문 -->
									
									
									
									
									
											<div class="detail-info-wrap">
													<!-- 로그인 후 -->
													<!-- 채권 -->
													<div class="view-login-after">
														<i class="detail-label"></i>
														<!-- 펀드정보 -->
													</div>
							
											<!-- 투자위험고지 -->
											<div class="detail-warning-box" style="background-color: transparent; margin-top: 50px">
												<div class="text-wrapper risk">
													<p class="warning-title">투자위험고지</p>
													<p class="warning-text">
														비상장 기업에 대한 투자는 높은 기대수익만큼 손실가능성을 가지고 있습니다. 투자 전에 투자위험에 대한 내용을 꼭
														확인해 주세요.
													</p>
												</div>
											</div>										
											<!-- //투자위험고지 끝 -->
										</div>
										
										<div class="alert-section alert_invest">
									<!-- <p class="h4 fs14 alert-icon-text">투자 위험 주지 및 고지</p> -->
									<h4 class="h4 fs14 text-center">투자 위험 주지 및 고지</h4>
									<ol>
										<li>본 위험고지서는 자본시장과 금융투자에 관한 법률(이하 “자본시장법”이라고만 합니다)
											제117조의7 제4항에 의하여 귀하가 CAS에 청약의 주문을 하기
											전에 투자의 위험을 사전에 충분히 인지할 수 있도록 CAS가 귀하에게 교부하는 것입니다.</li>
										<li><b>1.</b>귀하는 원본손실의 위험성이 있으며, 청약증거금 등 투자한 자금의 원본을 회수할 없음에 
											따른 손실의 위험이 있음을이해합니다. 
											또한 귀하가 예상하거나 기대하는 수익의 일부 또는 전부를 얻지 못할 수 있습니다.</li>
										<li><b>2.</b>귀하는 CAS의 홈페이지에 게재(정정)된 발행조건, 발행인의
											재무상태가 기재된 서류 및 사업계획서의 내용, 투자위험요소 등을 충분히 확인하였으며,
											청약의 주문 시 회사는 투자 위험의 고지 등에 관하여 별도로 정한 방법에 의하여 통지하는 내용에 대하여
											확인합니다.</li>
										<li><b>3.</b>귀하는 금번에 큰 제약이 있음과 귀하가 예상하는 회수금액에 대한 일부 또는 전부를 회수할 수 없는
											위험이 있음을 이해하며, 귀하가 이를 감당할 수 있음을 확인합니다.</li>
										<li><b>4.</b>귀하는 시장의 상황, 제도의 변경이 있을 수 있으며, 자본시장법 등 관련법규에
											근거하여 투자의 한도에 제한이 있는 경우 이를 준수하여야 함을 이해합니다.</li>
										<li><b>5.</b>귀하는 자본시장법 제117조의10 제7항에 따라 전문투자자(벤처캐피탈 등)에
											대한 매도 등 예외적인 경우를 제외하고는 원칙적으로 1년간 전매가 제한된다는 점을 이해합니다.</li>
										<li><b>6.</b>귀하는 정부가 투자대상인 증권과 관련하여 게재된 사항이 진실 또는 정확하다는
											것을 인정하거나 해당 증권의 가치를 보증 또는 승인한 것이 아니라는 점과 게재된 투자정보에 관한 사항은
											청약기간 종료 전에 정정될 수 있음을 확인합니다.</li>
										<li><b>7.</b>귀하는 아래 사항들에 대하여도 이해하였음을 확인합니다. <br> <br>
											1) CAS는 청약과 관련하여 별도의 수수료는 징수가능합니다. <br> 2) 발행인이 투자의 발행조건과
											관련하여 조기상환조건을 설정한 경우 이에 대한 구체적인 내용을 홈페이지를 통해 반드시 확인하여야 합니다. <br>
											3) CAS는 자본시장법상의 온라인소액투자중개업자로서의 지위에서 온라인소액증권발행인과 온라인소액투자중개계약을
											체결하여 위 발행인이 발행하는 투자에 대한 청약 거래를 중개하므로, 모집예정금액에 도달한다고 하더라도 직접
											돈을 발행하거나 주금을 납입 받지 않습니다. <br> 4) 청약의 우대차별사유 : CAS는
											발행인의 요청에 따라 합리적이고 명확한 기준(선착순 등)에 따라 투자자의 자격 등을 제한할 수 있습니다. 이
											경우 귀하는 위 기준과 조건에 따라 청약거래에 있어 차별을 받게 될 수 있습니다. <br>
										</li><li>위 사항들은 청약의 주문 거래에 수반되는 위험∙제도 및 청약의 주문 거래와 관련하여 귀하가
											알아야 할 사항을 간략하게 서술한 것으로 귀하의 위 거래와 관련하여 발생될 수 있는 모든 위험과 중요 사항을
											전부 기술한 것은 아닙니다. 따라서 상세한 내용은 CAS 및 관계법규를 통하여 확인하여야 합니다. 또한 이
											고지서는 청약의 주문 관련 법규 등에 우선하지 못한다는 점을 양지하시기 바랍니다.</li>
									</ol>
								</div>


									<!-- detail css -->
									<!-- [N] 프로젝트 상세 댓글 -->
									<div class="wdetail-comment" style=" padding-bottom: 50px; padding-left: 14px;">
										<p class="comment-num">
											<em>8</em>개의 댓글이 달려있습니다.
										</p>
										<form id="recommform" action="#" method="post">
											<div class="main-comment">
												<textarea placeholder="댓글을 입력하세요." id="commentCnt"
													onclick="isLoginUser()" name="body"
													style="overflow-y: hidden; height: 78px;"></textarea>
												<input id="depth" name="depth" type="hidden" value="0">
												<input id="groupId" name="groupId" type="hidden" value="2">
												<div class="btn-wrap">
													<button class="btn-comment" onclick="ajaxRegistComment();">댓글달기</button>
												</div>
											</div>
										</form>

										<div class="comment-box">

											<div class="comment-wrap">
												<div class="comment-info">


													<a href="javascript:goUserProfile(50437031)"><em
														style="background-image: url(https://wadizwww.imgix.net/wwwwadiz/green001/fb_profile_pics/1032341289.jpg?dpr=2&amp;amp;auto=format,compress&amp;amp;cs=tinysrgb&amp;amp;gifq=70&amp;amp;w=46&amp;amp;h=46)"></em><span
														class="name">최유진</span></a>


												</div>
												<p id="cmtCnt_1" class="comment-content">여러분의 모습이 참
													멋지네요! 응원할게요! :)</p>
												<input type="hidden" id="originRec-1"
													value="여러분의 모습이 참 멋지네요! 응원할게요!  :)">
												<div class="comment-bottom">
													<div id="modifyOffBtm_1">
														<button type="button" id="testBtn"
															onclick="$('#reply_1').show();$('#replyCnt_1').focus();">답글
															달기</button>
														<span class="date">2014.10.23 09:14:56</span>
													</div>
													<div id="btnModifyOn_1" style="display: none;">
														<button type="button" onclick="cancelModifyComment('1');">취소</button>
														<button type="button" onclick="ajaxModifyComment('1');">수정완료</button>
													</div>
												</div>
											</div>

											<div id="reply_1" class="comment-wrap reply edit hide">
												<div class="comment-info">
													<em
														style="background-image: url(/resources/equity/img/_temp/profile-default.png)"></em><span
														class="name"></span>
												</div>
												<form id="replyForm_1">
													<textarea id="replyCnt_1" name="body" style="overflow-y: hidden;"></textarea>
													<input name="parentThread" type="hidden" value="2274000">
													<input name="groupId" type="hidden" value="2"> 
													<input name="depth" type="hidden" value="1">
												</form>
												<div class="comment-bottom">
													<button type="button" onclick="$('#reply_1').hide();">취소</button>
													<button type="button"
														onclick="ajaxResgistCommentReply('1')">작성완료</button>
												</div>
											</div>

											<div class="comment-wrap reply">
												<div class="comment-info">

													<a href="javascript:goMakerProfile(29634030)"><em
														style="background-image: url(https://www.wadiz.kr/wwwwadiz/green001/2014/0906/FQZOYZGMUKJR.png)"></em><span
														class="name">집에가는길<i class="mark">메이커</i></span></a>

												</div>
												<p id="cmtCnt_2" class="comment-content">감사합니다!!! ㅎㅎ</p>
												<div class="comment-bottom">
													<div id="modifyOffBtm_2">
														<span class="date">2014.11.10 21:09:24</span>
													</div>
													<div id="btnModifyOn_2" style="display: none;">
														<button type="button" onclick="cancelModifyComment('2');">취소</button>
														<button type="button" onclick="ajaxModifyComment('2');">수정완료</button>
													</div>
												</div>
											</div>

									</div>
									
									
									
								
									
									<!-- //[N] 프로젝트 상세 댓글 -->

									<!-- S : 추천의 글 -->
									<br>

									<!-- E : 댓글 리스트 include -->
								</div>
								<!-- E : 댓글 영역 -->
								<input type="hidden" id="movieembed" value="">
							</div>
							<!-- E : campaign 컨텐츠 -->
						</div>
					</div>
					</div>
					<!-- E : 캠페인 정보 -->
					</div>
					<!-- S : 우측 캠페인 관련 정보 -->
					<div class="wd-ui-sub-opener-info" style="padding-top: 0; float:right; margin-left:30px;">

						<!-- [N] 프로젝트 정보  -->
						<div class="view_detail pr">
								
										
							<div class="goal_progress">
								<!-- 목표달성시 클래스 done 추가 -->
								<div class="progress1">
									<span class="progress1-bar" style="width: 66%;">
										<i class="ribbon-view"></i> <em class="progress-num left-tag">66%</em>
										<!-- 50% 이상일때 클래스 left-tag 추가 -->
									</span>
								</div>
							</div>

							<!-- 목표금액 -->
							<div class="sect view_goal pt0 pb0">
								<p class="goal-sum">
									모집 목표
									100,000,000
									원
								</p>
								<h2>
									
									<strong> 66,400,000</strong> 원 모집완료<br>
									
			                      	
									
								</h2>
							</div>
							
							<div class="sect">
								<strong>85</strong> 명의 투자자
							</div>
							<div class="sect">
							<strong>4</strong> 일 남음
 				
							</div>
									
							<div class="btn-equity-state pb25 clearfix">
			
								<span class="pull-left">
									<button type="button" id="investBtn2" class="btn-block bg_primary btn-xl" style="color: #fff; width: 211px; margin-right: 10px; height: 58px; border: 1px solid #cbcbcb;" onclick="investProc('592');">투자하기</button>
								</span>
								<span class="pull-left zzim-after hide">
									<button type="button" class="btn-zzim on" style="height: 60px;" onclick="removeInterested('592');">
										<i class="ico-star"><img  class="zzimImg" src="resources/images/icon_like_on.png"></i> <span id="zzim-cnt-on"></span>
									</button>
								</span> 
								<span class="pull-left zzim-before">
									<button type="button" class="btn-zzim" style="height: 60px;" onclick="registerInterested();">
										
										<i class="ico-star"><img  class="zzimImg" src="resources/images/icon_like.png"> </i><span id="zzim-cnt">83</span>
									</button>
								</span>
								
							</div>
																
						</div>
						<!--// [N] 프로젝트 정보  -->
						
						
<script>

// 하트표시바꾸기-------------------------------------------------------------

	var cnt = $('span#zzim-cnt').text();
	$('.btn-zzim').click(function(){
		
		$('.zzim-before').toggleClass('hide');
		cnt++
		$('span#zzim-cnt-on').text(cnt);
		
		$('.zzim-after').toggleClass('hide');
		cnt--
		$('span#zzim-cnt').text(cnt);
		
		
		
		/*
		if($('.zzim-before').isClass('hide')){
			cnt++;
			$('#zzim-cnt on').val(ctn);
		}else{
			cnt--;
			$('#zzim-cnt').val(ctn);
		}
		*/
	})







$('#testBtn').click(function(){
	$('#reply_1').toggleClass("hide");
});

	$(document).ready(function (){
		var navCheckbox = $("#globalNavOpener, #globalSubNavOpener, #myMenuOpener");
		var $popupScrollTop = 0;
		navCheckbox.change(function(){
			if(navCheckbox.is(":checked")) {
				$popupScrollTop = $(window).scrollTop();
				$('body').css('position','fixed').css('width','100%').css('top', 0);
				$('html').css('overflow-y','scroll');
				intercomButtonControl('hide', true);
			}else{
				$('body').css('position','static').css('width','100%');
				$('html').css('overflow-y','auto');
				// $(window).scrollTop($popupScrollTop);
				intercomButtonControl('show', true);
			}
		});
	
	})
	
	
</script>

						<!--[N] 베스트 기여 서포터 정보  -->
						<div class="project-bestsupporter">
							<p class="project-right-title">베스트 기여 서포터</p>
							<div class="bestsupporter-list">
								<ul id="bestSupporterList">

								<li>
										<button class="profile" onclick="goUserProfile('71189234')"
											style="background-image: url(/resources/Images/img_blank.png)"></button>
										<p class="name">배지예</p>
										<p>
											<span>3.7%</span> 기여
										</p>
									</li>
								<li>
										<button class="profile" onclick="goUserProfile('55318034')"
											style="background-image: url(https://wadizwww.imgix.net/wwwwadiz/green001/fb_profile_pics/1032341289.jpg?dpr=2&amp;amp;auto=format,compress&amp;amp;cs=tinysrgb&amp;amp;gifq=70&amp;amp;w=46&amp;amp;h=46)"></button>
										<p class="name">최유진</p>
										<p>
											<span>3.7%</span> 기여
										</p>
									</li>

									<li>
										<button class="profile" onclick="goUserProfile('44995634')"
											style="background-image: url(https://wadizwww.imgix.net/wwwwadiz/green001/fb_profile_pics/100001405582803.jpg?dpr=2&amp;amp;auto=format,compress&amp;amp;cs=tinysrgb&amp;amp;gifq=70&amp;amp;w=46&amp;amp;h=46)"></button>
										<p class="name">이정준</p>
										<p>
											<span>3.4%</span> 기여
										</p>
									</li>

									<li>
										<button class="profile" onclick="goUserProfile('44958234')"
											style="background-image: url(https://wadizwww.imgix.net/wwwwadiz/green001/fb_profile_pics/626321725.jpg?dpr=2&amp;amp;auto=format,compress&amp;amp;cs=tinysrgb&amp;amp;gifq=70&amp;amp;w=46&amp;amp;h=46)"></button>
										<p class="name">Hoon Lee</p>
										<p>
											<span>2.7%</span> 기여
										</p>
									</li>

									<li>
										<button class="profile" onclick="goUserProfile('45097634')"
											style="background-image: url(/resources/Images/img_blank.png)"></button>
										<p class="name">신은정</p>
										<p>
											<span>2.7%</span> 기여
										</p>
									</li>


									<li>
										<button class="profile" onclick="goUserProfile('45539634')"
											style="background-image: url(/resources/Images/img_blank.png)"></button>
										<p class="name">한상혁</p>
										<p>
											<span>2.7%</span> 기여
										</p>
									</li>

									<li>
										<button class="profile" onclick="goUserProfile('67384634')"
											style="background-image: url(/resources/Images/img_blank.png)"></button>
										<p class="name">민준기</p>
										<p>
											<span>2.7%</span> 기여
										</p>
									</li>


									<li><em class="profile"
										style="background-image: url(/resources/Images/img_blank.png)"></em>
										<p>
											익명의 서포터<br>
											<span>2.7%</span> 기여
										</p></li>


									<li>
										<button class="profile" onclick="goUserProfile('70101234')"
											style="background-image: url(/resources/Images/img_blank.png)"></button>
										<p class="name">이윤주</p>
										<p>
											<span>2.7%</span> 기여
										</p>
									</li>

								</ul>

								<p id="bestSupporterMore" class="btn-more">
									<button onclick="seeMoreBestSupporter()">더 보기</button>
								</p>
								<p id="bestSupporterClose" class="btn-more close">
									<button onclick="closeBestSupporter()">닫기</button>
								</p>

							</div>
						</div>
						<!--// [N] 베스트 기여 서포터 정보  -->


						<!-- S : 인기 프로젝트 리스트 -->
						<div id="normalpane" >
							<div class="recommend-box">
								<p>인기 프로젝트</p>

								<div class="item">
									<div class="number">1</div>
									<div class="text">
										<a href="/web/campaign/detail/13175">가격마저 놀랍다! 디자이너 캐리어
											&amp; 백팩, 샤플 Dr.Nah</a>
									</div>
								</div>

								<div class="item">
									<div class="number">2</div>
									<div class="text">
										<a href="/web/campaign/detail/12333">이제는 로봇청소기도 슬림이 '대세'
											초슬림 로봇청소기 욜로봇슬림</a>
									</div>
								</div>

								<div class="item">
									<div class="number">3</div>
									<div class="text">
										<a href="/web/campaign/detail/13535">가격, 디자인, 기능을 모두 잡은 국민
											전동킥보드, 아이로드 i6</a>
									</div>
								</div>

								<div class="item">
									<div class="number">4</div>
									<div class="text">
										<a href="/web/campaign/detail/13222">시계, 무드등, 무선충전기가 하나로!
											'오블리크 제로'!</a>
									</div>
								</div>

								<div class="item">
									<div class="number">5</div>
									<div class="text">
										<a href="/web/campaign/detail/13208">'수퍼스노우' 당신을 위한 아침대용식
											내가 먹은 한 끼가 내 몸을 만든다</a>
									</div>
								</div>

								<div class="item">
									<div class="number">6</div>
									<div class="text">
										<a href="/web/campaign/detail/12623">킥보드? NO! 킥바이크!!도시를
											말달리다!! 쿨런전동킥바이크&amp;킥바이크</a>
									</div>
								</div>

								<div class="item">
									<div class="number">7</div>
									<div class="text">
										<a href="/web/campaign/detail/11917">[터치백] 어떤 움직임에도 흘러내리지
											않는 데일리백</a>
									</div>
								</div>

								<div class="item">
									<div class="number">8</div>
									<div class="text">
										<a href="/web/campaign/detail/12947">체중관리 효과가 그냥 착용만 해도! -
											스마트벨트 '웰트'</a>
									</div>
								</div>

								<div class="item">
									<div class="number">9</div>
									<div class="text">
										<a href="/web/campaign/detail/12368">쏟을 걱정 노! 손은 핸들 위로!
											1+1컵홀더 - 컵플러스</a>
									</div>
								</div>

								<div class="item">
									<div class="number">10</div>
									<div class="text">
										<a href="/web/campaign/detail/13074">5,500원으로 해외여행 100배
											즐기기</a>
									</div>
								</div>

							</div>
						</div>
					</div>

					

					<!-- S : 프로젝트 신고 팝업 -->






					<div class="" tabindex="-1" role="dialog"
						aria-labelledby="ui-dialog-title-reportppp"
						style="display: block; z-index: 1002; outline: 0px; position: relative; height: auto; width: 514px; top: -34179px; left: 565.5px;">

					</div>

					<!-- E : 프로젝트 신고 팝업 -->


					<!-- S : 리턴 폼 -->
					<form action="/web/waccount/wAccountLogin" id="returnForm"
						method="get" novalidate="novalidate">
						<input type="hidden" id="returnURL" name="returnURL">
					</form>
					<!-- E : 리턴 폼 -->


					<div id="authMailLypop" class="lypop-fixed" style="display: none;">
						<div class="popup-mint-basic">
							<a href="javascript:closeLyPop('authMail');" class="btn-close">
								<em></em>
							</a>
							<div class="popup-mint-text">
								<strong class="tit-popup">펀딩을 진행하기 위한<br> 기본 회원
									정보를 확인해 주세요.
								</strong>
								<div style="padding: 20px;">- 이메일 인증 : 미인증</div>
							</div>
							<div class="btn-wrap">
								<a class="btn-pd-mint" href="/web/waccount/wAuth">기본 회원정보 변경</a>
							</div>
						</div>
					</div>



					<!-- E : 우측 캠페인 관련 정보 -->
				</div>
			</div>
			<!-- //서브 컨텐트 영역 -->
		</div>
	</div>
		
</div>


<script type="text/javascript" src="/resources/static/js/waccount/wfacebookAccount.js?ver20170210"></script>
<script type="text/javascript" src="/resources/js/jquery/countdown/jquery.countdown.min.js"></script>
<script src="/resources/static/js/lib/clipboard.min.js"></script>


<script type="text/javascript">
var urlClipboard = new Clipboard('#urlCopyBtn');
urlClipboard.on('success', function(e) {
	e.clearSelection();
   alertify.alert('URL이 복사 되었습니다.');
   $('#shareLink').blur();
});
urlClipboard.on('error', function(e) {
	e.clearSelection();
    $('#shareLink').blur();
});

/*공통레이어팝업닫기*/
function showLyPop(popName){
	$('.black-bg-wrap').show();
	$('#'+popName+'Lypop').show();
	$('body').css('position','fixed').css('width','100%');
}

/*공통레이어팝업닫기*/
function closeLyPop(popName){
	$('.black-bg-wrap').hide();
	$('#'+popName+'Lypop').hide();
	$('body').css('position','static').css('width','100%');
}




// 기여자 더 보기
function seeMoreBestSupporter() {
    $("#bestSupporterList").css("height","auto");
    $("#bestSupporterMore").hide();
    $("#bestSupporterClose").show();
}
// 기여자 닫기
function closeBestSupporter() {
    $("#bestSupporterList").css("height","95px");
    $("#bestSupporterMore").show();
    $("#bestSupporterClose").hide();
}

// 프로젝트 신고
function reportpopup(){
	var sessionUser = "";
	
	if(common.sessionIsNotEmpty(sessionUser)){
		$("#reportppp").dialog("open");
		
		// 신고 form 초기화
		$("#reportpppForm").each(function() {  
			this.reset();  
		});
		
	}else{
		$("#returnForm #returnURL").val(location.href);
		$("#returnForm").submit();
	}
}



function wadizIcon(){

	$('#wadiz-cont-intro').css('display','block');
	
}


</script>


<script>
$(document).ready(function(){
    $(".recommend-box").scrollFollow({
        speed : 800,    // 꿈지럭 거리는 속도
        offset : 200     // 웹페이지 상단에서 부터의 거리(바꿔보면 뭔지 안다)
    });
});
</script>



</body>
