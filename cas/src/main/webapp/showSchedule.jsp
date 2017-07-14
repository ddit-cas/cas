<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<style>
	.selectViewDay{
		padding:0;
		margin:15px 0.5%;
		background: #eee;
		width: 49%;
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
		width: 66%;
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
	
	#monthShowTitle{
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
	
	$(document).ready(function(){
		var code='<div><div id="showImageDiv" style="float:left; width: 30%; margin: 0 2% 10px; 2%;"><img src="/cas/resources/cal.jpg" style="width: 100%; height: auto;"></div><div id="showInfoDiv"><div id="showTitle"><label>공연이름</label><button style="float:right;">상세보기</button><hr style="margin-top: 5px;"><label>내용입력</label></div></div></div><hr style="clear: both;  border-top: 1px dotted #aaa;">';
		for(var i = 0; i<5;i++){
			code+='<div><div id="showImageDiv" style="float:left; width: 30%; margin: 0 2% 10px; 2%;"><img src="/cas/resources/cal.jpg" style="width: 100%; height: auto;"></div><div id="showInfoDiv"><div id="showTitle"><label>공연이름</label><button style="float:right;">상세보기</button><hr style="margin-top: 5px;"><label>내용입력</label></div></div></div><hr style="clear: both;  border-top: 1px dotted #aaa;">';
		}
		$("#monthShow").html(code);
		setDayShow(d.getDay());
		if (month < 10) {
			$("#yearMonth").text(year+'.0' + month);
		} else {
			$("#yearMonth").text(year+"."+month);
		}
		$("#monthTitle").text(month+"월 일정");
		setCalender();
		
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
		})
		
		
		$('#monthDays').on('click','.monthDay',function(){
			$('.selectDay').removeClass('selectDay');
			$(this).addClass("selectDay");
			setDayShow($(this).text());
	    });
		
		
		
	})
	
	function setDayShow(day){
		$("#monthShowTitle").text(year+".");
		if(month<10){
			$("#monthShowTitle").text($("#monthShowTitle").text()+"0"+month+".");
		}else{
			$("#monthShowTitle").text($("#monthShowTitle").text()+month+".");
		}
		if(day<10){
			$("#monthShowTitle").text($("#monthShowTitle").text()+"0"+day+" 공연일정");
		}else{
			$("#monthShowTitle").text($("#monthShowTitle").text()+day+" 공연일정");
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
					code += "<a href=\"#day=" + day + "\" class=\"monthDay\">"
							+ day + "</a>"
					
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
		<a href="#"><div class="selectViewDay"><span id="selectViewStatue">월간 </span>일정</div>
		</a>
		<a href="#"><div class="selectViewDay">년간 일정</div>
		</a>
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
				<label id="monthShowTitle"></label>
				<ul>
					<li>공연이름</li>
					<li>공연이름</li>
					<li>공연이름</li>
					<li>공연이름</li>
					<li>공연이름</li>
					<li>공연이름</li>
				</ul>
			</div>
		</div>
	</div>
	<br>
	<h3 id="monthTitle">몇월 일정</h3>
	<br>
	<div id="monthShow">

	</div>
</div>