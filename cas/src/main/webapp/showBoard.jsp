<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	$(function(){
		setContent();
		setPager(1);
	})
	function setContent(){
		var code="";
		for(var i=0; i<15;i++){
			code+="<tr><td>50내림</td><td>제목이에요~~~!!!!</td><td>장르</td><td>시작일~종료일</td><td>작성자명</td><td>좋아요수</td></tr>"
		}
		$('#showBoardTbody').html(code);
	}
	
	function setPager(nowPage){
		var code="";
		lastContent=80;
		$('#1').addClass('nowPage');
		for(var i=1; i<=5;i++){
			if(nowPage<=3){
				code+='<a id="'+i+'" onclick="setPager('+i+')">['+i+']</a>';
			}else{
				code+='<a id="'+(i+nowPage-3)+'" onclick="setPager('+(i+nowPage-3)+')">['+(i+nowPage-3)+']</a>';
			}
		}
		$('#pagerCount').html(code);
	}
</script>
<div id="body">
	<div style="width:100%;overflow: hidden; height: 100px;">
		<img src="/cas/resources/images/free.png" style="width:100%;">
	</div>
	<h1 style="width:auto;">공연홍보게시판</h1>
	<hr>
	<div></div>
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th>글번호</th>
	      <th>제목</th>
	      <th>장르</th>
	      <th>기간</th>
	      <th>작성자</th>
	      <th>좋아요</th>
	    </tr>
	  </thead>
	  <tbody id="showBoardTbody">
	  </tbody>
	</table>
	<ul class="pager">
		<li><a href="#">Previous</a></li>
		<li id="pagerCount">
		</li>
		<li><a href="#">Next</a></li>
	</ul>
</div>