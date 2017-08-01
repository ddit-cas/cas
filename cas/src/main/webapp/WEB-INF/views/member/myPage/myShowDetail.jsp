<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
<div class="company-snb" style="float:left; margin-top: 100px;">
      	<h2>커뮤니티</h2>
		<div class="">
			<ul>
				<li class="active"><a href="/cas/freeboardList">자유게시판</a></li>
				<li><a href="/cas/promotionList">공연홍보</a></li>
				<li><a href="/cas/uccList">CAS-UCC</a></li>
			</ul>
		</div>
   </div>
<div id="body" style="float:right; width: 80%">
	<hr style="border-top: 2px solid #333;margin-top: 0;margin-bottom: 13px;">
	<div style="width: 100%; padding-left: 45%; text-align: center;">
		<button onclick="deletePromotion()">삭제</button>
		<button onclick="updatePromotion()">수정</button>
	</div>
	<div>
		<div>
			<img id="showTitleImg" src="${promotionVO.contentImg}">
		</div>
		<div>
			<table class="table" id="detailShowInfo">
				<tr>
					<td><strong>공연제목</strong></td>
					<td>${promotionVO.contentTitle}</td>
				</tr>
				<tr>
					<td><strong>공연기간</strong></td>
					<td>${promotionVO.startDate}~${promotionVO.endDate}</td>
				</tr>
				<tr>
					<td><strong>공연시간</strong></td>
					<td>${promotionVO.consertTime}</td>
				</tr>
				<tr>
					<td><strong>공연장소</strong></td>
					<td>${promotionVO.consertPlace}</td>
				</tr>
				<tr>
					<td><strong>공연장르</strong></td>
					<td>${promotionVO.consertGenre}</td>
				</tr>
				<tr>
					<td><strong>주최자</strong></td>
					<td>${promotionVO.contentWriter}</td>
				</tr>
				<tr>
					<td><strong>티켓구매처</strong></td>
					<td><a onclick="go_link()">바로가기</a></td>
				</tr>
				<tr>
				</tr>
			</table>
		</div>
	</div>
	
	<hr style="clear:both;">
	<div id="showDetailContent">
		${promotionVO.contentContent}
	</div>
	<h3 style="width:78px; float:left;">오시는길</h3>
	<button onclick="focusPlace()" style="margin-top:13px;">공연장소</button>
	<div id="map" style="width:100%;height:310px;margin-top:10px;"></div>
<script>

	function updatePromotion(){
		location.href="/cas/member/updatePromotion_go?contentNum="+${promotionVO.contentNum};
	}
	
	function deletePromotion(){
		location.href="/cas/member/deletePromotion?contentNum="+${promotionVO.contentNum};
	}
	
	function go_link(){
		window.open('${promotionVO.consertTicket}');
	}
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//apis.daum.net/maps/maps3.js?apikey=9a20b2d2c43d60d0f3d0b90e8ac05e07&libraries=services"></script>
<script>
	var geograp="${promotionVO.consertGeograp}".split('/');
	var lat=geograp[0];
	var lng=geograp[1];

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(lat,lng), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
 	// 마커가 표시될 위치입니다 
    var markerPosition  = new daum.maps.LatLng(lat, lng); 

    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    
    

    var iwContent = '<h4 style="text-align:center;">'+'${promotionVO.consertPlace}'.split('(')[0]+'</h4>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        iwPosition = new daum.maps.LatLng(lat, lng); //인포윈도우 표시 위치입니다

    // 인포윈도우를 생성합니다
    var infowindow = new daum.maps.InfoWindow({
        position : iwPosition, 
        content : iwContent 
    });
      
    // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
    infowindow.open(map, marker); 
    
    function focusPlace(){
    	// 해당 주소에 대한 좌표를 받아서
        var coords = new daum.maps.LatLng(lat, lng);
    	// 지도 중심을 변경한다.
        map.setCenter(coords);
    }
</script>

