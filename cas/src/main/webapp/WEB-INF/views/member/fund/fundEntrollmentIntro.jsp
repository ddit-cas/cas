<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>펀딩등록 초기페이지</title>
<body>

	<!-- glyphicon CDN -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

	body {
		background-image: url("/cas/resources/images/entrollment.jpg");
	}
	.body {
		margin-top: 58px;
	}
	div.wrap{
		padding: 0;
	}
	div.header {
		margin-top: 90px;
		margin-bottom: 50px;
		text-align: center;
		text-decoration: none;
		height:200px;
	}
	h1#tmove {
		line-height: 200px;
	}
	div.register-intro-box {
		margin: 0 auto;
		background-image:url("/cas/resources/images/bg-black-register.png");
 	    padding: 30px;
	    color: #fff;
	    font-size: 16px;
	    box-sizing: border-box;
	}
	
	div.register-intro-box dl dt {
	    font-size: 18px;
	    color: #00ff36;
	    margin-bottom: 20px;
	}
	div.register-intro-box dl dd.checked {
	    margin-top: 35px;
	}
	dt {
		height: 50px;
	}
	dd {
	    margin:0;
	    display: block;
	}
	dd.bottom {
		margin : 20px auto;
	}
	dd.bottom>input {
		margin-left : 105px;		
	}
	div.register-intro-box dl {
	    text-align: left;
 	}
 	ul {
	    list-style: none;
	    padding: 0;
	}
	div.register-intro-box input[type="checkbox"] + label {
	    display: inline-block;
	    position: relative;
	    cursor: pointer;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	}
	.btn {
		width : 280px;
		height : 50px;
		font-size : 20px;
	}
	.left {
		float : left;
		width: 500px;
		height: 366px;
	}
	.right {
		float : right;
		width: 500px;
		height: 366px;
	}
	.foot {
		clear : both;
	}
</style>
<script>
//made by vipul mirajkar thevipulm.appspot.com
var TxtType = function(el, toRotate, period) {
        this.toRotate = toRotate;
        this.el = el;
        this.loopNum = 0;
        this.period = parseInt(period, 10) || 2000;
        this.txt = '';
        this.tick();
        this.isDeleting = false;
    };

    TxtType.prototype.tick = function() {
        var i = this.loopNum % this.toRotate.length;
        var fullTxt = this.toRotate[i];

        if (this.isDeleting) {
        this.txt = fullTxt.substring(0, this.txt.length - 1);
        } else {
        this.txt = fullTxt.substring(0, this.txt.length + 1);
        }

        this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

        var that = this;
        var delta = 200 - Math.random() * 100;

        if (this.isDeleting) { delta /= 2; }

        if (!this.isDeleting && this.txt === fullTxt) {
        delta = this.period;
        this.isDeleting = true;
        } else if (this.isDeleting && this.txt === '') {
        this.isDeleting = false;
        this.loopNum++;
        delta = 500;
        }

        setTimeout(function() {
        that.tick();
        }, delta);
    };

    window.onload = function() {
        var elements = document.getElementsByClassName('typewrite');
        for (var i=0; i<elements.length; i++) {
            var toRotate = elements[i].getAttribute('data-type');
            var period = elements[i].getAttribute('data-period');
            if (toRotate) {
              new TxtType(elements[i], JSON.parse(toRotate), period);
            }
        }
        // INJECT CSS
        var css = document.createElement("style");
        css.type = "text/css";
        css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff; color: #fff;font-size:68px; }";
        document.body.appendChild(css);
    };
</script>
<div class="body">
	<div class="header">
		<h1 id="tmove">
		  <a href="" class="typewrite" data-period="2000" data-type='[ "안녕?! 꿈을 꾸는 위대한 친구!", "너의 꿈은 정말 멋져! 최고야!", "하지만 이루기 쉽지 않지?", "그래도 좌절하지 말고 도전해봐!", "내가 그리고 우리가, 도와줄게~!", "여기 너를 위한 CAS가 있어.", "자! 꿈을 이루러 가볼까?" ]'>
		    <span class="wrap"></span>
		  </a>
		</h1>
	</div>
	<div class="col-lg-12">
		<div class="wrap">
		
		<div class="register-intro-box">
			<dl class="left">
				<dt>반갑습니다! 예비 프로젝트 진행자님 어떤 프로젝트를 개설하려고 하나요 ?</dt>
					<dd>
						저희 Culture Art-contents Social media potal(이하 CAS)는 더불어 사는 사회를 지향하고, 
						더 나은 세상을 바꾸는 프로젝트를대중들에게 소개하는 크라우드펀딩 플랫폼입니다. <br>
						CAS를 통해 여러분의 아이디어를 실현시킬 추진동력 끌어올려보세요.<br>
						우선, 크라우드펀딩 프로젝트 개설하기 전 진행자를 위한 가이드를 꼭 읽어주세요.<br>
						크라우드펀딩 진행방식, 프로젝트 스토리 구성, 리워드 설정 등 성공적인 프로젝트 개설을 위한 안내서가 준비되어 있습니다.
					</dd>
					<dd class="bottom">
						<input class="btn btn-primary" style="margin-top:30px;"type="button" id="guideBtn" value="펀딩 진행자 가이드 보기">
					</dd>
			</dl>
 
<style>
.funkyradio div {
  margin-top : -25px;
  clear: both;
  overflow: hidden;
}

.funkyradio label {
  width: 100%;
  border-radius: 3px;
  border: 1px solid #337ab7;
  font-weight: normal;
}
.funkyradio input{
	height: 5px;
}

.funkyradio input[type="checkbox"]:empty {
  display: none;
}

.funkyradio input[type="checkbox"]:empty ~ label {
  position: relative;
  line-height: 2.5em;
  text-indent: 3.25em;
  margin-top: 2em;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}

.funkyradio input[type="checkbox"]:empty ~ label:before {
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  content: '';
  width: 2.5em;
  background: #D1D3D4;
  border-radius: 3px 0 0 3px;
}

.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label {
  color: #888;
}

.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #C2C2C2;
}

.funkyradio input[type="checkbox"]:checked ~ label {
  color: #777;
}

.funkyradio input[type="checkbox"]:checked ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #333;
  background-color: #ccc;
}

.funkyradio input[type="checkbox"]:focus ~ label:before {
  box-shadow: 0 0 0 3px #999;
}

.funkyradio-info input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5bc0de;
}
</style>

			<dl class="right">
				<dt>프로젝트 가이드를 읽어보셨나요?</dt>
					<dd>CAS 프로젝트를 개설 내용을 업로드 하기 전 다음 사항을 확인해주세요.</dd>
					<dd style="margin-top:0;" class="checked">
						<ul>
							<li>
							<div class="funkyradio">
								<div class="funkyradio-info">
									<input type="checkbox" id="checkbox1" name="agree1" value="Y"/>
									<label for="checkbox1">프로젝트 소개 자료, 리워드를 소개 준비가 되었니?</label>
								</div>
							</div>
							</li>
							<li>
							<div class="funkyradio">
								<div class="funkyradio-info">
									<input type="checkbox" id="checkbox2" name="agree2" value="Y"/>
									<label for="checkbox2">언제 프로젝트를 진행하고, 리워드를 제공할 지 준비되었니?</label>
								</div>
							</div>
							</li>
							<li>
							<div class="funkyradio">
								<div class="funkyradio-info">
									<input type="checkbox" id="checkbox3" name="agree3" value="Y">
									<label for="checkbox3">진행방식은 투자형과 후원형 중 어느 것으로 할래?</label>
								</div>
							</div>
							</li>
						</ul>
					</dd>
					<dd class="bottom">
						<input class="btn btn-primary" type="button" id="guideDownBtn" value="펀딩 업로드 안내서 다운로드">
					</dd>
			</dl>
			<dl class="foot">
				<dd style="margin-left:385px;">
					<input class="btn btn-primary" type="button" id="registerBtn" value="펀딩 등록하기">
				</dd>
			</dl>
		</div>
		</div>
	</div>
</div>		
</body>
