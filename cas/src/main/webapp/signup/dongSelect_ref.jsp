<%@page import="java.util.List"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

[
<% 
	/*
	request.setCharacterEncoding("utf-8");
	String dong = request.getParameter("dong");
	SqlMapClient sqlMap = SqlMapConfig.getSqlMapInstance();
	
	List<ZipTVO> list = sqlMap.queryForList("member.selectZip", dong);
	
	for(int i=0;i<list.size();i++){
		ZipTVO vo = list.get(i);
		String bunji = vo.getBunji();
		if(bunji==null) bunji="";
		
		if(i>0) out.print(",");
	*/	
%>
		<!-- 
		{
			"zipcode" :"vo.getZipcode()",
			"addr" : "vo.getSido() vo.getGugun() vo.getDong()", 
			"bunji" : "bunji"
		}
		 -->
		
<%	
	
// 	}
	
%>
]    