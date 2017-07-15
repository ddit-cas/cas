<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>

h3 {
	color: #fff;
	font-size: 20px;
	text-align: center;
	margin-top: 30px;
	padding-bottom: 30px;
	border-bottom: 1px solid #eee;
	margin-bottom: 30px;
	font-weight: 250;
}

.faq {
	box-shadow: 0px 2px 2px 0px rgba(0, 0, 0, 0.14), 0px 3px 1px -2px
		rgba(0, 0, 0, 0.2), 0px 1px 5px 0px rgba(0, 0, 0, 0.12);
	border-radius: 4px;
}

.faq .faqBody {
 	margin: 0;
	padding: 0;
}

.faq .faqBody .article {
	list-style: none
}

.faq .q {
 	margin: 0; 
 	border-top: 1px solid #ddd; 
}

.faq .q a {
	display: block;
	padding: .5em 1em;
	text-align: left;
	font-weight: bold;
	background: #fafafa;
	color: #000;
	text-decoration: none !important
}

.faq .q a:hover, .faq .q a:active, .faq .q a:focus {
	background: #f8f8f8
}

.faq .a {
	margin: 0;
	padding: 1em;
	line-height: 1.5
}
div#wrap {
	width: 80%;
	min-width: 500px;
	max-width: 850px;
	margin: 100px auto;
}
</style>
<script>
$(function(){
	var article = $('.faq>.faqBody>.article');
	article.find('.a').hide();
	$('.faq>.faqBody>.article>.q>a').click(function(){
		var myArticle = $(this).parents('.article:first');
		if(myArticle.find('.a')){
			article.find('.a').slideUp(100);
			myArticle.find('.a').slideDown(100);
		}
		return false;
	});
});
</script>
<div id="wrap">
	<h4>FAQ</h4>
	<hr>
	<div class="faq">
		<ul class="faqBody">
			<c:forEach var="i" begin="1" end="10">
			<li class="article" id="a${i}">
				<h3 class="q"><a href="#a${i}">Q${i} : 질문${i}</a></h3>
				<p class="a">A: 답변${i}</p>
			</li>
			</c:forEach>
		</ul>
	</div>
</div>