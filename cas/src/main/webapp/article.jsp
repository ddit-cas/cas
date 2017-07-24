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
	</div>
	<div >
		<!--?xml:namespace prefix = "jsp" /--> 
		<jsp:include page="/WEB-INF/views/daumeditor/editor.jsp"></jsp:include>
	</div>
</div>
</body>