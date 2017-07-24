<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>

<style>
.bn_wrap {
    overflow: hidden;
    width: 1122px;
    padding-left: 237px;
    height: 585px;
}

.btn-primary {
    color: #fff;
    background-color: #26bbe2;
    border-color: #2e6da4;
}

.dropdown-menu>li>a {
    display: block;
    padding: 3px 25px;
    clear: both;
    font-weight: 400;
    line-height: 1.42857143;
    color: #333;
    white-space: nowrap;
}



</style>

	<div class="company-wrap">

		<div class="company-snb">
			<h2>Caser</h2>
			<div class="">
				<ul>
					<li><a href="profileView">프로필 뷰</a></li>
				</ul>
			</div>
		</div>

		<div class="contents">

			<h3 class="title" style="margin-left: 234px; margin-top: 22px; font-size: 30px;">CASER PROFILE LIST</h3>


			<div class="bn_wrap" style="height:auto;">
				<input type="hidden" name="pageNoChk" value="4"> <input
					type="hidden" name="mbSearchKey" value="3">



				<div class="search_list">
					<div class="sel_r">
						<fieldset>
							<legend>검색</legend>
							<select name="select_chk_1" class="selDomain" title="검색내용 선택">
								<option value="chk_All" selected="">전체</option>
								<option value="chk_name">이름</option>
								<option value="chk_nick">닉네임</option>
							</select> <span class="selSch"><input type="text"
								name="select_chk_2" onfocus="only_number(this)" value=""
								onkeydown="javascript:chksel('shk');" class="ipt_search"
								title="검색입력란"></span>
							<button type="submit" onclick="javascript:chksel('exe');"
								title="검색" class="btn_search">검색</button>
						</fieldset>
					</div>
				</div>


	<c:forEach var="caser" items="${caserList}">
				<div class="container2" style="margin-top: 20px; width: 763px;">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="well well-sm">
								<div class="row">
									<div class="col-sm-6 col-md-4">
										<img src="resources/images/seol.jpg" alt=""
											class="img-rounded img-responsive" />
									</div>
									<div class="col-sm-6 col-md-8">
										<h4>${caser.memId }</h4>
										<p>${caser.memName }</p>
										<small><cite title="San Francisco, USA">${caser.memActive } <i class="glyphicon glyphicon-map-marker">
											</i>
										</cite></small>
										<p>
											<i class="glyphicon glyphicon-envelope"></i>&nbsp;${caser.memEmail }
											<br /> <i class="glyphicon glyphicon-globe"></i><a
												href="http://www.jquery2dotnet.com">seokartn.instagram</a>
											<br /> <i class="glyphicon glyphicon-gift"></i>${caser.memBirthdate }
										</p>
										<!-- Split button -->
										<div class="btn-group">
											<button type="button" class="btn btn-primary">&nbsp;Social</button>
											<button type="button" class="btn btn-primary dropdown-toggle"
												data-toggle="dropdown">
												<span class="caret"></span><span class="sr-only">&nbsp;Social</span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li style="width:66px; float:left;" ><a href="javascript:toSNS('facebook','공유테스트중','https://youtu.be/nFaMnAq5bCo')" title="페이스북으로 가져가기"><img src="resources/images/facebook.jpg" style="width:40px;"></a></li>
												<li style="float:right;"><a href="javascript:toSNS('twitter','테스트중입니다.','https://youtu.be/nFaMnAq5bCo')" title="트위터로 가져가기"><img src="resources/images/twitter.jpg" style="width:40px;"></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
			</c:forEach>
			
			
				</div>	
			</div>
		</div>
<script>		
    // send to SNS
    function toSNS(sns, strTitle, strURL) {
        var snsArray = new Array();
        var strMsg = strTitle + " " + strURL;
		var image = "이미지경로";
 
        snsArray['twitter'] = "http://twitter.com/home?status=" + encodeURIComponent(strTitle) + ' ' + encodeURIComponent(strURL);
        snsArray['facebook'] = "http://www.facebook.com/share.php?u=" + encodeURIComponent(strURL);
        window.open(snsArray[sns]);
    }
 
    function copy_clip(url) {
        var IE = (document.all) ? true : false;
        if (IE) {
            window.clipboardData.setData("Text", url);
            alert("이 글의 단축url이 클립보드에 복사되었습니다.");
        } else {
            temp = prompt("이 글의 단축url입니다. Ctrl+C를 눌러 클립보드로 복사하세요", url);
        }
    }
</script>		
		
</body>
</html>