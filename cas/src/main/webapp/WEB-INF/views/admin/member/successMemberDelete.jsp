<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
<!-- sweetalert하기 위한 링크 -->
<link rel="stylesheet" href="/cas/resources/css/sweetalert.css">
<script src="/cas/resources/js/sweetalert/sweetalert.min.js"></script>

<script>
	swal("회원 삭제 성공!", "그동안 CAS를 이용해주셔서 감사합니다!", "success");
	$('.confirm').on('click',function(){
		location.href="/cas/admin/memberAnalysis";
	});
</script>
</body>