<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<div id="body">
	<div class="container">
		<div>
			${articleVO.contentTitle }
		</div>
		<div>
			${articleVO.contentWriter }
		</div>
		<div>
			${articleVO.contentRegisDate }
		</div>
		<div>
			${articleVO.contentContent }
		</div>
	</div>
</div>