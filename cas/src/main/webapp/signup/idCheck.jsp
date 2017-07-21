<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<% 
		 
	
	String id = request.getParameter("id");
	boolean flag = false;
	List<String> memId = new ArrayList<String>();
	{
		memId.add("a001");
		memId.add("a002");
		memId.add("a003");
		memId.add("a004");
		memId.add("a005");
		
		memId.add("갓성빈");
	}
	for(int i=0;i<memId.size();i++){
		if(id.equals(memId.get(i)) ) {
			flag = false;
			break;
		}else{
			flag = true;
		}
	}
		
	if(flag) {
%>		
		{
			"status" : "OK",
			"id" : "<%=id %>"
		}
<%		
	} else {
%>		
		{
			"status" : "NO",
			"id" : "<%=id %>"
		}
<%		
	}
%>
 