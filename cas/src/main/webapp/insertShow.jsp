<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<style>
#imgDiv{
	width: 100%;
	height: 400px;
	background: #eee;
}
.showInsertText{
	width: 97%;
}

.showDay{
	width: 48%;
}
</style>

<div class="company-snb" style="float:left; margin-top: 100px;">
<h2>CAS-이야기</h2>
<div class="">
   <ul style="margin-right: 40px;">
      <li class="active"><a href="fundList">공지사항</a></li>
      <li><a href="#">CAS란</a></li>
      <li><a href="fundingExampleList">행사일정</a></li>
      </ul>
   </div>
</div>
<div id="body" style="float:right; width: 80%">
 	<h1>공연등록</h1>
	<hr style="border-top: 2px solid #333;margin-top: 0;margin-bottom: 13px;">
	<div style="float:left; width: 40%;">
		<div id="imgDiv">
			<img src="">
			<input id="profile-image-input"  accept="image/png, image/jpeg, image/gif" class="hidden" type="file">
		</div>
	</div>




	<div style="padding-left: 42%;">
		<div class="form-group">
			<label>제목</label> <input type="text" class="form-control showInsertText" id="email" placeholder="제목을 입력하세요.">
		</div>
		<div class="form-group">
			<label for="pwd">장소</label> 
			<div style="margin-bottom: 10px;">
				<input type="text" class="form-control showInsertText" id="address" placeholder="주소" style="float:left;width: 81%;">
				<input type="button" class="btn btn-default" onclick="execDaumPostcode()" value="주소 검색"><br>
			</div>
			<input type="text" class="form-control showInsertText" id="detailAddress" placeholder="상세주소">
			<div id="map" style="width:97%;height:300px;margin-top:10px;"></div>
		</div>
	</div>
	
	<div style="float: right; width: 100%">
		<div style="width: 50%">
			<div>
				<label style="width: 100%; margin-bottom: 0;">공연기간</label> 
				<label class="showDay" style="font-size: 0.8em">시작날</label> 
				<label class="showDay" style="font-size: 0.8em">종료날</label> 
			</div>
			<div>
				<input type="date" class="form-control showDay bir1" id="bir" placeholder="year" name="bir" style="float:left; margin-right: 1%;">
				<input type="date" class="form-control showDay bir2" id="bir" placeholder="year" name="bir">
			</div>
		</div>
		
		<div style="border: 2px solid #eee;">
			<div style="padding: 3px; border-right: 2px solid #eee; width: auto;">
				<input type="button" value="요일별"><br>
				<input type="button" value="날짜별">
			</div>
			<div style="border-right: 2px solid #eee;">
			</div>
			<div>
			</div>
		</div>
	</div>
</div>

<script>
var today=new Date();
var day=today.getDate();
var month=today.getMonth()+1;
var year=today.getFullYear();
if(month<10){
	month="0"+month;
}
if(day<10){
	day="0"+day;
}
$('.bir1').attr('min',year+"-"+month+"-"+day);

$(document).ready(function(){
	$('.bir1').change(function(){
	    var input =$('.bir1').val();
	    if(input==""){
		    $('.bir2').attr('min',year+"-"+month+"-"+day);
	    }else{
		    $('.bir2').attr('min',input);
	    }
		    $('.bir2').val(input);
	})
	
	$('.bir2').change(function(){
	    var input =$('.bir1').val();
	    if(input==""){
	    	alert('시작날짜를 먼저 설정해 주세요');
		    $('.bir2').val('');
	    }
	})
	
})
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//apis.daum.net/maps/maps3.js?apikey=9a20b2d2c43d60d0f3d0b90e8ac05e07&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(36.324848395,127.4200920443), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
    infowindow = new daum.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = data.address; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 기본 주소가 도로명 타입일때 조합한다.
                if(data.addressType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("address").value = fullAddr;
                // 주소로 좌표를 검색
                geocoder.addr2coord(data.address, function(status, result) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {
                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
                    	alert(result.addr[0].lat+","+ result.addr[0].lng);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)

                        marker.setMap(map);
                    }
                });
            }
        }).open();
    }
</script>

<script>

// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
daum.maps.event.addListener(map, 'click', function(mouseEvent) {
	// 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    var detailAddr=latlng.getLat() + ' ,' + latlng.getLng();
    detailAddr="";
    searchDetailAddrFromCoords(mouseEvent.latLng, function(status, result) {
        if (status === daum.maps.services.Status.OK) {
            detailAddr += !!result[0].roadAddress.name ?  result[0].roadAddress.name : '';
            detailAddr +=  result[0].jibunAddress.name;
            
            // 마커를 클릭한 위치에 표시합니다 
            marker.setPosition(mouseEvent.latLng);
            marker.setMap(map);

            // 지도 중심을 변경한다.
            map.setCenter(new daum.maps.LatLng(latlng.getLat(), latlng.getLng()));
            
            document.getElementById("address").value = detailAddr;
            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
        }   
    });
});


function searchAddrFromCoords(coords) {
    // 좌표로 행정동 주소 정보를 요청합니다
    geocoder.coord2addr(coords);         
}

function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2detailaddr(coords, callback);
}


</script>
