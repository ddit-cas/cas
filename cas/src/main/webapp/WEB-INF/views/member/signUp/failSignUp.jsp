<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
<!-- sweetalert하기 위한 링크 -->
<link rel="stylesheet" href="/cas/resources/css/sweetalert.css">
<script src="/cas/resources/js/sweetalert/sweetalert.min.js"></script>

<script>
	sweetAlert("회원 가입 실패", "죄송합니다. 다시 가입해주세요.", "error");
	$('.confirm').on('click',function(){
		location.href="/cas/joinMemberFail";
	});
</script>
</body>