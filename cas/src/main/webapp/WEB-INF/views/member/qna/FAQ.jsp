<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<pre>
.
.
.
</pre>
<h3>FAQ</h3>
<hr>
<div class="faq">
	<ul class="faqBody">
		<c:forEach var="i" begin="1" end="50">
		<li class="article" id="a${i}">
			<p class="q"><a href="#a${i}">Q${i} : 질문${i}</a></p>
			<p class="a">A: 답변${i}</p>
		</li>
		</c:forEach>
	</ul>
</div>