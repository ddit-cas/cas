<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="UTF-8">

<div id="body">
	<div>
		<c:if test="${boardCode=='B005' }">
		자유게시판
		</c:if>
		<c:if test="${boardCode=='B001' }">
		 공지사항
		</c:if>
		<c:if test="${boardCode=='B006' }">
		Caser-UCC
		</c:if>
	</div>
<form name="tx_editor_form" style="width: 750px;" id="tx_editor_form" action="/cas/member/${resultUrl}" method="post" accept-charset="utf-8">
		<div class="col-sm-1">제목</div>
		<div class="col-sm-9">
			<input type="text" name="contentTitle" value="${articleVO.contentTitle }">
			<c:if test="${not empty articleVO }">
				<input type="hidden" name="contentWriter" value="${articleVO.contentWriter }">
				<input type="hidden" name="contentNum" value="${articleVO.contentNum }">
			</c:if>
			<input type="hidden" name="boardCode" value="${boardCode }">
		</div>
	<div >
		<!--?xml:namespace prefix = "jsp" /--> 
		<jsp:include page="/WEB-INF/views/daumeditor/freeAndNoticeEditor.jsp"></jsp:include>
	</div>
<c:choose>
<c:when test='${not empty articleVO}'>
<div><button onclick='saveContent()'>수정</button></div>
</c:when>
<c:otherwise>
<div><button onclick='saveContent()'>등록</button></div>
</c:otherwise>
</c:choose>
	</form>
</div>
