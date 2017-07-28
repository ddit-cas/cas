<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script>
	function loginFormGo(){
		location.href = "/cas/loginForm";
	}
</script>
</head>
<body>
<div>
	로그인 하셔야 접근할 수 있읍니다.
	<button onclick="loginFormGo();"></button>
</div>
</body>
</html>