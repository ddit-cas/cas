<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환전하기</title>
</head>
<body>
	<style>
.text-danger strong {
	color: #337ab7;
}

.receipt-main {
	background: #ffffff none repeat scroll 0 0;
	border-bottom: 12px solid #333333;
	border-top: 12px solid #337ab7;
	margin-top: 50px;
	margin-bottom: 50px;
	padding: 40px 30px !important;
	position: relative;
	box-shadow: 0 1px 21px #acacac;
	color: #333333;
	font-family: open sans;
}

.receipt-main p {
	color: #333333;
	font-family: open sans;
	line-height: 1.42857;
}

.receipt-footer h1 {
	font-size: 15px;
	font-weight: 400 !important;
	margin: 0 !important;
}

.receipt-main::after {
	background: #414143 none repeat scroll 0 0;
	content: "";
	height: 5px;
	left: 0;
	position: absolute;
	right: 0;
	top: -13px;
}

.receipt-main thead {
	background: #414143 none repeat scroll 0 0;
}

.receipt-main thead th {
	color: #fff;
}

.receipt-right h5 {
	font-size: 16px;
	font-weight: bold;
	margin: 0 0 7px 0;
}

.receipt-right p {
	font-size: 12px;
	margin: 0px;
}

.receipt-right p i {
	text-align: center;
	width: 18px;
}

.receipt-main td {
	padding: 9px 20px !important;
}

.receipt-main th {
	padding: 13px 20px !important;
}

.receipt-main td {
	font-size: 13px;
	font-weight: initial !important;
}

.receipt-main td p:last-child {
	margin: 0;
	padding: 0;
}

.receipt-main td h2 {
	font-size: 20px;
	font-weight: 900;
	margin: 0;
	text-transform: uppercase;
}

.receipt-header-mid .receipt-left h1 {
	font-weight: 100;
	margin: 34px 0 0;
	text-align: right;
	text-transform: uppercase;
}

.receipt-header-mid {
	margin: 24px 0;
	overflow: hidden;
}

#container {
	background-color: #dcdc;
}

/* #body {
	
} */

#btnses {
	margin: 10px;
	text-align: center;
}

.image-preview-input input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0);
}

.image-preview-input {
    position: relative;
	overflow: hidden;
	margin: 0px;    
    color: #333;
    background-color: #fff;
    border-color: #ccc;    
}
</style>
	<div id="body">
		<div class="container">

			<div
				class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				<div class="row">
					<div>
						<div class="c_header">
							<h3>구름이 환전 신청</h3>
							<p class="contxt">선물받은 구름이를 현금으로 환전해드리는 서비스입니다.</p>
						</div>
						<hr>

						<!-- [D] input type="text"에 focus 되었을때 class에 on 추가 (ie6,ie7 대응) -->
						<div class="section_delete">
							<h3 class="h_dropout">구름이 환전 신청 전에 꼭 읽어 주세요!</h3>
							<p class="dropout_dsc">▶ 선물받은 구름이가 100구름 이상일 때부터 현금환전이
								가능합니다.(구름이 1구름=100원)</p>
							<p class="dropout_dsc">▶ 구름이를 현금으로 환전 받으시면 환전액수에 관계없이 종합 소득세
								신고의무가 발생합니다. (매년 5년)</p>
							<p class="dropout_dsc">▶불법적인 방법으로 취득 혹은 취득하였다고 의심되는 경우 사전 안내
								없이 구름이 환전 취소 및 회수될 수 있습니다.</p>
						</div>
						<table class="table table-bordered">
							<tr>
								<td class="text-right" colspan='2'>
									<p>
										<strong>환전 가능한 구름이:</strong>
									</p>
									<p>
										<strong> 누적 구름이 환전액:</strong>
									</p>
									<p>
										<strong> 환전 신청할 구름이:</strong>
									</p>
								</td>
								<td class="text-center text-primary">
									<p>
										<strong><i class="fa fa-inr"></i> 324,000구름</strong>
									</p>
									<p>
										<strong><i class="fa fa-inr"></i> 24,000구름</strong>
									</p>
									<p>
										<strong><i class="fa fa-inr"></i>15000 구름</strong>
									</p>
								</td>
							</tr>
                    </tbody>
                </table>
                	<hr>
                	<h3>환전 신청 내역</h3>
							<table class="table table-bordered">
							<tr>
                            <td class="text-right">
                            <p>
                                <strong>Total Amount: </strong>
                            </p>
                            <p>
                                <strong>Late Fees: </strong>
                            </p>
							<p>
                                <strong>Payable Amount: </strong>
                            </p>
							<p>
                                <strong>Balance Due: </strong>
                            </p>
							</td>
                            <td>
                            <p>
                                <strong><i class="fa fa-inr"></i> 65,500/-</strong>
                            </p>
                            <p>
                                <strong><i class="fa fa-inr"></i> 500/-</strong>
                            </p>
							<p>
                                <strong><i class="fa fa-inr"></i> 1300/-</strong>
                            </p>
							<p>
                                <strong><i class="fa fa-inr"></i> 9500/-</strong>
                            </p>
							</td>
                        </tr>
                        <tr>
                           
                            <td class="text-right"><h2><strong>Total: </strong></h2></td>
                            <td class="text-left text-danger"><h2><strong><i class="fa fa-inr"></i> 31.566/-</strong></h2></td>
                        </tr>
                        </table>
            </div>
					</div>
				</div>
			
			<div
				class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				<div class="row">
					<form class="form-horizontal" action="#">
						<fieldset class="signup_cas_fs">
							<h3>개인정보</h3>
							<hr>
							<label><input type="checkbox" name="terms">기존 정보
								사용</label>
							<div class="form-group">
								<label class="control-label col-xs-2" for="id">아이디</label>
								<div class="col-xs-4">
									<div class="input-group">
										<input type="text" class="form-control" id="mem_id" name="id"
											placeholder="아이디를 입력하세요."> <span
											class="input-group-btn"> </span>
									</div>
								</div>
							</div>
							<label class="control-label col-xs-2" for="name">이름</label>
							<div class="col-sm-4">
								<div class="input-group">
									<input type="text" class="form-control" id="name"
										placeholder="이름을 입력하세요." name="name" aria-label="name">
								</div>
							</div>
							<div>
								<button class="btn btn-default" id="idCheck" type="button">이름변경</button>
							</div>
							<p></p>
							<p></p>
							<p></p>
								<label class="control-label col-sm-2" for="tel">전화번호</label>
								<div class="col-sm-6">
									<div class="input-group">
										<input type="tel" class="form-control" id="tel"
											placeholder="전화번호를 입력하세요." name="tel" >
									</div>
								</div>
							<div class="form-group">
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="email">이메일</label>
								<div class="col-sm-6">
									<div class="input-group">
										<input type="email" class="form-control" id="email"
											placeholder="이메일을 입력하세요." name="email">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="addr">주소</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="add"
								placeholder="주소 입력하세요" name="addr">
								</div>
							</div>
							<hr>
							<h3>계좌정보</h3>
							<hr>
							<input type="button" class="btn btn-primary" value="최근 입금계좌" style="float:right;"/>
							<br><br>
							<div class="form-group">
								<label class="control-label col-xs-2" for="id">은행</label>
								<div class="col-sm-4">
									<div class="input-group">
										<input type="text" class="form-control" id="mem_id"
											name="moneyname" placeholder="은행이름을 입력하세요">
									</div>
								</div>
							</div>
							<label class="control-label col-xs-2" for="id">예금주</label>
							<div class="col-sm-4">
								<div class="input-group">
									<input type="text" class="form-control" id="mem_id"
										name="amound" placeholder="예금주를 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2" for="id">계좌번호</label>
								<div class="col-sm-4">
									<div class="input-group">
										<input type="text" class="form-control" id="mem_id"
											name="amound" placeholder="계좌번호를 입력하세요">
									</div>
								</div>
							</div>
							<p class="dropout_dsc" style="color: red;">▶개인명의의 계좌로만 환전이
								가능합니다</p>
							<p class="dropout_dsc" style="color: red;">▶가입자와 동일한 명의의 계좌가
								아니거나,입력하신 계좌번호가 올바르지 않을 경우 환전이 불가하오니 정확히 입력해 주시기 바랍니다.</p>
							<hr>

							<script>
							$(document).on('click', '#close-preview', function(){ 
							    $('.image-preview').popover('hide');
							    // Hover befor close the preview
							    $('.image-preview').hover(
							        function () {
							           $('.image-preview').popover('show');
							        }, 
							         function () {
							           $('.image-preview').popover('hide');
							        }
							    );    
							});

							$(function() {
							    // Create the close button
							    var closebtn = $('<button/>', {
							        type:"button",
							        text: 'x',
							        id: 'close-preview',
							        style: 'font-size: initial;',
							    });
							    closebtn.attr("class","close pull-right");
							    // Set the popover default content
							    $('.image-preview').popover({
							        trigger:'manual',
							        html:true,
							        title: "<strong>사진</strong>"+$(closebtn)[0].outerHTML,
							        content: "There's no image",
							        placement:'bottom'
							    });
							    // Clear event
							    $('.image-preview-clear').click(function(){
							        $('.image-preview').attr("data-content","").popover('hide');
							        $('.image-preview-filename').val("");
							        $('.image-preview-clear').hide();
							        $('.image-preview-input input:file').val("");
							        $(".image-preview-input-title").text("첨부파일"); 
							    }); 
							    // Create the preview image
							    $(".image-preview-input input:file").change(function (){     
							        var img = $('<img/>', {
							            id: 'dynamic',
							            width:250,
							            height:200
							        });      
							        var file = this.files[0];
							        var reader = new FileReader();
							        // Set preview image into the popover data-content
							        reader.onload = function (e) {
							            $(".image-preview-input-title").text("바꾸기");
							            $(".image-preview-clear").show();
							            $(".image-preview-filename").val(file.name);            
							            img.attr('src', e.target.result);
							            $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
							        }        
							        reader.readAsDataURL(file);
							    });  
							});
	</script>
							<h3>신분증 사본 첨부</h3>
							<hr>
							<div
								class="col-sm-12 col-md-6 col-md-offset-3 col-md-8 col-sm-offset-2">
								<!-- image-preview-filename input [CUT FROM HERE]-->
								<div class="input-group image-preview">
									<input type="text" class="form-control image-preview-filename"
										placeholder="신분증 사본 첨부"  disabled="disabled">
									<!-- don't give a name === doesn't send on POST/GET -->
									<span class="input-group-btn"> <!-- image-preview-clear button -->
										<button type="button"
											class="btn btn-default image-preview-clear"
											style="display: none;">
											<span class="glyphicon glyphicon-remove"></span>삭제
										</button> <!-- image-preview-input -->
										<div class="btn btn-default image-preview-input">
											<span class="glyphicon glyphicon-folder-open"></span> <span
												class="image-preview-input-title">첨부파일</span> <input
												type="file" accept="image/png, image/jpeg, image/gif"
												name="input-file-preview" />
											<!-- rename it -->
										</div>
									</span>
								</div>
											<p class="dropout_dsc" style="color: red;">▶사진 확인이 가능한 파일(여권,학생증 등)을 첨부해 주시기 바랍니다.</p>
								<!-- /input-group image-preview [TO HERE]-->
							</div>
						</fieldset>
					</form>
				</div>
				<hr>
				<br>
				<div class="row">
					<div id="btnses">
						<a href="exchange.jsp"></a><input type="button"
							class="btn btn-primary" value="환전 신청하기" /> <a href="myPoint.jsp"></a><input
							type="button" class="btn btn-primary" value="취소" />
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>