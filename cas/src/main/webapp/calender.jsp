<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setAttribute("year", "2017");
	request.setAttribute("month", "10");
	request.setAttribute("lastDay", "30");
	String[] days = {"S", "M", "T", "W", "T", "F", "S"};
	request.setAttribute("days", days);
%>


<style>
#date li {
	display: inline;
	list-style: none;
	font-size: 80%;
}

#dateSpan, #dateBtns {
	float: left;
	width: 30px;
	text-align: center;
	margin: 0;
	padding: 0;
}

#dateText {
	float: left;
	margin: 12px 8px 0 0;
	width: 90px;
}

#dateBtns {
	text-align: center;
	width: 20px;
}

#date {
	float: left;
	padding: 0;
	margin: 6px 0 0 35px;
}

#year {
	float: left;
	color: #ffffff;
}

#month {
	color: #ffee00;
}

#year, #month {
	font-size: 1.5em;
}

#engMonth {
	font-size: 1.2em;
	color: #ffffff;
}

#calender {
	background-color: #0099CC;
	width: 100%;
	height: 120px;
	padding: 20px 25px 0 25px;
	text-align: center;
}

.Sun, .Sat {
	color: #444444;
}

.Mon, .Tue, .Wed, .Thu, .Fri {
	color: #ffffff;
}

.calBtn {
	width: 12px;
	height: 8px;
}
#showInfo{
	display:none;
	background-color: #0099CC;
}

a:active{
	color:ffee00;
}
@MEDIA ( max-width :1200px) {
	#calender {
		height: 275px;
	}
}

@MEDIA ( max-width :595px) {
	#calender {
		height: 340px;
	}
}

@MEDIA ( max-width :433px) {
	#calender {
		height: 410px;
	}
}

@MEDIA ( max-width :342px) {
	#calender {
		height: 480px;
	}
}

@MEDIA ( max-width :312px) {
	#calender {
		height: 550px;
	}
}
@MEDIA ( max-width :282px) {
	#calender {
		height: 620px;
	}
}
@MEDIA ( max-width :252px) {
	#calender {
		height: 690px;
	}
}
</style>



<script>
	var d = new Date();
	var year = d.getFullYear();
	var month = d.getMonth() + 1;
	var lastDay = (new Date(year, month, 0)).getDate();
	var days = findFirstDay();
	var openShowInfoDay="";
	$(document).ready(function() {
		$("#year").text(year + '/');
		if (month < 10) {
			$("#month").text('0' + month);
		} else {
			$("#month").text(month);
		}
		$("#engMonth").text(EngMonth());
		setCalender();
		$("#next").click(function() {
			month++;
			if (month == 13) {
				month = 1;
				year++;
				$("#year").text(year + '/');
			}
			changeMonth();
		})
		$("#prev").click(function() {
			month--;
			if (month == 0) {
				month = 12;
				year--;
				$("#year").text(year + '/');
			}
			changeMonth();
		})
		
		$('#date').on('click','.selectDay',function(){
        	if(openShowInfoDay==(year+month+$(this).text())){
	        	openShowInfoDay="";
				$("#showInfo").slideToggle(300);					
        	}else{
	        	openShowInfoDay=year+month+$(this).text();
		        $("#showInfo").slideToggle(300,function(){
					if ($(this).is(':hidden')) {
						$("#showInfo").slideToggle(300);					
					}
					return false;
				});
        	}
	    });
	})
	function setDayShow(){
		$.ajax({
			url:'findDayShow.jsp',
        	type:'post',
        	data:'day='+year+'.'+month+'.'+showInfoDay,
        	success:function(res){
				var code="";
				$.each(res, function(i, value) {
					code += '<div class="perfomance"></div>';
				})
                $('#showInfo').html(code);
             },
             error:function(){
            	 alert("실패");
             },
             dataType:'json'
		})
	}
	
	function changeMonth() {
		$("#date").hide(150);
		lastDay = (new Date(year, month, 0)).getDate();
		days = findFirstDay();
		setCalender();
		$("#date").show(150);
		$("#engMonth").text(EngMonth());
		if (month < 10) {
			$("#month").text('0' + month);
		} else {
			$("#month").text(month);
		}
	}
	function setCalender() {
		var insert = "";
		for (var i = 0; i < lastDay; i++) {
			insert += '<li><span id="dateSpan" class="'+days[i]+'">' + days[i]+ '<br><hr><a href="#day='+year+'.';
			if(month<10){
				insert += '0'+month+'.';
			}else{
				insert += month+'.';
			}
			if(i<10){
				insert += '0'+i+'"';
			}else{
				insert += i+'"';
			}
			insert += ' class="' + days[i] + ' selectDay">' + (i + 1) + '</a></span></li>';
		}
		$('#date').html(insert);
	}
	function findFirstDay() {
		var days = new Array();

		var week = new Array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
		var firstDay = new Date(year + '-' + month + '-1').getDay();
		for (var i = 0; i < lastDay; i++) {
			days[i] = week[(firstDay + i) % 7];
		}
		return days;
	}
	function EngMonth() {
		var engMonth;
		switch (month) {
		case 1:
			engMonth = 'January';
			break;
		case 2:
			engMonth = 'Febuary';
			break;
		case 3:
			engMonth = 'March';
			break;
		case 4:
			engMonth = 'April';
			break;
		case 5:
			engMonth = 'May';
			break;
		case 6:
			engMonth = 'June';
			break;
		case 7:
			engMonth = 'July';
			break;
		case 8:
			engMonth = 'August';
			break;
		case 9:
			engMonth = 'September';
			break;
		case 10:
			engMonth = 'October';
			break;
		case 11:
			engMonth = 'November';
			break;
		case 12:
			engMonth = 'December';
			break;
		}
		return engMonth;
	}
</script>
<div id="calender">
	<div class="">
		<div id="dateText">
			<label id="engMonth"></label><br> 
			<label id="year"></label> 
			<label id="month"></label>
		</div>
		<span id="dateBtns"> 
			<a id="next">
				<img class="calBtn" src="<c:url value="resources/images/up.png"/>">
			</a>
			<br style="height: 10px;"/>
			<hr> 
			<a id="prev">
				<img class="calBtn" src="<c:url value="resources/images/down.png"/>">
			</a>
		</span>
		<div id="dateDiv">
			<ul id='date'>
			</ul>
		</div>
	</div>
</div>

<div class="col-xs-12  nonePadding" id="showInfo">
	<a href="#">
		<div class="perfomance">
			<div class="famousFund">
				<img src='<c:url value='resources/famous.jpg'/>'
					style="width: 100%; height: auto;">
			</div>
			<div class="famousFundContent">
				<label class="fundTitle"">Docswave! 대담한 미래!</label> <br> <br>
				<label class="fundHost">소프트웨어인라이프</label> <br> <label
					class="fundCategory">문화</label>
			</div>
		</div>
	</a>


	<div class="perfomance">공연정보</div>
	<div class="perfomance">공연정보</div>
	<div class="perfomance">공연정보</div>
</div>
