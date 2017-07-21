<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<body>
	<style>
#body {
	margin-top:
}
</style>
	<div id="body">
		<div class="container">
			<div class="company-cont" style="width:auto;">
			<h3 class="box">공지사항</h3>
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="table-responsive">
						<table class="table table-bordered" style="text-align: center; width:auto; float:left;">
							<tbody>
								<tr>
									<th style="width: 10%; text-align: center; background-color: #eeeeee">제목</th>
									<td></td>
								</tr>
								<tr>
									<th style="text-align: center; background-color: #eeeeee">작성자</th>
									<td></td>
								</tr>
								<tr>
									<th style="text-align: center; background-color: #eeeeee">작성일</th>
									<td></td>
								</tr>
								<tr>
									<td colspan="3" style="background-color: #eeeeee"><label for="InputMessage">내용</label></td>
								</tr>
								<tr>
								<td colspan="5" ><textarea name="InputMessage" id="InputMessage"
									class="form-control" rows="7" 
									required></textarea>
								</td>
								</tr>
								<tr>
								<td style="background-color: #eeeeee">
									첨부파일
								</td>
								<td>
									
								</td>
								</tr>
							</tbody>
						</table>
							<div class="form-group">
							<a href="noticeList"><input type="button" name="submit" id="submit" value="목록"
								class="btn btn-info pull-right" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
