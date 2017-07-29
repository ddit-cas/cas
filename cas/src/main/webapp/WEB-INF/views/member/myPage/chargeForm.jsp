<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<div>
	<form action="">
		<input type="text" readonly="readonly" name="memName" value="${loginUser.memName }">
		<input type="text" readonly="readonly" name="memEmail" value="${loginUser.memEmail }">
		
	</form>
</div> 
pg : 'inicis', // version 1.1.0부터 지원.                
 pay_method : 'card',                                 
 merchant_uid : 'merchant_' + new Date().getTime(),   
 name : '주문명:결제테스트',                                  
 amount : 14000,                                      
 buyer_email : 'iamport@siot.do',                     
 buyer_name : '구매자이름',                                
 buyer_tel : '010-1234-5678',                         
 buyer_addr : '서울특별시 강남구 삼성동',                        
 buyer_postcode : '123-456',                          
 m_redirect_url : '/cas/member/point'                 
