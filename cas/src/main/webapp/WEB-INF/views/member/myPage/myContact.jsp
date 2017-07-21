<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
	@import "//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css";
<body>
	<style>
#body {
	margin-top: 58px;
}

.company-cont {
	width: 960px;
	text-align: center;
}

.pager .active a{
    background-color : #337AB7;
    color: #FFF;
    border: 0px;
}
</style>

<script type="text/javascript">
function goTo(number){
	   $('ul.pager li:eq('+number+') a').tab('show');
	   upgradePreNext(number);
	}
	function upgradePreNext(number){
	   if (number>1){
	       $('ul.pager li:eq(0)').attr("onclick","goTo("+(number-1)+")");
	       $('ul.pager li:eq(0)').attr("class", "previous");
	   } else {
	       $('ul.pager li:eq(0)').attr("class", "disabled");
	   }
	    if (number<5){
	       $('ul.pager li:eq(6)').attr("onclick","goTo("+(number+1)+")");
	       $('ul.pager li:eq(6)').attr("class", "next");
	   } else {
	       $('ul.pager li:eq(6)').attr("class", "disabled");
	   }
	}
	$(document).ready(function(){
	    $('li a').on('click',function(e){
	  	    goTo((e.target.innerHTML)-0);
	  });
	});

</script>

	<div id="body">
		<div class="container">
			<div class="row">
				<h3>1:1 문의</h3>
				<hr>
				<div class="col-sm-12">
					<table class="table table-hover"
						style="width: 960px; height:auto; margin: 0 auto;">
						<thead>
							<tr>
								<th style="text-align: center; font-size: 15px; width: 30%;">제목</th>
								<th style="text-align: center; font-size: 15px; width: 10%;">작성자</th>
								<th style="text-align: center; font-size: 15px; width: 15%;">작성시간</th>
							</tr>
						</thead>
						<tbody style="text-align: center; font-size: 15px;">
						<c:forEach var="i" begin="0" end="10">
							<tr>
								<td><a href="#">제목${i}</a></td>
								<td><a href="#">작성자${i}</a></td>
								<td>작성시간${i}</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				<nav aria-label="...">
            	<ul class="pager" role="tablist">
                    <li class="previous" onclick="goTo(1);"><a href="#"><span aria-hidden="true">←</span> Previous</a></li>
                    <li class="active" id="first">
                        <a aria-controls="tab1" data-toggle="tab" href="#tab1" role="tab">1</a>
                    </li>
                    <li>
                        <a aria-controls="tab2" data-toggle="tab" href="#tab2" role="tab">2</a>
                    </li>
                    <li>
                        <a aria-controls="tab3" data-toggle="tab" href="#tab3" role="tab">3</a>
                    </li>
                    <li>
                        <a aria-controls="tab4" data-toggle="tab" href="#tab4" role="tab">4</a>
                    </li>
                    <li id="last">
                        <a aria-controls="tab5" data-toggle="tab" href="#tab5" role="tab">5</a>
                    </li>                    
                    <li class="next" onclick="goTo(2);"><a href="#">Next <span aria-hidden="true">→</span></a></li>
                </ul>
            </nav>
			</div>
		</div>
      </div>
</body>
