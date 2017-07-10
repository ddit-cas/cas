<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
</head>
<title>회원가입</title>
<style>
.colorgraph {
	width: 630px;
	height: 5px;
	border-top: 0;
	background: #A4A4A4;
	border-radius: 5px;
}

.contfile {
	display: inline-block;
	text-align: left;
}

.crwgrop {
	margin: 5px 555px 10px 185px;
	padding-top: 5px;
	padding-left: 10px;
	/* 	border: 2px solid gray; */
}

/* .filegroup {
	margin: 10px 130px 10px 100px;
}

.crwgroup {
	width: 300px;
	height: auto;
	margin: 10px 150px 10px 0px;
}

.row {
	margin: 10px 500px 10px 100px;
}

.form-group {
	width: 180;
} */

.essen {
	width: 730px;
	background: #FAFAFA;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: 0px 0px 3px 0px #A4A4A4;
	-moz-box-shadow: 0px 0px 3px 0px #A4A4A4;
	box-shadow: 0px 0px 3px 0px #A4A4A4;
	background: #FAFAFA;
}

/* .selectt {
	width: 730px;
	background: #FAFAFA;
	height: 700px;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: 0px 0px 3px 0px #A4A4A4;
	-moz-box-shadow: 0px 0px 3px 0px #A4A4A4;
	box-shadow: 0px 0px 3px 0px #A4A4A4;
	background: #FAFAFA;
	padding: 20px;
}

.imfom {
	display: inline-block;
} */

#profile-image1 {
	cursor: pointer;
	width: 150px;
	height: 150px;
	border: 2px solid #03b1ce;
}

.bot-border {
	border-bottom: 1px #f8f8f8 solid;
	margin: 5px 0 5px 0
}
</style>
<script>
	
</script>

<body>
	<div class="container">
		<div class="essen">
			<h3>필수사항</h3>
			<hr class="colorgraph">
			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="id">아이디</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="id"
							placeholder="아이디입력하세요" name="id">
					</div>
					<button type="submit" class="btn btn-default">중복확인</button>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd1">비밀번호</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" id="pwd1"
							placeholder="비밀번호입력하세요" name="pwd1">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd1">비밀번호확인</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" id="pwd2"
							placeholder="비밀번호입력하세요" name="pwd2">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="name">이름</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="name"
							placeholder="이름 입력하세요" name="name">
					</div>
					<div class="col-sm-2">
						<div class="checkbox">
							<label><input type="checkbox" name="remember">공개</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="birth">생년월일</label>
					<div class="col-sm-4">
						<input type="date" class="form-control" id="bir"
							placeholder="year" name="bir">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="name">전화번호</label>
					<div class="col-sm-3">
						<input type="tel" class="form-control" id="tel"
							placeholder="전화번호 입력하세요" name="tel">
					</div>
					<div class="col-sm-2">
						<div class="checkbox">
							<label><input type="checkbox" name="remember" />공개</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">이메일</label>
					<div class="col-sm-3">
						<input type="email" class="form-control" id="email"
							placeholder="이메일 입력하세요" name="email">
					</div>
					<div class="col-sm-2">
						<div class="checkbox">
							<label><input type="checkbox" name="remember" />공개</label>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="zip">우편번호</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" id="zip1" name="zip1"
							placeholder="우편번호" />
					</div>
					<button type="submit" class="btn btn-default">우편번호</button>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="addres">주소</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="add1"
							placeholder="주소 입력하세요" name="add1">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="addres">상세주소</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="add2"
							placeholder="상세주소 입력하세요" name="add2">
					</div>
				</div>
		</div>
		<br>

		<!-- 선택사항 -->
		<div class="selectt">
			<h3>선택사항</h3>
			<hr class="colorgraph">
			<!-- 정보 폼 -->
			<div class="contSelect">
				<!-- 첨부파일 -->
				<div class="box-body">
					<div class="col-sm-3">
						<div class="filess">
							<img alt="User Pic"
								src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
								id="profile-image1" class="img-circle img-responsive">
						</div>
					</div>
				</div>
				<div class="imfom">
					<div id="row">
						<div class="form-group">
							<label class="control-label col-sm-3" for="nickname">닉네임</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="nickname"
									placeholder="닉네임 입력하세요" name="nickname">
							</div>
							<button type="submit" class="btn btn-default">중복검사</button>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="career">경력</label>
							<div id="btns">
								<div class="col-sm-5">
									<input type="text" class="form-control" id="career"
										placeholder="경력 입력하세요" name="career">
								</div>
								<input type="button" class="btnAdd" value="+" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="activity">주요활동
								지역</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="avti"
									placeholder="주요활동 지역 입력하세요" name="avti">
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- 팀원 -->
			<div class="crwgrop">
				<div class="col-md-4">
					<label class="control-label col-sm-4" for="crw">팀원</label>
				</div>
			</div>
		</div>
		</form>
</body>
</html>




