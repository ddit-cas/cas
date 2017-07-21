<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
<!-- sweetalert하기 위한 링크 -->
<link rel="stylesheet" href="/cas/resources/css/sweetalert.css">
<script src="/cas/resources/js/sweetalert/sweetalert.min.js"></script>

<script>
	swal("회원 가입 성공!", "CAS 회원이 되신 걸 축하합니다!", "success");
	$('.confirm').on('click',function(){
		location.href="/cas/loginForm";
	});
</script>
</body>