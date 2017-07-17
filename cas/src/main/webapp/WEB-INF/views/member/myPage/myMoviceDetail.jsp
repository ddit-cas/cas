<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div class="modal fade product_view" id="product_view">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<a
						href="https://www.youtube.com/embed/OwJPPaEyqhI?rel=0&showinfo=0"
						target="_blank" data-dismiss="modal" class="class pull-right"><span
						class="glyphicon glyphicon-remove"></span></a>
					<h3 class="modal-title">New Face-psy(moive)</h3>
					<h3 class="modal-title">싸이</h3>
				</div>
				<div class="modal-body">
					<div class="row">
						<div id="prmovie" class="video">
							<iframe id="frame1" class="embed-responsive-item"
								style="width: 500px; height: 400px; margin: 0 125px auto;"
								src="https://www.youtube.com/embed/OwJPPaEyqhI?rel=0&showinfo=0"
								frameborder="0" allowfullscreen></iframe>
						</div>
						<div class="col-md-6 product_content"
							style="margin: 0 125px auto;">
							<h3 class="modal-title">내용</h3>
							<textarea rows="5" cols="65">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</textarea>
							<div class="btn-ground" style="margin: auto;">
								<a href="myMoviceDetail.jsp"><input type="submit"
									class="btn btn-primary" value="수정" /></a> <input type="reset"
									class="btn btn-primary" value="취소" /> <input type="submit"
									class="btn btn-danger" value="삭제" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>