<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<style>
/* section classes */
.sectionTitle {
    padding: 0 0 0px 70px;
    margin: 50px 0;
    position: relative;
}

.sectionTitle:before {
    background-color: #33a4c9;
    border-radius: 25px;
    content: ' ';
    display: block;
    height: 50px;
    left: 0;
    position: absolute;
    top: 0px;
    width: 50px;
}

.sectionTitle-font, .sectionTitle {
    font-size: 2rem;
}

section {
    font-size: 1.8rem;
}
</style>
<script>
$(document).ready(function() {
    $.getScript('https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.8/validator.min.js', function()
    {
        $('#contactForm').validator({
                custom: {
                    equals: function($el) {
                        var matchValue = $el.data("equals") // foo
                            //empty string test
                        if (!$el.val())
                            return;
                        if ($el.val() != matchValue) {
                            return "Hey, that's not valid! It's gotta be " + matchValue
                        }
                    }
                }
        });
    });
});
</script>
	<div id="body">
		<a class="anchor" id="a-contact"></a>
		<section style="margin-bottom: 30px;">
			<div class="container">
				<h3>1:1문의</h3>
				<hr>
				<div class="row ">
					<form id="contactForm" role="form" action="#a-contact"
						method="post">
						<div class="form-group">
							<label for="InputName">제목</label>
							<div class="input-group">
								<input type="text" class="form-control" name="InputName"
									id="InputName" placeholder="제목 입력하세요" required /> <span
									class="input-group-addon"><i
									class="glyphicon glyphicon-ok "></i></span>
							</div>
							<div class="help-block with-errors"></div>
						</div>
						<div class="form-group">
							<label for="InputName">작성자</label>
							<div class="input-group">
								<input type="text" class="form-control" name="InputName"
									id="InputName" placeholder="작성자 입력하세요" required /> <span
									class="input-group-addon"><i
									class="glyphicon glyphicon-ok "></i></span>
							</div>
							<div class="help-block with-errors"></div>
						</div>
						<div class="form-group">
							<label for="InputMessage">문의 내용</label>
							<div class="input-group">
								<textarea name="InputMessage" id="InputMessage"
									class="form-control" rows="5" placeholder="문의하고 싶은 말을 마음껏 쓰세요"
									required></textarea>
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-ok "></i></span>

							</div>
						</div>
						<div class="form-group">
							<input type="button" name="submit" id="submit" value="보내기"
								class="btn btn-info pull-right" />
						</div>
				</div>
				</form>
			</div>
		</section>
	</div>
	</div>
    </body>