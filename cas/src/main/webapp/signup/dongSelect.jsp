<%@page import="java.util.List"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

[
<% 
	
	request.setCharacterEncoding("utf-8");
	String dong = request.getParameter("dong");
	System.out.println(dong);
		
%>
		 
		{
			"zipcode" :"240-956",
			"addr" : "대전광역시 중구 대흥동", 
			"bunji" : "240"
		}
		
		
<%	
	
// 	}
	
%>
]    