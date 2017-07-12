<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<style>

html, body, div, span, dl, dt, dd, ol, ul, li,h1, h2, h3, h4, h5, h6, p, blockquote, pre,address,cite,form,fieldset,input,textarea,select,table,th,td,button{margin: 0;padding: 0;}

a {
    color: #666666;
    text-decoration: none;
}

div.company-wrap {
    overflow: hidden;
    width: 1000px;
    margin: 50px auto;
}

div.company-snb {
    float: left;
    width: 182px;
}

div.company-snb h2 {
    background: #ff6949;
    padding: 100px 0;
    text-align: center;
    color: #fff;
    font-size: 24px;
}

div.company-snb ul {
    margin-top: 10px;
}

div.company-snb ul li {
    margin-bottom: 5px;
}

div.company-snb ul li a {
    display: block;
    padding: 20px 0;
    color: #fff;
    text-align: center;
    color: #333;
    font-size: 16px;
    font-weight: 400;
}

div.company-snb ul li a:hover {
    background: #8d8d8d;
    color: #fff;
}

/*   div.company-snb ul li.active a {   */
/*        background: #8d8d8d;    */
/*       color: #fff;   */
/*   }   */

div.company-cont {
    width: 800px;
    float: right;
}

div.company-cont h3.box {
    background: #2b2f3a;
    color: #fff;
    font-size: 20px;
    padding: 25px 0;
    text-align: center;
    font-weight: bold;
}

h2 {
    display: block;
    font-size: 1.5em;
    -webkit-margin-before: 0.83em;
    -webkit-margin-after: 0.83em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}

h3 {
    display: block;
    font-size: 1.17em;
    -webkit-margin-before: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}

@media (max-width:1000px){

	div.company-snb {
	    width: 100%;
		}
		
	div.company-cont {
	    width: 100%;
		}
		
	h3 {
		width:100%;
	    
	}
	div.company-snb ul li {
	    	width:100%;
		}
		
	div.company-wrap {
	    width: 100%;
		} 
	
	div.imgDiv img{
		width:100%;
		height:auto;
	}

}




</style>

<div class="company-wrap">
	<div class="company-snb">
		<h2>회사소개</h2>
		<div class="">
			<ul>
				<li class="active"><a href="cas-introduce.jsp">VISION</a></li>
				<!--li><a href="people.php">PEOPLE</a></li-->
				<li><a href="cas-partner.jsp">PARTNERSHIP</a></li>
				<li><a href="cas-contact.jsp">CONTACT US</a></li>
			</ul>
		</div><!--//tab-intro-->
		</div><!--//company-snb-->

		<div class="company-cont">
			<h3 class="box">PARTNERSHIP</h3>
			<div class="imgDiv"><img src="resources/intro-3.png" alt=""></div>
		</div><!--//company-cont-->

</div>

</body>
</html>