<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<style>
	.selectViewDay{
		padding:0;
		margin:15px 0.5%;
		background: #eee;
		width: 98%;
		float:left;
		text-align: center;
		border-radius:5px;
		font-weight: bold;
	}
	
	#selectViewStatue{
		color:blue;
	}
	
	.week{
		background-color: #f5f5f5;
		text-align: center;
	}
	
	#showDayInfo{
		clear: both;
		width: 97%;
		margin: 1.5%;
		height: 340px;
		background: #fff;
		border-radius:5px;
	}
	
	.showCalender{
		margin:2%;
		width: 46%;
		background-color:#fff; 
		float:left;
	}
	#showInfoDiv{
		width: 68%;
		float: right;
	}
	
	.showDay{
		text-align: center;
		padding:2px;
	}
	
	#showTitle{
		background: #eee;
		border: 1px solid #ccc;
		padding:3px;
		height: 30px;
	}
	.day{
		background-color: #fff;
		text-align: center;
	}
	#calenderDiv{
		text-align: center;
	}
	
	#dayShowLabel{
		background-color: #f5f5f5;
		width: 100%;
		text-align: center;
	}
	#calenderEdge{
		background-color: #eee;
		width: 100%;
		height: 233px;
		padding:1%;
	}
	.selectDay,.monthDay:hover,.monthDay:focus{
		color:blue;
	}
	
	@media (max-width:770px){
		.showCalender{
			clear:both;
		}
		#showDayInfo{
			clear:both;
			text-align: center;
		}
	}
</style>

<script>
	var d = new Date();
	var year = d.getFullYear();
	var month = d.getMonth() + 1;
	var lastDay = (new Date(year, month, 0)).getDate();
	var days = findFirstDay();
	var selectMonth=month;
	var selectDay=d.getDate();
	$(document).ready(function(){
		setDayShow(selectDay);
		if (month < 10) {
			$("#yearMonth").text(year+'.0' + month);
		} else {
			$("#yearMonth").text(year+"."+month);
		}
		$("#monthTitle").text(month+"월 일정");
		setCalender();
		
		setSelectDayShow();
		setMonthShow();
		
		$("#next").click(function() {
			month++;
			if (month == 13) {
				month = 1;
				year++;
			}
			if (month < 10) {
				$("#yearMonth").text(year+'.0' + month);
			} else {
				$("#yearMonth").text(year+"."+month);
			}
			$("#monthTitle").text(month+"월 일정");
			setCalender();
			setMonthShow();
		})
		$("#prev").click(function() {
			month--;
			if (month == 0) {
				month = 12;
				year--;
			}
			if (month < 10) {
				$("#yearMonth").text(year+'.0' + month);
			} else {
				$("#yearMonth").text(year+"."+month);
			}
			$("#monthTitle").text(month+"월 일정");
			setCalender();
			setMonthShow();
		})
		
		
		$('#monthDays').on('click','.monthDay',function(){
			$('.selectDay').removeClass('selectDay');
			$(this).addClass("selectDay");
			selectDay=$(this).text();
			setDayShow($(this).text());
			selectMonth=month;
			setSelectDayShow();
	    });
		
		
		
	})
	
	function setSelectDayShow(){
		$.ajax({
			url : "findDayShow",
			type : 'post',
			data : "selectDate="+$("#monthShowTitle").text(),
			success : function(res) {
				var code="";
				$(res).each(function(i,e){
					code+="<li>";
					code+="<strong><a href='promotionDetail?contentNum="+e.contentNum+"'>"+e.contentTitle+"</a></strong>"
					code+="("+e.startDate+"~"+e.endDate+")";
					code+="</li>"
				})
				if(code==""){
					code+="<strong style='text-align:center;'>해당날 공연이 없습니다.</strong>";
				}
				$('#dayShowView').html(code);
			}
		})
	}
	
	function setMonthShow(){
		$.ajax({
			url : "findMonthShow",
			type : 'post',
			data : "startDate="+$("#yearMonth").text()+".01"
				+"&endDate="+$("#yearMonth").text()+"."+lastDay,
			success : function(res) {
				var code="";
				$(res).each(function(i,e){
					code+='<div><div class="showImageDiv" style="float:left; width: 30%; height:422px; margin:0 0 2% 10px; 2%;">';
					code+='<img src="'+e.contentImg+'" style="width: 100%; height: auto;"></div><div id="showInfoDiv"><div id="showTitle"><label>';
					code+=e.contentTitle+'</label><button style="float:right;" onclick="go_detailPage(';
					code+=e.contentNum+')">상세보기</button><hr style="margin-top: 5px;"><label>';
					code+='<ul><li><strong style="font-size:1em;">제목  : </strong>'+e.contentTitle;+"</li>"
					code+='<li><strong style="font-size:1em;">장르  : </strong>'+e.genreName;+"</li>"
					code+='<li><strong style="font-size:1em;">시작일  : </strong>'+e.startDate;+"</li>"
					code+='<li><strong style="font-size:1em;">종료일  : </strong>'+e.endDate;+"</li>"
					code+='<li><strong style="font-size:1em;">주최자  : </strong>'+e.contentWriter;+"</li>"
					code+='<li><strong style="font-size:1em;">내용  : </strong>'+e.consertContent;+"</li></ul>"
					code+='</label></div></div></div><hr style="clear: both;  border-top: 1px dotted #aaa;">';
				})
				if(code==""){
					code+="<strong style='text-align:center;'>해당 월에 공연이 없습니다.</strong>";
				}
				
				$("#monthShow").html(code);
				setImgMargin();
			}
		})
	}
	
	function setImgMargin(){
		var divs = document.querySelectorAll('.showImageDiv');
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
	
	
	function go_detailPage(contentNum){
		location.href="promotionDetail?contentNum="+contentNum;
	}
	function setDayShow(day){
		$("#monthShowTitle").text(year+".");
		if(month<10){
			$("#monthShowTitle").text($("#monthShowTitle").text()+"0"+month+".");
		}else{
			$("#monthShowTitle").text($("#monthShowTitle").text()+month+".");
		}
		if(day<10){
			$("#monthShowTitle").text($("#monthShowTitle").text()+"0"+day);
		}else{
			$("#monthShowTitle").text($("#monthShowTitle").text()+day);
		}
	}
	
	function setCalender() {
		var code = "";
		var day=1;
		lastDay = (new Date(year, month, 0)).getDate();
		for (var i = 0; i < 6; i++) {
			code += " <tr>";
			for (var j = 0; j < 7; j++) {
				code += " <th class=\"day\">";
				if(day>lastDay){
					continue;
				}
				if(findFirstDay()<=(i*7+j)){
					if(day==selectDay && selectMonth==month){
						code += "<a href=\"#day=" + day + "\" class=\"monthDay selectDay\">"
								+ day + "</a>"
					}else{
						code += "<a href=\"#day=" + day + "\" class=\"monthDay\">"
								+ day + "</a>"
					}
					day++;
				}
				code += "</th> ";
			}
			code += "</tr> ";
			if(day>lastDay){
				break;
			}
			
			if(i==4){
				$("#calenderEdge").css("height","270px");
			}else{
				$("#calenderEdge").css("height","233px");
			}
		}
		$("#monthDays").html(code);
	}

	function findFirstDay() {
		var firstDay = new Date(year + '-' + month ).getDay();
		return firstDay;
	}
</script>

<div id="body">
	<h1 style=" padding-left:5%;">행사일정</h1>
	<hr style="border-top: 5px solid #969faa;">
	
	<div style="background-color: #999;border-radius:5px; height: 400px;">
		<div style="margin-right: 12px;"><div class="selectViewDay"><span id="selectViewStatue">월간 </span>일정</div>
		</div>
		<div id="showDayInfo">
			<div class="showCalender" id="calenderDiv">
				<button id="prev"> 이전달 </button>
				<label id="yearMonth"></label>
				<button id="next"> 다음달 </button>
				<div id="calenderEdge">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="week" style="color:red;">Sun</th>
							<th class="week">Mon</th>
							<th class="week">Tue</th>
							<th class="week">Wed</th>
							<th class="week">Thu</th>
							<th class="week">Fri</th>
							<th class="week" style="color:blue;">Sat</th>
						</tr>
					</thead>
					<tbody id="monthDays">
					</tbody>
				</table>
				</div>
			</div>
			<div class="showCalender">
				<label id="dayShowLabel"><span id="monthShowTitle"></span>공연일정</label>
				<ul id="dayShowView">
				</ul>
			</div>
		</div>
	</div>
	<br>
	<h3 id="monthTitle">몇월 일정</h3>
	<br>
	<div id="monthShow" style="border:3px solid #f5f5f5;padding:4px;">

	</div>
</div>