<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:forEach items="${checkList }" var="checkId">
 	<c:choose>
 	<c:when test="${checkId==id }">
 		{
			"status" : "NO",
			"id" : "${checkId}"
		}
 	</c:when>
 	<c:otherwise>
 		{
			"status" : "NO",
			"id" : "${checkId}"
		}
 	</c:otherwise>
 	</c:choose>
 </c:forEach>
 		
 