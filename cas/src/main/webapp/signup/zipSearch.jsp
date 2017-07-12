<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(function(){
	$('#zip').click(function(){
		var dongStr = $('#dong').val();
		$.ajax({
			url : 'dongSelect.jsp',
			type : 'post',
			data : "dong="+dongStr,
			success : function(res){
				var code = "<table><tr><th>우편번호</th><th>주소</th><th>번지</th></tr>";
				$.each(res,function(i,v){
					code += "<tr class='zipTR'><td>"+v.zipcode+"</td><td>"+v.addr+"</td><td>"+v.bunji+"</td></tr>";
				});
				code += "</table>";
				$('#result').html(code);
			},
			dataType : 'json'
		});
	});
	//////////////////////////////////////////////////////////////////////
	$('#result').on("click", '.zipTR', function(){
		var zipcode = $('td:eq(0)',this).text(); //380-956
		var addr = $('td:eq(1)',this).text();
		
		//부모창(memberForm.jsp)에 결과를 돌려준다(출력)
		//$('부모창의 선택자', opener.document).val('현재값');
		$('#zip', opener.document).val(zipcode);
		$('#add1', opener.document).val(addr);
		$('#add2', opener.document).focus();
		window.close();
	});
});
</script>
<style>
	.zipTR:hover {
		background-color: lime;
	}
</style>
<div class="title"><strong>우편번호검색</strong></div>
<table>
	<tr>
		<td>
			
			<!-- ///////////////////////////////////////////////////////////////////////// -->
			<div class="form-group">
				<label class="control-label col-sm-2" for="dong">동 검색</label>
				<div class="col-sm-6">
				  <div class="input-group">
				    <input type="text" class="form-control" id="dong" name="dong" placeholder="동 이름을 검색하세요.">
				    <span class="input-group-btn">
				      <button class="btn btn-default" id="zip" type="button">검색</button>
				    </span>
				  </div>
				</div>
			</div>
			<!-- ///////////////////////////////////////////////////////////////////////// -->
			
		</td>
	</tr>
</table>

<div id="result"></div>