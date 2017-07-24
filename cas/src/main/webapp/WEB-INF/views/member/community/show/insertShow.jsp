<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
#imgDiv{
	width: 100%; 
	height: 400px; 
	margin-bottom: 10px;
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
	<div style="background-color: #26bbe2;height: 70px;padding: 16px 24px;margin: 10px 0;">
 		<label style="color:#ffffff; font-size:24px;"><strong>공연등록</strong></label>
 	</div>
	<form name="tx_editor_form" style="width: 100%;height: auto;" id="tx_editor_form" action="/cas/member/insertPromotion" method="post" accept-charset="utf-8" enctype="multipart/form-data">
		<input type="hidden" name="contentWriter" value="${loginUser }">
		<input type="hidden" name="consertGeograp" >
		
		<div style="float:left; width: 40%;">
			<label>포스터</label>(그림을 클릭하여 업로드해주세요.)
			<div id="imgDiv">
				<div class="imgDiv" style="width: 100%; height: 400px; border:1px solid #ccc; border-radius:0.8em;  ">
					<img id="posterImage" src="/cas/resources/images/NO_POSTER.png">
				</div>
				<input id="posterImage-input" name="posterImage"  accept="image/png, image/jpeg, image/gif" class="hidden" type="file">
			</div>
			<div>
				<label>간략설명</label>
				<textarea name='consertContent' style="width: 10%;height: 221px;" placeholder="(400자 이내로 기술하시오)"></textarea>
			</div>
		</div>
	
	
	
		<div style="padding-left: 42%;">
			<div class="form-group">
				<label>제목</label> <input type="text" name="contentTitle" class="form-control showInsertText" id="email" placeholder="제목을 입력하세요.">
			</div>
			<div class="form-group">
				<div>
					<label>장르</label>
					<label style="margin-left:43%;">런닝타임</label>
				</div>
				<div>
				    <select class="form-control genreSelect" name="consertGenre" style="width: 48%; float:left; margin-right: 1%;">
				    	<c:forEach  var="genre" items="${genreList}">
				    		<option value="${genre.genreCode }">${genre.genreName }</option>
				    	</c:forEach>
					</select>
					<input name="consertTime" type="number" min="0" class="form-control" style="width:48%;" step="5" placeholder="분(m)단위로 입력하세요.">
				</div>
			</div>
			<div class="form-group">
				<label style="width: 100%; margin-bottom: 0;">공연기간</label> 
				<label class="showDay" style="font-size: 0.8em">시작날</label> 
				<label class="showDay" style="font-size: 0.8em">종료날</label> 
			</div>
			<div style="margin-bottom: 15px;">
				<input type="date" class="form-control showDay bir1" id="bir" placeholder="year" name="startDate" style="float:left; margin-right: 1%;">
				<input type="date" class="form-control showDay bir2" id="bir" placeholder="year" name="endDate">
			</div>
			<div class="form-group">
				<label>티켓 구입처</label>
				<div style="margin-bottom: 10px;">
					<input name="consertTicket" type="text" class="form-control showInsertText" placeholder="ex)http://ticket.interpark.com/Ticket/Goods/GoodsInfo.asp?GoodsCode=17008482" style="float:left;width: 97%;margin-bottom: 15px;">
				</div>
			</div>
			<div class="form-group">
				<label>장소</label> 
				<div style="margin-bottom: 10px;">
					<input name="address" type="text" class="form-control showInsertText" id="address" placeholder="주소" style="float:left;width: 81%;">
					<input type="button" class="btn btn-default" onclick="execDaumPostcode()" value="주소 검색"><br>
				</div>
				<input name="detailAddress" type="text" class="form-control showInsertText" id="detailAddress" placeholder="상세주소">
				<div id="map" style="width:97%;height:239px;margin-top:10px;"></div>
			</div>
		</div>
		
		<div>
			<div>
				<label style="width: 100%; margin-bottom: 0;">내용</label> 
			</div>
			<jsp:include page="/WEB-INF/views/daumeditor/promotionAndFundingEditor.jsp"></jsp:include>
		</div>
		<div style="float: right; margin-bottom: 50px;">
			<button onclick='saveContent()' type="button" class="btn btn-primary" style="width:90px;background-color:#26bbe2; margin-right: 10px;">전송</button>		
			<button onclick='insertCancel()' type="button" class="btn btn-primary" style="width:90px;background-color:#26bbe2 ">취소</button>		
		</div>
	</form>
</div>


<!-- Sample: Saving Contents -->
<script type="text/javascript">
	function insertCancel(){
		window.location.href = "/cas/promotionList";
	}
	/* 예제용 함수 */
	function saveContent() {
		Editor.save(); // 이 함수를 호출하여 글을 등록하면 된다.
	}

	/**
	 * Editor.save()를 호출한 경우 데이터가 유효한지 검사하기 위해 부르는 콜백함수로
	 * 상황에 맞게 수정하여 사용한다.
	 * 모든 데이터가 유효할 경우에 true를 리턴한다.
	 * @function
	 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
	 * @returns {Boolean} 모든 데이터가 유효할 경우에 true
	 */
	function validForm(editor) {
		// Place your validation logic here

		// sample : validate that content exists
		var validator = new Trex.Validator();
		var content = editor.getContent();
		if (!validator.exists(content)) {
			alert('내용을 입력하세요');
			return false;
		}
		
		return true;
	}
	 
	/**
	 * Editor.save()를 호출한 경우 validForm callback 이 수행된 이후
	 * 실제 form submit을 위해 form 필드를 생성, 변경하기 위해 부르는 콜백함수로
	 * 각자 상황에 맞게 적절히 응용하여 사용한다.
	 * @function
	 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
	 * @returns {Boolean} 정상적인 경우에 true
	 */
	function setForm(editor) {
        var i, input;
        var form = editor.getForm();
        var content = editor.getContent();

        // 본문 내용을 필드를 생성하여 값을 할당하는 부분
        var textarea = document.createElement('textarea');
        textarea.name = 'contentContent';
        textarea.value = content;
        form.createField(textarea);
        alert(content);

        /* 아래의 코드는 첨부된 데이터를 필드를 생성하여 값을 할당하는 부분으로 상황에 맞게 수정하여 사용한다.
         첨부된 데이터 중에 주어진 종류(image,file..)에 해당하는 것만 배열로 넘겨준다. */
        var images = editor.getAttachments('image');
        for (i = 0; i < images.length; i++) {
            // existStage는 현재 본문에 존재하는지 여부
            if (images[i].existStage) {
                // data는 팝업에서 execAttach 등을 통해 넘긴 데이터
//                 alert('attachment information - image[' + i + '] \r\n' + JSON.stringify(images[i].data));
                input = document.createElement('input');
                input.type = 'hidden';
                input.name = 'attach_image'+(i+1);
                input.value = images[i].data.imageurl;  // 예에서는 이미지경로만 받아서 사용
                form.createField(input);
            }
        }

        var files = editor.getAttachments('file');
        for (i = 0; i < files.length; i++) {
            input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'attach_file';
            input.value = files[i].data.attachurl;
            form.createField(input);
        }
        return true;
	}
</script>


<script>
setImgMargin();
	$('#posterImage').on('click', function() {
		$('#posterImage-input').click();
		
		$("#posterImage-input").change(function (){     
	        
	        var file = this.files[0];
	        var reader = new FileReader();
	        // Set preview image into the popover data-content
	        reader.onload = function (e) {
	            $("#posterImage").attr('src', e.target.result);
	            setImgMargin();
	        }        
	        reader.readAsDataURL(file);
	        
	    });

	});
	
	
	
	function setImgMargin(){
		var divs = document.querySelectorAll('.imgDiv');
		  for (var i = 0; i < divs.length; ++i) {
		    var div = divs[i];
		    var divAspect = div.offsetHeight / div.offsetWidth;
		    div.style.overflow = 'hidden';
		    
		    var img = div.querySelector('img');
		    var imgAspect = img.height / img.width;

		    if (imgAspect <= divAspect) {
		      // 이미지가 div보다 납작한 경우 세로를 div에 맞추고 가로는 잘라낸다
		      var imgWidthActual = div.offsetHeight / imgAspect;
		      var imgWidthToBe = div.offsetHeight / divAspect;
		      var marginLeft = -Math.round((imgWidthActual - imgWidthToBe) / 2)
		      img.style.cssText = 'width: auto; height: 100%; margin-left: '
		                      + marginLeft + 'px;'
		    } else {
		      // 이미지가 div보다 길쭉한 경우 가로를 div에 맞추고 세로를 잘라낸다
		      img.style.cssText = 'width: 100%; height: auto; margin-left: 0;';
		    }
		  }
	}
</script>


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
                    	document.getElementsByName('consertGeograp')[0].value=result.addr[0].lat+"/"+ result.addr[0].lng;
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
	
           	document.getElementsByName('consertGeograp')[0].value=latlng.getLat()+"/"+latlng.getLng();
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
