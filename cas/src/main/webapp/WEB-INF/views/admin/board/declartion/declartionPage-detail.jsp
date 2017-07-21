<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>






<h4 style="padding-left: 87px;">게시물 또는 댓글 신고</h4>



<div class="container" style="width:1000px;">
	<table style="" class="table table-bordered ">
	<form name="form" role="form" id="form" action="accuse_member_end.php" method="post" onsubmit="return form_submit();"></form>
	<input type="hidden" name="target_table" value="humorbest">
	<input type="hidden" name="target_no" value="1467729">
	<input type="hidden" name="content_type" value="board">
	<input type="hidden" name="ref_table" value="humorbest">
	<input type="hidden" name="ref_no" value="1467729">


<!-- 닉네임이 들어가는 부분 -->
	<tbody><tr>
		<td style="min-width: 70px; width:152px;">피신고자 닉네임</td>
		<td>어쩜좋니</td>
	</tr>



	<tr>
		<td>내용</td>
		<td>너무너무재미있는디디아이티</td>
	</tr>


	<tr>
		<td>신고분류</td>
		<td class="accuse_kind">		
			
			<div class="radio">
				<label><input type="radio" name="accuse_kind" value="광고">광고(성인광고 포함)</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="accuse_kind" value="음란">음란</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="accuse_kind" value="혐오">혐오</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="accuse_kind" value="욕설">욕설</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="accuse_kind" value="악플">악플(공격적 발언,비아냥)</label>
			</div>

			<div class="radio">
				<label><input type="radio" name="accuse_kind" value="기타">기타</label>
			</div>
		</td>
	</tr>
	<tr>
		<td>신고내용</td>
		<td>


			<textarea style="width:100%;height:50px" name="note">무분별한 노잼따</textarea>
			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="신고글 삭제하기">
		</td>
	</tr>



	</tbody></table>
	
</div>	
</body>