<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.form-inline {
	display: block;
	text-align: right;
}

.board-menu li {
	position: relative;
	float: left;
	width: 20%;
	font-size: 16px;
	border: 1px solid #d7dce7;
	border-left: 0 none;
}

td {
	text-align: center;
	font-size: 16px;
}

th {
	text-align: center;
	font-size: 16px;
}

li a:hover {
	background-color: #666;
}

#body {
	margin-top: 58px;
}
</style>
<body>
<div>
		
	</div>
<div class="company-wrap">
	<div class="company-snb">
		<h2>커뮤니티</h2>
		<div class="">
			<ul>
				<li class="active toggle"><a href="/cas/freeboardList">자유게시판</a></li>
				<li class="toggle"><a href="/cas/promotionList">공연홍보</a></li>
				<li class="toggle"><a href="/cas/uccList">CAS-UCC</a></li>
			</ul>
		</div>
	</div>
	<div class="company-cont" style="height: auto;">
		<h3 class="box">
		<c:if test="${boardCode=='B005' }">
		자유게시판
		</c:if>
		<c:if test="${boardCode=='B001' }">
		 공지사항
		</c:if>
		<c:if test="${boardCode=='B006' }">
		 CAS-UCC
		</c:if>
		</h3>
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div class="content col-md-6" style="font-size: 16px">
					<form name="tx_editor_form" style="width: 800px;"
						id="tx_editor_form" action="/cas/member/${resultUrl}"
						method="post" accept-charset="utf-8">
						<div class="table-responsive">
							<table class="table table-bordered"
								style="text-align: left; width: 750px;">
								<tbody>
									<tr>
										<th
											style="width: 10%; text-align: center; background-color: #eeeeee">제목</th>
										<td><input type="text" value="${articleVO.contentTitle }" name="contentTitle" id="title" class="form-control"></td>
									</tr>
									<tr>
										<th style="text-align: center; background-color: #eeeeee">작성자</th>
										<td><input type="text" id="title" class="form-control" readonly="readonly"
											value=${loginUser.memName }></td>
									</tr>
								</tbody>
							</table>
						</div>
								<input type="hidden" name="contentWriter"
									value="${loginUser.memId }">
						<div class="col-sm-5" style="width: 750px;" >
							<c:if test="${not empty articleVO }">
								<input type="hidden" name="contentNum"
									value="${articleVO.contentNum }">
							</c:if>
							<input type="hidden" name="boardCode" value="${boardCode }">
						</div>
						<div style="width:750px;">
							<jsp:include page="/WEB-INF/views/daumeditor/freeAndNoticeEditor.jsp"></jsp:include>
						</div>
					</form>
				</div>
			</div>
			<script type="text/javascript">
				var config = {
					txHost : '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
					txPath : '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
					txService : 'sample', /* 수정필요없음. */
					txProject : 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
					initializedId : "", /* 대부분의 경우에 빈문자열 */
					wrapper : "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
					form : 'tx_editor_form' + "", /* 등록하기 위한 Form 이름 */
					txIconPath : "<c:url value="/daumeditor/images/icon/editor/"/>", /*에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
					txDecoPath : "<c:url value="/daumeditor/images/deco/contents/"/>", /*본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
					canvas : {
						styles : {
							color : "#123456", /* 기본 글자색 */
							fontFamily : "굴림", /* 기본 글자체 */
							fontSize : "10pt", /* 기본 글자크기 */
							backgroundColor : "#fff", /*기본 배경색 */
							lineHeight : "1.5", /*기본 줄간격 */
							padding : "8px" /* 위지윅 영역의 여백 */
						},
						showGuideArea : false
					},
					events : {
						preventUnload : false
					},
					sidebar : {
						attachbox : {
							show : true,
							confirmForDeleteAll : true
						},
						// 이미지첨부 관련 추가 config
						attacher : {
							image : {
								features : {
									left : 250,
									top : 65,
									width : 400,
									height : 190,
									scrollbars : 0
								}, //팝업창 사이즈
								popPageUrl : '${pageContext.request.contextPath}/daumeditor/imagePopup', //팝업창 주소
							},
							file : {
								features : {
									left : 250,
									top : 65,
									width : 400,
									height : 190,
									scrollbars : 0
								}, // 팝업창 사이즈 
								popPageUrl : '${pageContext.request.contextPath}/daumeditor/filePopup', // 팝업창 주소 
							}
						}

					},
					size : {
						contentWidth : 726
					/* 지정된 본문영역의 넓이가 있을 경우에 설정 */
					}
				};

				EditorJSLoader.ready(function(Editor) {
					var editor = new Editor(config);
				});
			</script>

			<!-- Sample: Saving Contents -->
			<script type="text/javascript">
				/* 예제용 함수 */
				function saveContent() {
					Editor.save(); // 이 함수를 호출하여 글을 등록하면 된다.
				}

				/**
				 * Editor.save()를 호출한 경우 데이터가 유효한지 검사하기 위해 부르는 콜백함수로
				 * 상황에 맞게 수정하여 사용한다.
				 * 모든 데이터가 유효할 경우에 true를 리턴한다.
				 * @function
				 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
				 * @returns {Boolean} 모든 데이터가 유효할 경우에 true
				 */
				function validForm(editor) {
					// Place your validation logic here

					// sample : validate that content exists
					var validator = new Trex.Validator();
					var content = editor.getContent();
					if (!validator.exists(content)) {
						alert('내용을 입력하세요');
						return false;
					}

					return true;
				}

				/**
				 * Editor.save()를 호출한 경우 validForm callback 이 수행된 이후
				 * 실제 form submit을 위해 form 필드를 생성, 변경하기 위해 부르는 콜백함수로
				 * 각자 상황에 맞게 적절히 응용하여 사용한다.
				 * @function
				 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
				 * @returns {Boolean} 정상적인 경우에 true
				 */
				function setForm(editor) {
					var i, input;
					var form = editor.getForm();
					var content = editor.getContent();

					// 본문 내용을 필드를 생성하여 값을 할당하는 부분
					var textarea = document.createElement('textarea');
					textarea.name = 'contentContent';
					textarea.value = content;
					form.createField(textarea);
					alert(content);

					/* 아래의 코드는 첨부된 데이터를 필드를 생성하여 값을 할당하는 부분으로 상황에 맞게 수정하여 사용한다.
					 첨부된 데이터 중에 주어진 종류(image,file..)에 해당하는 것만 배열로 넘겨준다. */
					var images = editor.getAttachments('image');
					for (i = 0; i < images.length; i++) {
						// existStage는 현재 본문에 존재하는지 여부
						if (images[i].existStage) {
							// data는 팝업에서 execAttach 등을 통해 넘긴 데이터
							//                 alert('attachment information - image[' + i + '] \r\n' + JSON.stringify(images[i].data));
							input = document.createElement('input');
							input.type = 'hidden';
							input.name = 'attach_image' + (i + 1);
							input.value = images[i].data.imageurl; // 예에서는 이미지경로만 받아서 사용
							form.createField(input);
						}
					}

					var files = editor.getAttachments('file');
					for (i = 0; i < files.length; i++) {
						input = document.createElement('input');
						input.type = 'hidden';
						input.name = 'attach_file';
						input.value = files[i].data.attachurl;
						form.createField(input);
					}
					return true;
				}
			</script>
			
			<!-- End: Saving Contents -->

			<!-- Sample: Loading Contents -->
			<textarea id="sample_contents_source" style="display: none;">
	${articleVO.contentContent }
</textarea>
			<script type="text/javascript">
				function loadContent() {
					var attachments = {};
					// 		attachments['image'] = [];
					// 		attachments['image'].push({
					// 			'attacher': 'image',
					// 			'data': {
					// 				'imageurl': 'http://cfile273.uf.daum.net/image/2064CD374EE1ACCB0F15C8',
					// 				'filename': 'github.gif',
					// 				'filesize': 59501,
					// 				'originalurl': 'http://cfile273.uf.daum.net/original/2064CD374EE1ACCB0F15C8',
					// 				'thumburl': 'http://cfile273.uf.daum.net/P150x100/2064CD374EE1ACCB0F15C8'
					// 			}
					// 		});
					// 		attachments['file'] = [];
					// 		attachments['file'].push({
					// 			'attacher': 'file',
					// 			'data': {
					// 				'attachurl': 'http://cfile297.uf.daum.net/attach/207C8C1B4AA4F5DC01A644',
					// 				'filemime': 'image/gif',
					// 				'filename': 'editor_bi.gif',
					// 				'filesize': 640
					// 			}
					// 		});
					/* 저장된 컨텐츠를 불러오기 위한 함수 호출 */
					Editor.modify({
						"attachments" : function() { /* 저장된 첨부가 있을 경우 배열로 넘김, 위의 부분을 수정하고 아래 부분은 수정없이 사용 */
							var allattachments = [];
							for ( var i in attachments) {
								allattachments = allattachments
										.concat(attachments[i]);
							}
							return allattachments;
						}(),
						"content" : document
								.getElementById("sample_contents_source")
					/* 내용 문자열, 주어진 필드(textarea) 엘리먼트 */
					});
				}
			</script>
			<c:if test='${not empty articleVO}'>
				<script>
					loadContent();
				</script>
			</c:if>
		
	</div>
</div>
</div>
<div style="float: right; margin-right: 150px">
			<c:choose>
				<c:when test='${not empty articleVO}'>
					<div>
						<button onclick='saveContent()' class="btn btn-primary">수정</button>
						<button onclick='deleteContent()' class="btn btn-primary">삭제</button>
					</div>
				</c:when>
				<c:otherwise>
					<div>
						<button onclick='saveContent()' class="btn btn-primary">등록</button>
					</div>
				</c:otherwise>
			</c:choose>
			</div>
			<script>
				function deleteContent(){
					location.href = "/cas/member/deleteFreeboard?contentNum=${articleVO.contentNum}";
				}
			</script>
</body>


