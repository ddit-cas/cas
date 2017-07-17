<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<body>

<div class="wrapContent">
	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 최근 가입 회원 목록</h3>
			</div>
			<div class="panel-body">
			
	<table class="table table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>아이디</th>
				<th>회원명</th>
				<th>닉네임</th>
				<th>이메일</th>
				<th>생년월일</th>
				<th>주소</th>
				<th>전화번호</th>
				<th>우편번호</th>
				<th>CIM</th>
				<th>경고</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td><a href="#">asdf212</a></td>
				<td>김선도</td>
				<td>갓</td>
				<td>ab@naver.com</td>
				<td>901216</td>
				<td>y</td>
				<td>010-4444-11111</td>
				<td>53512</td>
				<td>1</td>
				<td>1</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td><a href="#">asdf212</a></td>
				<td>김선도</td>
				<td>갓</td>
				<td>ab@naver.com</td>
				<td>901216</td>
				<td>y</td>
				<td>010-4444-11111</td>
				<td>53512</td>
				<td>1</td>
				<td>1</td>
			</tr>
			<th scope="row">3</th>
			<td><a href="#">asdf212</a></td>
			<td>김선도</td>
			<td>갓</td>
			<td>ab@naver.com</td>
			<td>901216</td>
			<td>y</td>
			<td>010-4444-11111</td>
			<td>53512</td>
			<td>1</td>
			<td>1</td>
			</tr>
			<th scope="row">4</th>
			<td><a href="#">asdf212</a></td>
			<td>김선도</td>
			<td>갓</td>
			<td>ab@naver.com</td>
			<td>901216</td>
			<td>y</td>
			<td>010-4444-11111</td>
			<td>53512</td>
			<td>1</td>
			<td>1</td>
			</tr>
			<th scope="row">5</th>
			<td><a href="#">asdf212</a></td>
			<td>김선도</td>
			<td>갓</td>
			<td>ab@naver.com</td>
			<td>901216</td>
			<td>y</td>
			<td>010-4444-11111</td>
			<td>53512</td>
			<td>1</td>
			<td>1</td>
			</tr>
		</tbody>
	</table>

			</div>
		</div>
	</div>


	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 신규 펀딩 등록 현황</h3>
			</div>
			<div class="panel-body">
			
	<table class="table table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>아이디</th>
				<th>닉네임</th>
				<th>회원명</th>
				<th>형태</th>
				<th>입금계좌</th>
				<th>전화번호</th>
				<th>등록날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td><a href="#">band공연</a></td>
				<!-- 펀딩 리스트 uri 적용해야 함. -->
			<td>asdf212</td>
			<td>갓</td>
			<td>김선도</td>
			<td>투자형</td>
			<td>551-21853-3521</td>
			<td>010-1111-1111</td>
			<td>17.05.05.</td>
		</tr>
	</tbody>
	</table>
	
			</div>
		</div>
	</div>
	
	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 최근 자유게시판 게시글</h3>
			</div>
			<div class="panel-body">
			
	<table class="table table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>아이디</th>
				<th>닉네임</th>
				<th>회원명</th>
				<th>전화번호</th>
				<th>등록날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td><a href="#">자기pr</a></td>
				<!-- 게시판 url 적용해야함. -->
				<td>asdf212</td>
				<td>갓</td>
				<td>김선도</td>
				<td>010-1111-1111</td>
				<td>17.05.05.</td>
			</tr>
		</tbody>
	</table>
	
			</div>
		</div>
	</div>
	
	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 최근 홍보 게시판 게시글</h3>
			</div>
			<div class="panel-body">
			
	<table class="table table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>아이디</th>
				<th>닉네임</th>
				<th>회원명</th>
				<th>좋아요</th>
				<th>전화번호</th>
				<th>등록날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td><a href="#">자기pr</a></td>
				<!-- 게시판 url 적용해야함. -->
				<td>asdf212</td>
				<td>갓</td>
				<td>김선도</td>
				<td>0</td>
				<td>010-1111-1111</td>
				<td>17.05.05.</td>
			</tr>
		</tbody>
	</table>
	
	</div>
		</div>
	</div>
	
	
	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> 최근 UCC 게시글</h3>
			</div>
			<div class="panel-body">
			
			
	<table class="table table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>아이디</th>
				<th>닉네임</th>
				<th>회원명</th>
				<th>좋아요</th>
				<th>전화번호</th>
				<th>등록날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td><a href="#">자기pr</a></td>
				<!-- 게시판 url 적용해야함. -->
				<td>asdf212</td>
				<td>갓</td>
				<td>김선도</td>
				<td>0</td>
				<td>010-1111-1111</td>
				<td>17.05.05.</td>
			</tr>
		</tbody>
	</table>
	
		</div>
		</div>
	</div>
	
</div>