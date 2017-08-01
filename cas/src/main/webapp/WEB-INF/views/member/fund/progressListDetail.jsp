<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<body>


<link rel="stylesheet" href="/cas/resources/css/fundListDetail.css" type="text/css">
<script type="text/javascript" src="/cas/resources/js/jquery.scrollfollow.js"></script>
<style>
#showTitleImg {
   height: 400px;
   width: 40%;
   float: left;
   padding-left: 26px;
   margin-bottom: 20px;
}

#detailShowInfo {
   border-top: 2px solid #666;
   float: left;
   margin: 22px 0 6px 50px;
   padding-top: 5px;
   width: 51%;
}
#detailShowInfo tr td:nth-child(1) {
   padding: 14px 0;
   border-bottom: 1px solid #ddd;
   width: 40%;                                                                                                      
   text-align: center;
}
#detailShowInfo tr td:nth-child(2) {
   padding: 14px 0;
   border-bottom: 1px solid #ddd;
   width: 60%;
}
#showDetailInfoBtn {
   padding-right: 32px;
}
#showDetailContent {
   width: 100%;
   height: auto;
   border: 3px solid #ddd;
   border-radius: 0 2em 0 2em;
   overflow: hidden;
}
#showDetailContent img {
   width: 100%;
}
#commentDiv {
   border: 3px solid #ddd;
   border-radius: 0 2em 0 2em;
   height: auto;
   margin-top: 50px;
   padding: 9px 9px 24px 9px;
}
.commentTextStyle {
   width: 83%;
   height: 57px;
   border-radius: 0 1em 0 1em;
}
.recommentTextStyle {
    width: 74%;
    height: 57px;
    border-radius: 0 1em 0 1em;
}
.reRecommentTextStyle{
    width: 82%;
    height: 57px;
    border-radius: 0 1em 0 1em;
}
.commentWrite {
   width: 16%;
   height: 56px;
   border-radius: 1em;
}

.commentBtn {
   border: 0;
   outline: 0;
}
#profileImg{
   width: 9%; 
   float: left; 
   text-align: center;
}
.commentHr{
   margin-top: 24px; 
   margin-bottom: 10px; 
   border-top: 1px solid #666;
}
</style>


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
				<li class="active"><a href="/cas/fundList">진행중인 펀딩</a></li>
			<li><a href="/cas/endFundList">종료된 펀딩</a></li>
			<li><a href="/cas/fundingExampleList">성공한 펀딩 </a></li>
			<li>
			<span class="btn">
			<button class="btn btn-primary" onclick='fundEntrollment_go();' style = "background-color:#26bbe2;">펀딩 등록하기</button>
			</span>
			</li>
			</ul>
		</div>
	</div>

	<div class="company-wrap" style="width:960px; float:left; margin-bottom: 2px;">

	

	<div class="detail-top-wrap">
		<div class="top-title">
			<h3>
				${fund.contentTitle }
			</h3>
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

						<!-- S : campaign 컨텐츠 -->
						<div class="wd-ui-campaign-content">
							<div class="wd-ui-cont" style="width:600px;">

								<div class="summary" style="background-color: #ffffff;">
									<h2>${fund.contentContent }</h2>

								</div>

								<br>

								<!-- S : 펀딩 기간, 보상품 제공일 -->
								<div>
									<div style="padding: 20px; background: #eafbf7">
										<p
											style="color: #23dbab; font-size: 13px; line-height: 20px; margin-bottom: 10px;">
											<strong>목표 금액</strong> ${fund.fundingTargetAmount }원 &nbsp; &nbsp; <strong>펀딩기간</strong>
											${fund.fundingStartDate }-${fund.fundingEndDate }
										</p>


									</div>
									<div style="padding: 20px; background: #f0f0f0;">

										<p style="color: #4a4a4a; font-size: 12px; line-height: 19px;">
											<strong>투자 취소 안내</strong><br> 투자 후 24시간 내에는 투자취소가 가능하지만 24시간내에 
											펀딩이 마감하면 취소를 할수 없읍니다. 
										</p>
									</div>
								</div>
								<!-- E : 펀딩 기간, 보상품 제공일 -->
								<br> <br>
								<!-- S : 프로젝트 내용 -->
								<div id="introdetails" style="height: auto;" class="story">
									<div class="inner-contents">
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
									<span class="progress1-bar" style="width: ${fund.fundingPresentAmount/fund.fundingTargetAmount*100-(fund.fundingPresentAmount/(fund.fundingTargetAmount*100)%0.1)};">
										<i class="ribbon-view"></i> <em class="progress-num left-tag">${fund.fundingPresentAmount/fund.fundingTargetAmount*100-(fund.fundingPresentAmount/(fund.fundingTargetAmount*100)%0.1)}%</em>
										<!-- 50% 이상일때 클래스 left-tag 추가 -->
									</span>
								</div>
							</div>

							<!-- 목표금액 -->
							<div class="sect view_goal pt0 pb0">
								<p class="goal-sum">
									모집 목표
									${fund.fundingTargetAmount }
									원
								</p>
								<h2>
									<strong>${fund.fundingPresentAmount }</strong> 원 모집완료<br>
								</h2>
							</div>
							
							<div class="sect">
								<strong>${fund.investNum }</strong> 명의 투자자
							</div>
							<div class="sect">
							<strong>${fund.dDay }</strong> 일 남음
 				
							</div>
									
							<div class="btn-equity-state pb25 clearfix">
			
								<span class="pull-left">
									<button type="button" id="investBtn2" class="btn-block bg_primary btn-xl" style="color: #fff; width: 211px; margin-right: 10px; height: 58px; border: 1px solid #cbcbcb;" onclick="investFund();">투자하기</button>
								</span>
								<span class="pull-left zzim-after hide">
									<button type="button" class="btn-zzim on" style="height: 60px;">
										<i class="ico-star"><img  class="zzimImg" src="resources/images/icon_like_on.png"></i> <span id="zzim-cnt-on"></span>
									</button>
								</span> 
								<span class="pull-left zzim-before">
									<button type="button" class="btn-zzim" style="height: 60px;">
										
										<i class="ico-star"><img  class="zzimImg" src="resources/images/icon_like.png"> </i><span id="zzim-cnt">${fund.likenum }</span>
									</button>
								</span>
							</div>
									
			<script>
				function investFund(){
					location.href="/cas/member/investmentForm?contentNum=${fund.contentNum}";
				}
			</script>							
						</div>
						<!--// [N] 프로젝트 정보  -->
	<c:choose>
	<c:when test="${not empty loginUser }">
<script>
// 하트표시바꾸기-------------------------------------------------------------

	var cnt = $('span#zzim-cnt').text();
	$('.btn-zzim').click(function(){
		
// 		$('.zzim-before').toggleClass('hide');
// 		cnt++
// 		$('span#zzim-cnt-on').text(cnt);
		
// 		$('.zzim-after').toggleClass('hide');
// 		cnt--
// 		$('span#zzim-cnt').text(cnt);

		var $param = $.param({contentNum:"${fund.contentNum}"});
		if($('.zzim-before').hasClass('hide')){
			$.post('/cas/member/unlikeContent', $param , 
					function(res){
			})
			cnt--;
			$('.zzim-before').removeClass('hide');
			$('.zzim-after').addClass('hide');
			$('#zzim-cnt').text(cnt);
		}else{
			//url, data , success function     
			$.post('/cas/member/likeContent', $param , 
					function(res){  
			})
			cnt++;
			$('.zzim-before').addClass('hide');
			$('.zzim-after').removeClass('hide');
			$('#zzim-cnt-on').text(cnt);
		}
	})
</script>
	</c:when>	
	<c:otherwise>
	<script>
// 하트표시바꾸기-------------------------------------------------------------

	$('.btn-zzim').click(function(){
		location.href="/cas/member/freeboardForm";
	})
	</script>
	</c:otherwise>				
	</c:choose>

<script>
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
<c:if test="${isLike==1 }">
			<script>
				$('.zzim-before').addClass('hide');
				$('.zzim-after').removeClass('hide');
				$('#zzim-cnt-on').text(cnt);
			</script>
			</c:if>		

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

									<!-- detail css -->
									<!--    댓글부분 -->
   <div id="commentDiv" style="width: 86%; margin-left: 213px; clear: both;">
      <form class="commentForm">
         <c:if test="${not empty loginUser.memId}">      
            <input type="hidden" name="contentWriter" value="${loginUser.memId }">
            <input type="hidden" name="contentTitle" value="${fund.contentTitle}">
            <input type="hidden" name="contentParentsContent" value="${fund.contentNum}">
            <input type="hidden" name="contentImg" value="${loginUser.memFrofileimage}">
         </c:if>
         <input type="text" class="commentTextStyle commentText" id="contentContent" name="contentContent"> 
         <input type="button" class="commentWrite" onclick="comment('.commentForm')" value="댓글달기">
         <hr class="commentHr">
         <c:if test="${commentList.size() eq 1}">
            <h2 style="text-align: center;">댓글이 없습니다.</h2>
         </c:if>
      </form>
      
      
      
      
      <ul id="commentView" style="padding:0">
      
         
         <c:forEach var="comment" items="${commentList }" begin="1" varStatus="status">
            <c:if test="${status.count ne 1 }">
               <c:if test="${comment.contentParentsContent eq fund.contentNum }">
                     </div>
                     <hr class="commentHr">
                  </li>
               </c:if>
            </c:if>
            <c:choose>
               <c:when test="${comment.contentParentsContent eq fund.contentNum }">
                  <li style="margin-bottom:20px;">
                     <div id="profileImg">
                        <img src="${comment.contentImg }" style="width: 60px;height: 60px;"> 
                     </div>
                     <div style="width: 100%">
                        <a href="#"><strong>${comment.contentWriter }</strong></a> <label>${comment.contentRegisDate }</label><br>
                        <label style="margin-right: 2%;">${comment.contentContent}</label>
                        <c:if test="${not empty loginUser.memId}">
                        <button type="button" class="commentBtn recommentBtn " target="#Write${comment.contentNum }">댓글달기</button>
                        </c:if>
                        <c:if test="${comment.contentCount ne 0 }">
                           <button type="button" class="commentBtn recommentView" data-toggle="collapse" data-target="#recomment${comment.contentNum}">댓글보기(${comment.contentCount})</button>
                        </c:if>
                        <div style="float: right;">
                           <c:if test="${comment.contentWriter eq loginUser.memId}">
                              <button type="button" data-toggle="modal" class="btn btn-primary" data-target="#myModal${comment.contentNum }">수정</button>
                              
                              <div class="modal fade" id="myModal${comment.contentNum }" role="dialog">
                                  <div class="modal-dialog modal-sm">
                                       <div class="modal-content">
                                           <div class="modal-header">
                                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                                              <h4 class="modal-title">댓글수정</h4>
                                         </div>
                                         <div class="modal-body">
                                              <input type="text" id="updateContent${comment.contentNum }" style="width:100%;" placeholder="${comment.contentContent}">
                                         </div>
                                         <div class="modal-footer">
                                              <button type="button" class="btn btn-default" data-dismiss="modal" onclick="updateComment('${comment.contentNum}')">수정</button>
                                              <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                                         </div>
                                       </div>
                                  </div>
                                </div>
                              
                              <button type="button"  class="btn btn-primary" onclick="deleteComment('${comment.contentNum}')">삭제</button>
                           </c:if>
                           <c:if test="${not empty loginUser.memId}">
                              <button data-toggle="modal" data-target="#squarespaceModal${comment.contentNum}" class="btn btn-primary">신고</button>
                              <!-- 신고 modal폼 -->
                              <form action="/cas/member/report" method="post" name="singo">
                                 <div class="modal fade" id="squarespaceModal${comment.contentNum }" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                       <div class="modal-content">
                                          <div class="modal-header">
                                             <button type="button" class="close" data-dismiss="modal">
                                                <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                             </button>
                                             <h3 class="modal-title" id="lineModalLabel">신고하기</h3>
                                          </div>
                                          <div class="modal-body">
                                                <div class="form-group">
                                                   <label for="exampleInputtext">신고분류</label>
                                                   <div class="checkbox" id="checks">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="광고" onClick="setCheckBoxAsRadio(singo.chk, this);"> 광고(성인광고 포함)
                                                      </label>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="음란물" onClick=""> 음란물
                                                      </label>
                                                   </div>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="혐오" onClick=""> 혐오
                                                      </label>
                                                   </div>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="심한욕설" onClick=""> 심한욕설
                                                      </label>
                                                   </div>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="악플" onClick=""> 악플(공격적 발언, 비아냥)
                                                      </label>
                                                   </div>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox"  class="clear" name="chkbox" value="기타" onClick="checkDisable(this.form)"> 기타
                                                      </label>
                                                   </div>
                                                   </div>
                                                
                                                <div class="form-group">
                                                   <label for="exampleInputtext">신고 내용</label> 
                                                   <input type="text" class="form-control" id="content" name="textbox" disabled>
                                                </div>
                                                </div>
                                                <input type="hidden" name="report_date" value="${report.report_date}">
                                                <input type="hidden" name="contentWriter" value="${comment.contentWriter}">
                                                <input type="hidden" name="contentNum" value="${comment.contentNum}">
                                                <input type="hidden" name="boardCode" value="B007">
                                             
                                          </div>
                                          <div class="modal-footer">
                                             <div class="btn-group btn-group-justified" role="group"
                                                aria-label="group button">
                                                <div class="btn-group" role="group">
                                                   <button type="button" class="btn btn-danger"
                                                      data-dismiss="modal" role="button" id="close">닫기</button>
                                                </div>
                                                <div class="btn-group" role="group">
                                                   <button type="submit" id="test" class="btn btn-primary" role="button">신고하기</button>
                              
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </form>
                           </c:if>
                        </div>
                        
                        <div id="Write${comment.contentNum }" class="hideDiv " style="padding-top: 10px; display:none;">
                           <form class="commentForm${comment.contentNum }">
                              <c:if test="${not empty loginUser.memId}">
                                 <input type="hidden" name="contentWriter" value="${loginUser.memId }">
                                 <input type="hidden" name="contentTitle" value="${fund.contentTitle}">
                                 <input type="hidden" name="contentParentsContent" value="${comment.contentNum}">
                                 <input type="hidden" name="contentImg" value="${loginUser.memFrofileimage}">
                              </c:if>
                              <input type="text" class="recommentTextStyle commentText" name="contentContent"> 
                              <input type="button" class=" commentWrite" onclick="comment('.commentForm${comment.contentNum }')" value="댓글달기">
                           </form>
                        </div>
                     <div id="recomment${comment.contentNum }" class="collapse" style="padding: 10px 0 0 80px; margin-bottom: 20px;">
                  </c:when>
                  <c:otherwise>
            <!--              리댓글부분 -->
            <!--                   댓글을 넣는 Div -->
                     <div style="margin-bottom:10px ">
                        <div style="width: 9%; float: left; text-align: center;">
                           <img src="${comment.contentImg }" style="width: 40px; height: 40px;">
                        </div>
                        <div style="width: 100%">
                           <a href="#"><strong>${comment.contentWriter}</strong></a> <label>${comment.contentRegisDate }</label><br>
                           ${comment.contentContent}
                           <c:if test="${not empty loginUser.memId}">
                           <button type="button" class="commentBtn recommentBtn" target="#Write${comment.contentNum }">댓글달기</button>
                           </c:if>
                           <div style="float: right;">
                              <c:if test="${comment.contentWriter eq loginUser.memId}">
                                 <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#myModal${comment.contentNum }">수정</button>
                                 
                                 <div class="modal fade" id="myModal${comment.contentNum }" role="dialog">
                                     <div class="modal-dialog modal-sm">
                                          <div class="modal-content">
                                              <div class="modal-header">
                                                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                 <h4 class="modal-title">댓글수정</h4>
                                            </div>
                                            <div class="modal-body">
                                                 <input type="text" id="updateContent${comment.contentNum }" style="width:100%;" placeholder="${comment.contentContent}">
                                            </div>
                                            <div class="modal-footer">
                                                 <button type="button" class="btn btn-default" data-dismiss="modal" onclick="updateComment('${comment.contentNum}')">수정</button>
                                                 <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                                            </div>
                                          </div>
                                     </div>
                                   </div>
                                 
                                 
                                 <button class="btn btn-primary" type="button" onclick="deleteComment('${comment.contentNum}')">삭제</button>
                              </c:if>
                              <c:if test="${not empty loginUser.memId}">
                                 <button type="button" class="btn btn-primary" data-target="#squarespaceModal${comment.contentNum}">신고</button>
                                 <form action="/cas/member/report" method="post" name="singo">
                                 <div class="modal fade" id="squarespaceModal${comment.contentNum }" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                       <div class="modal-content">
                                          <div class="modal-header">
                                             <button type="button" class="close" data-dismiss="modal">
                                                <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                             </button>
                                             <h3 class="modal-title" id="lineModalLabel">신고하기</h3>
                                          </div>
                                          <div class="modal-body">
                                                <div class="form-group">
                                                   <label for="exampleInputtext">신고분류</label>
                                                   <div class="checkbox" id="checks">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="광고" onClick="setCheckBoxAsRadio(singo.chk, this);"> 광고(성인광고 포함)
                                                      </label>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="음란물" onClick=""> 음란물
                                                      </label>
                                                   </div>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="혐오" onClick=""> 혐오
                                                      </label>
                                                   </div>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="심한욕설" onClick=""> 심한욕설
                                                      </label>
                                                   </div>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox" class="clear" name="chk" value="악플" onClick=""> 악플(공격적 발언, 비아냥)
                                                      </label>
                                                   </div>
                                                   <div class="checkbox">
                                                      <label> <input type="checkbox"  class="clear" name="chkbox" value="기타" onClick="checkDisable(this.form)"> 기타
                                                      </label>
                                                   </div>
                                                   </div>
                                                
                                                <div class="form-group">
                                                   <label for="exampleInputtext">신고 내용</label> 
                                                   <input type="text" class="form-control" id="content" name="textbox" disabled>
                                                </div>
                                                </div>
                                                <input type="hidden" name="report_date" value="${report.report_date}">
                                                <input type="hidden" name="contentWriter" value="${comment.contentWriter}">
                                                <input type="hidden" name="contentNum" value="${comment.contentNum}">
                                                <input type="hidden" name="boardCode" value="B007">
                                             
                                          </div>
                                          <div class="modal-footer">
                                             <div class="btn-group btn-group-justified" role="group"
                                                aria-label="group button">
                                                <div class="btn-group" role="group">
                                                   <button type="button" class="btn btn-danger"
                                                      data-dismiss="modal" role="button" id="close">닫기</button>
                                                </div>
                                                <div class="btn-group" role="group">
                                                   <button type="submit" id="test" class="btn btn-primary" role="button">신고하기</button>
                              
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </form>
                              </c:if>
                           </div>
                           <div id="Write${comment.contentNum }" class="hideDiv " style="padding-top: 10px; display:none;">
                              <form class="commentForm${comment.contentNum }">
                                 <c:if test="${not empty loginUser.memId}">      
                                    <input type="hidden" name="contentWriter" value="${loginUser.memId }">
                                    <input type="hidden" name="contentImg" value="${loginUser.memFrofileimage}">
                                    <input type="hidden" name="contentTitle" value="${fund.contentTitle}">
                                    <input type="hidden" name="contentParentsContent" value="${comment.contentParentsContent}">
                                 </c:if>
                                 <input type="text" class="reRecommentTextStyle commentText" name="contentContent"> 
                                 <input type="button" class="commentWrite" onclick="comment('.commentForm${comment.contentNum }')" value="댓글달기">
                              </form>
                           </div>
                        </div>
                     </div>
                  </c:otherwise>
                  </c:choose>
            </c:forEach>
               </div>
               <c:if test="${commentList.size() ne 1}">
                  <hr class="commentHr">
               </c:if>
         </li>
      </ul>
   </div>
</div>

<script>
// 체크박스 하나만 체크되도록.
function setCheckBoxAsRadio(targetObj, inObj){
 var len = targetObj.length;
 
 if(len>1){ // 객체가 배열이라면. 배열이 아니면 그냥 체크박스로 작동
  for(var i=0; i<len; i++){
   if(targetObj[i] != inObj)
    targetObj[i].checked = false;
  }
 }
}

function checkDisable(frm)
{
    if( frm.chkbox.checked == true ){
      frm.textbox.disabled = false;
   } else 
   {
      frm.textbox.disabled = true;
   }
}

</script>
<script>

//    function report_go(){
//       location.href="/cas/member/report";
//    }
$(function(){
   $('#test').on('click',function(){
      swal('신고완료','신고가 완료되었습니다.','success');
      $('.confirm').bind('click',function(){
         $('#squarespaceModal').modal('hide');
      });
   });
   
});
   
   
//       $('#close').on('click',function(){
//          $('.clear').prop('checked',false);
//       });

   
</script>


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

<script>
   function deleteComment(id){
      $.ajax({
         url : "member/deleteCommnet",
         type : 'post',
         data : "contentNum="+id,
         dataType : 'html',
         success : function(res) {
            alert(res.message);
            resetPage();
         }
      })
   }
   function updateComment(id){
      var updateContent=$('#updateContent'+id).val();
      if(updateContent==''){
         alert('댓글을 입력하지 않아 실패하였습니다.')
      }else{
         $.ajax({
            url : "member/updateCommnet",
            type : 'post',
            data : "contentNum="+id+"&contentContent="+updateContent,
            dataType : 'html',
            success : function() {
               resetPage();
            }
         })
      }
   }
   
//    댓글을 저장하는 부분
   function comment(formName) {
      var comment = $(formName).serialize();
      $.ajax({
         url : "member/insertCommnet",
         type : 'post',
         data : comment,
         dataType : 'html',
         success : function() {
            resetPage();
            alert('댓글이 성공적으로 입력되었습니다.');
         }
      })
   }
   function resetPage() {
      location.href="fundDetail?contentNum="+${fund.contentNum};
   }
   //    댓글달기를 숨겼다 보였다하는 부분
   $('.recommentBtn').on('click', function() {
      var target = $(this).attr('target');
      if ($(target).css('display') == 'none') {
         $('.hideDiv').slideUp('500');
         $(target).slideDown('500');
      } else {
         $('.hideDiv').slideUp('500');
      }
   })

   $('.recommentView').on('click', function() {
      $('.hideDiv').slideUp('500');
   })
   
</script>

</body>
