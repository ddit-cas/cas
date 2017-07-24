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


<form method="get" action="caserSearch">
				<div class="search_list">
					<div class="sel_r">
						<fieldset>
							<legend>검색</legend>
							<select name="select_chk_1" class="selDomain" title="검색내용 선택">
								<option value="chk_name">이름</option>
								<option value="chk_nick">닉네임</option>
							</select> <span class="selSch"><input type="text"
								name="select_chk_2" title="검색입력란"></span>
							<button type="submit" onclick="chksel();"
								title="검색" class="btn_search">검색</button>
						</fieldset>
					</div>
				</div>

</form>		
<c:choose>
	<c:when test="${caserList.size() > 0 }">
	<c:forEach var="i" begin="${firstRow}" end="${lastRow}"> 
	
				<div class="container2" style="margin-top: 20px; width: 763px;">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="well well-sm">
								<div class="row">
									<div class="col-sm-6 col-md-4">
										<img src="resources/images/seol.jpg" alt=""
											class="img-rounded img-responsive" />
									</div>
									<div class="col-sm-6 col-md-8">
										<a href="caserDetail"><h4>${caserList[i].memId }</h4></a>
										<p>${caserList[i].memName }</p>
										<p>${caserList[i].memNick }</p>
										<small><cite title="San Francisco, USA">${caserList[i].memActive } <i class="glyphicon glyphicon-map-marker">
											</i>
										</cite></small>
										<p>
											<i class="glyphicon glyphicon-envelope"></i>&nbsp;${caserList[i].memEmail }
											<br /> <i class="glyphicon glyphicon-gift"></i>${caserList[i].memBirthdate }
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
			</c:when>	
			
			<c:otherwise>
				<tr>
					<td colspan="5" style="text-align:center;">
						해당 내용이 없습니다.
					</td>
				</tr>
			</c:otherwise>
		</c:choose>
			
		

			
				</div>	
			</div>	
		</div>
		
		<!-- 페이지수  -->
<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3">
	<div class="row">
		<nav aria-label="...">
			<ul class="pager" role="tablist">
				<li class="previous">
					<a href="/cas/caserList?tab=${minNum-1}"><span aria-hidden="true">←</span>
						이전
					</a>
				</li>
				<c:forEach var="i" begin="${minNum}" end="${maxNum}">
				<c:choose>
				<c:when test="${index==i}">
				<li>
					<a style="background: #aaa;" aria-controls="tab1" href="/cas/profileView?tab=${i}">
						${i }
					</a>
				</li>
				</c:when>
				<c:otherwise>
				<li>
					<a aria-controls="tab1" href="/cas/profileView?tab=${i}">
						${i }
					</a>
				</li>
				</c:otherwise>
				</c:choose>
				</c:forEach>
				<li class="next">
					<a href="/cas/profileView?tab=${maxNum+1}">다음<span aria-hidden="true">→</span>
					</a>
				</li>
			</ul>
		</nav>
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