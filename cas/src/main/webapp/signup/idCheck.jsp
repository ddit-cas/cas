<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	class MemberVO{
		private String id;
		private String name;
		
		public String getId(){
			return id;
		}
		public void setId(String id){
			this.id = id;
		}
		
		public String getName(){
			return name;
		}
		public void setName(String name){
			this.name = name;
		}
	}

	List<String> memId = new ArrayList<String>();
	{
		MemberVO vo1 = new MemberVO();
		vo1.setId("a001");
		vo1.setName("이양호");
		
		MemberVO vo2 = new MemberVO();
		
		MemberVO vo3 = new MemberVO();
		
	}

	if(memId == null) {
%>		
		{
			"status" : "OK",
			"id" : "<%=memId %>"
		}
<%		
	} else {
%>		
		{
			"status" : "NO",
			"id" : "<%=memId %>"
		}
<%		
	}
%>