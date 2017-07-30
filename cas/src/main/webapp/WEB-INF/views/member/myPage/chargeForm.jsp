<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<div>
	<form action="/cas/member/charge">
		<input type="text" readonly="readonly" name="memName" value="${loginUser.memName }">
		<input type="text" readonly="readonly" name="memEmail" value="${loginUser.memEmail }">
		<input type="text" readonly="readonly" name="memHp" value="${loginUser.memHp }">
		<input type="text" readonly="readonly" name="memMailnumber" value="${loginUser.memMailnumber }">
		<input type="text" readonly="readonly" name="memAddr1" value="${loginUser.memAddr1 }">
		<input type="text" readonly="readonly" name="memAddr2" value="${loginUser.memAddr2 }">
		<input type="hidden" name="chargingMem" value="${loginUser.memId }">
		<p>1구름 = 100원</p><input type="text" placeholder="충전할 금액을 입력해주세요." name="chargingAmount">원
		<button type="submit" class="btn" >충전!</button>
	</form>
</div> 
