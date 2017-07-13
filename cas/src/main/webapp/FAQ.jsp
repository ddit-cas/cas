<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<style>
.faq {
	border-bottom: 1px solid #ddd;
	margin: 1em 0
}

.faq .faqHeader {
	position: relative;
	zoom: 1
}

.faq .faqHeader .showAll {
	position: absolute;
	bottom: 0;
	right: 0;
	border: 0;
	padding: 0;
	overflow: visible;
	background: none;
	cursor: pointer
}

.faq .faqBody {
	margin: 0;
	padding: 0
}

.faq .faqBody .article {
	list-style: none
}

.faq .q {
	margin: 0;
	border-top: 1px solid #ddd
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
</style>
<script>
$(function(){
	// Frequently Asked Question
	var article = $('.faq>.faqBody>.article');
// 	article.addClass('hide');
	article.find('.a').hide();
// 	article.eq(0).removeClass('hide');
// 	article.eq(0).find('.a').show();
	$('.faq>.faqBody>.article>.q>a').click(function(){
		var myArticle = $(this).parents('.article:first');
		if(myArticle.find('.a')){
// 			article.find('.a').addClass('hide').removeClass('show');
			article.find('.a').slideUp(100);
// 			myArticle.removeClass('hide').addClass('show');
			myArticle.find('.a').slideDown(100);
		}
		return false;
	});
});
</script>
<pre>
.
.
.
</pre>
<div class="faq">
	<ul class="faqBody">
		<li class="article" id="a1">
			<p class="q"><a href="#a1">Q1 : 질문1?</a></p>
			<p class="a">A: 답변1.</p>
		</li>
		<li class="article" id="a2">
			<p class="q"><a href="#a2">Q2 : 질문2?</a></p>
			<p class="a">A: 답변2.</p>
		</li>
		<li class="article" id="a3">
			<p class="q"><a href="#a3">Q3 : 질문3?</a></p>
			<p class="a">A: 답변3.</p>
		</li>
	</ul>
</div>
