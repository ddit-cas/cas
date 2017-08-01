<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

.checkDay:focus{
	color: #ffee00;
}

.calBtn {
	width: 12px;
	height: 8px;
}
#showInfo{
	display:none;
	background-color: #0099CC;
}

.checkDay{
	color:#ffee00;
	font-weight:bold; 
}

.selectDay:hover {
    color: #ffee00;
    text-decoration: underline;
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

.dayShowContent{
	width:auto;
	height: 135px; 
	padding:12px 8px 8px 8px;
	margin:0 4px 4px 4px;
	background-color: #ffffff;
}

.showPerfomance{
	width: 31.62526607%;
	height: 403px;
	background-color: #eaeff7;
	float: left;
	margin: 9px;
}
.famousShow{
	width:auto;
	height: 260px; 
	padding:0;
	margin:4px 4px 0 4px;
	overflow:hidden;
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
			$('.checkDay').removeClass('checkDay');
        	if(openShowInfoDay==(year+month+$(this).text())){
	        	openShowInfoDay="";
				$("#showInfo").slideToggle(300);	
        	}else{
	        	openShowInfoDay=year+month+$(this).text();
	        	$(this).addClass('checkDay');
		        $("#showInfo").slideToggle(300,function(){
					if ($(this).is(':hidden')) {
						$("#showInfo").slideToggle(300);					
					}
					return false;
				});
		        
		        setTimeout(function(){
		        	setDayShow();
			        setImgMargin();
		        	}, 300);
		        
        	}
	    });
	})
	
	function setDayShow(){
		$.ajax({
			url : "findDayShow",
			type : 'post',
			data : 'selectDate='+year+'.'+month+'.'+$('.checkDay').text(),
			success : function(res) {
				var code="<hr>";
				$(res).each(function(i,e){
		               code+='<div class="showPerfomance"><a href="#" onclick="go_detailPage('+e.contentNum+')"><div class="famousShow" style="text-align:center;">';
		               code+='<img src="'+e.contentImg+'"style="height: 100%; height: auto;">';
		               code+='</div><div class="dayShowContent"><label class="fundTitle">';
		               code+=e.contentTitle+'</label> <br> <br><label class="fundHost">';
		               code+=e.contentWriter+'</label> <br> <label class="fundCategory">';
		               code+=e.genreName+'</label></div></a></div>';
				})
				if(code=="<hr>"){
					code+="<h4 style='text-align:center;'>해당날 공연이 없습니다.</h4>"
				}
				$('#showInfo').html(code);
			}
		})
	}
	
	function go_detailPage(contentNum){
		location.href="promotionDetail?contentNum="+contentNum;
	}
	
	function setImgMargin(){
		var divs = document.querySelectorAll('.famousShow');
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
				<img class="calBtn" src="/cas/resources/images/up.png">
			</a>
			<br />
			<hr>
			<a id="prev">
				<img class="calBtn" src="/cas/resources/images/down.png">
			</a>
		</span>
		<div id="dateDiv">
			<ul id='date'>
			</ul>
		</div>
	</div>
</div>

<div class="col-xs-12  nonePadding" id="showInfo">
</div>
