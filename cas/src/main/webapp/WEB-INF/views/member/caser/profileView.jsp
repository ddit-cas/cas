<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<body>

<style>
.bn_wrap {
    overflow: hidden;
    width: 1122px;
    padding-left: 237px;
    height: 585px;
}


</style>

	<div class="company-wrap">

		<div class="company-snb">
			<h2>Caser</h2>
			<div class="">
				<ul>
					<li class="active"><a href="caserSearch">회원검색</a></li>
					<li><a href="profileView">프로필 뷰</a></li>
				</ul>
			</div>
		</div>

		<div class="contents">

			<h3 class="title">CASER PROFILE LIST</h3>


			<div class="bn_wrap">
				<input type="hidden" name="pageNoChk" value="4"> <input
					type="hidden" name="mbSearchKey" value="3">



				<div class="search_list">
					<div class="sel_r">
						<fieldset>
							<legend>검색</legend>
							<select name="select_chk_1" class="selDomain" title="검색내용 선택">
								<option value="chk_All" selected="">전체</option>
								<option value="chk_name">이름</option>
								<option value="chk_nick">닉네임</option>
							</select> <span class="selSch"><input type="text"
								name="select_chk_2" onfocus="only_number(this)" value=""
								onkeydown="javascript:chksel('shk');" class="ipt_search"
								title="검색입력란"></span>
							<button type="submit" onclick="javascript:chksel('exe');"
								title="검색" class="btn_search">검색</button>
						</fieldset>
					</div>
				</div>



				<div class="container2" style="margin-top: 20px; width: 763px;">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="well well-sm">
								<div class="row">
									<div class="col-sm-6 col-md-4">
										<img src="../../../resources/images/logo.png" alt=""
											class="img-rounded img-responsive" />
									</div>
									<div class="col-sm-6 col-md-8">
										<h4>Bhaumik Patel</h4>
										<small><cite title="San Francisco, USA">San
												Francisco, USA <i class="glyphicon glyphicon-map-marker">
											</i>
										</cite></small>
										<p>
											<i class="glyphicon glyphicon-envelope"></i>email@example.com
											<br /> <i class="glyphicon glyphicon-globe"></i><a
												href="http://www.jquery2dotnet.com">www.jquery2dotnet.com</a>
											<br /> <i class="glyphicon glyphicon-gift"></i>June 02, 1988
										</p>
										<!-- Split button -->
										<div class="btn-group">
											<button type="button" class="btn btn-primary">Social</button>
											<button type="button" class="btn btn-primary dropdown-toggle"
												data-toggle="dropdown">
												<span class="caret"></span><span class="sr-only">Social</span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Twitter</a></li>
												<li><a
													href="https://plus.google.com/+Jquery2dotnet/posts">Google
														+</a></li>
												<li><a href="https://www.facebook.com/jquery2dotnet">Facebook</a></li>
												<li class="divider"></li>
												<li><a href="#">Github</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="well well-sm">
								<div class="row">
									<div class="col-sm-6 col-md-4">
										<img src="http://placehold.it/380x500" alt=""
											class="img-rounded img-responsive" />
									</div>
									<div class="col-sm-6 col-md-8">
										<h4>Bhaumik Patel</h4>
										<small><cite title="San Francisco, USA">San
												Francisco, USA <i class="glyphicon glyphicon-map-marker">
											</i>
										</cite></small>
										<p>
											<i class="glyphicon glyphicon-envelope"></i>email@example.com
											<br /> <i class="glyphicon glyphicon-globe"></i><a
												href="http://www.jquery2dotnet.com">www.jquery2dotnet.com</a>
											<br /> <i class="glyphicon glyphicon-gift"></i>June 02, 1988
										</p>
										<!-- Split button -->
										<div class="btn-group">
											<button type="button" class="btn btn-primary">Social</button>
											<button type="button" class="btn btn-primary dropdown-toggle"
												data-toggle="dropdown">
												<span class="caret"></span><span class="sr-only">Social</span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Twitter</a></li>
												<li><a
													href="https://plus.google.com/+Jquery2dotnet/posts">Google
														+</a></li>
												<li><a href="https://www.facebook.com/jquery2dotnet">Facebook</a></li>
												<li class="divider"></li>
												<li><a href="#">Github</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="well well-sm">
								<div class="row">
									<div class="col-sm-6 col-md-4">
										<img src="http://placehold.it/380x500" alt=""
											class="img-rounded img-responsive" />
									</div>
									<div class="col-sm-6 col-md-8">
										<h4>Bhaumik Patel</h4>
										<small><cite title="San Francisco, USA">San
												Francisco, USA <i class="glyphicon glyphicon-map-marker">
											</i>
										</cite></small>
										<p>
											<i class="glyphicon glyphicon-envelope"></i>email@example.com
											<br /> <i class="glyphicon glyphicon-globe"></i><a
												href="http://www.jquery2dotnet.com">www.jquery2dotnet.com</a>
											<br /> <i class="glyphicon glyphicon-gift"></i>June 02, 1988
										</p>
										<!-- Split button -->
										<div class="btn-group">
											<button type="button" class="btn btn-primary">Social</button>
											<button type="button" class="btn btn-primary dropdown-toggle"
												data-toggle="dropdown">
												<span class="caret"></span><span class="sr-only">Social</span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Twitter</a></li>
												<li><a
													href="https://plus.google.com/+Jquery2dotnet/posts">Google
														+</a></li>
												<li><a href="https://www.facebook.com/jquery2dotnet">Facebook</a></li>
												<li class="divider"></li>
												<li><a href="#">Github</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="well well-sm">
								<div class="row">
									<div class="col-sm-6 col-md-4">
										<img src="http://placehold.it/380x500" alt=""
											class="img-rounded img-responsive" />
									</div>
									<div class="col-sm-6 col-md-8">
										<h4>Bhaumik Patel</h4>
										<small><cite title="San Francisco, USA">San
												Francisco, USA <i class="glyphicon glyphicon-map-marker">
											</i>
										</cite></small>
										<p>
											<i class="glyphicon glyphicon-envelope"></i>email@example.com
											<br /> <i class="glyphicon glyphicon-globe"></i><a
												href="http://www.jquery2dotnet.com">www.jquery2dotnet.com</a>
											<br /> <i class="glyphicon glyphicon-gift"></i>June 02, 1988
										</p>
										<!-- Split button -->
										<div class="btn-group">
											<button type="button" class="btn btn-primary">Social</button>
											<button type="button" class="btn btn-primary dropdown-toggle"
												data-toggle="dropdown">
												<span class="caret"></span><span class="sr-only">Social</span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Twitter</a></li>
												<li><a
													href="https://plus.google.com/+Jquery2dotnet/posts">Google
														+</a></li>
												<li><a href="https://www.facebook.com/jquery2dotnet">Facebook</a></li>
												<li class="divider"></li>
												<li><a href="#">Github</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
</body>
</html>