<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<style>
#imgDiv{
	width: 365px;
	height: 400px;
	background: #eee;
	float: left;
}
</style>
<div class="company-snb" style="float:left; margin-top: 100px;">
<h2>CAS-이야기</h2>
<div class="">
   <ul style="margin-right: 40px;">
      <li class="active"><a href="fundList">공지사항</a></li>
      <li><a href="#">CAS란</a></li>
      <li><a href="fundingExampleList">행사일정</a></li>
      </ul>
   </div>
</div>
<div id="body" style="float:right; width: 80%">
 	<h1>공연등록</h1>
	<hr style="border-top: 2px solid #333;margin-top: 0;margin-bottom: 13px;">
	<div>
		<div id="imgDiv">
			<img src="">
		</div>
	</div>



	<div class="form-group">
		<label class="control-label col-sm-2" for="id">아이디</label>
		<div class="col-sm-6">
			<div class="input-group">
				<input type="text" class="form-control" id="mem_id" name="id"
					placeholder="아이디를 입력하세요."> <span class="input-group-btn">
					<button class="btn btn-default" id="idCheck" type="button">중복확인</button>
					<span class="msgCheckId"></span>
				</span>
			</div>
		</div>
	</div>

	<div class="form-group">
		<label class="control-label col-sm-2" for="pwd1">비밀번호</label>
		<div class="col-sm-6">
			<input type="password" class="form-control" id="pwd1"
				placeholder="비밀번호를 입력하세요." name="pwd1">
		</div>
	</div>

	<div class="form-group">
		<label class="control-label col-sm-2" for="pwd1">비밀번호확인</label>
		<div class="col-sm-6">
			<input type="password" class="form-control" id="pwd2"
				placeholder="위와 같은 비밀번호를 입력하세요." name="pwd2">
		</div>
	</div>

	<div class="form-group">
		<label class="control-label col-sm-2" for="name">이름</label>
		<div class="col-lg-6">
			<div class="input-group">
				<input type="text" class="form-control" id="name"
					placeholder="이름을 입력하세요." name="name" aria-label="name"> <span
					class="input-group-addon"> <label><input
						type="checkbox" aria-label="name">&nbsp;&nbsp;공개</label>
				</span>
			</div>
		</div>
	</div>

	<div class="form-group">
		<label class="control-label col-sm-2" for="birth">생년월일</label>
		<div class="col-sm-6">
			<input type="date" class="form-control" id="bir" placeholder="year"
				name="bir">
		</div>
	</div>

	<div class="form-group">
		<label class="control-label col-sm-2" for="name">전화번호</label>
		<div class="col-lg-6">
			<div class="input-group">
				<input type="tel" class="form-control" id="tel"
					placeholder="전화번호를 입력하세요." name="tel" aria-label="tel"> <span
					class="input-group-addon"> <label><input
						type="checkbox" aria-label="tel">&nbsp;&nbsp;공개</label>
				</span>
			</div>
		</div>
	</div>

	<div class="form-group">
		<label class="control-label col-sm-2" for="email">이메일</label>
		<div class="col-lg-6">
			<div class="input-group">
				<input type="email" class="form-control" id="email"
					placeholder="이메일을 입력하세요." name="email" aria-label="email">
				<span class="input-group-addon"> <label><input
						type="checkbox" aria-label="email">&nbsp;&nbsp;공개</label>
				</span>
			</div>
		</div>
	</div>
	<div style="clear:both;">
	</div>
</div>
	
	
