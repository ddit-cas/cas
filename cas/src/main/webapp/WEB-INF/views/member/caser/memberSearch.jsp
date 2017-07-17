<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<html>
<body>

<link rel="stylesheet" href="/cas/resources/css/memberSearch.css" type="text/css">

	<style>
div.company-wrap {
	overflow: hidden;
	width: 1200px;
	margin: 50px 18px;
}
</style>



	<div id="container">

		<div class="company-wrap">

			<div class="company-snb">
				<h2>Caser</h2>
				<div class="">
					<ul>
						<li class="active"><a href="caserSearch">회원검색</a></li>
						<li><a href="#">프로필 뷰</a></li>
					</ul>
				</div>
			</div>



			<div class="contents">
				<h3 class="title">회원검색</h3>


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



					<table id="table_type1" width="100%">
						<colgroup>
							<col style="width: 25%">
							<col style="width: 55%">
							<col style="width: *">
						</colgroup>
						<tbody>
							<tr>
								<th scope="col">성명</th>
								<th scope="col">닉네임</th>
								<th scope="col">주요활동지역</th>
							</tr>


							<tr onclick="ListOpenJp('6098');"
								style="cursor: pointer; cursor: hand">
								<td>강경인</td>
								<td class="txt_l">고려대학교 건축사회환경공학과</td>
								<td>교수</td>
							</tr>

							<tr onclick="ListOpenJp('5523');"
								style="cursor: pointer; cursor: hand">
								<td>강덕현</td>
								<td class="txt_l">알에스오토메이션(주)</td>
								<td>대표이사</td>
							</tr>

							<tr onclick="ListOpenJp('464');"
								style="cursor: pointer; cursor: hand">
								<td>강명순</td>
								<td class="txt_l">한양대학교</td>
								<td>명예교수</td>
							</tr>

							<tr onclick="ListOpenJp('43');"
								style="cursor: pointer; cursor: hand">
								<td>강민호</td>
								<td class="txt_l">KAIST 전기및전자공학과</td>
								<td>명예교수</td>
							</tr>

							<tr onclick="ListOpenJp('6088');"
								style="cursor: pointer; cursor: hand">
								<td>강병하</td>
								<td class="txt_l">국민대학교 기계시스템공학부</td>
								<td>공과대학장/교수</td>
							</tr>

							<tr onclick="ListOpenJp('302');"
								style="cursor: pointer; cursor: hand">
								<td>강석중</td>
								<td class="txt_l">한국세라믹기술원</td>
								<td>원장</td>
							</tr>

							<tr onclick="ListOpenJp('115');"
								style="cursor: pointer; cursor: hand">
								<td>강석호</td>
								<td class="txt_l">영남대학교 화학공학부</td>
								<td>명예교수</td>
							</tr>

							<tr onclick="ListOpenJp('5253');"
								style="cursor: pointer; cursor: hand">
								<td>강선종</td>
								<td class="txt_l">(주)태영건설 기술연구소</td>
								<td>전무</td>
							</tr>

							<tr onclick="ListOpenJp('303');"
								style="cursor: pointer; cursor: hand">
								<td>강성군</td>
								<td class="txt_l">한양대학교 신소재공학부</td>
								<td>명예교수</td>
							</tr>

							<tr onclick="ListOpenJp('524');"
								style="cursor: pointer; cursor: hand">
								<td>강성모</td>
								<td class="txt_l">KAIST</td>
								<td>前 총장</td>
							</tr>


						</tbody>
					</table>

					<div class="paging_comm">

						<a href="javascript:void(0);" class="ico_comm btn_fst">처음 페이지</a>
						<a href="javascript:void(0);" class="ico_comm btn_prev">이전 페이지</a>

						<a href="javascript:void(0);" style="padding-top: 20px;"
							class="link_page on">1</a> <a href="javascript:PageTbl('2|4');"
							class="link_page">2</a> <a href="javascript:PageTbl('3|4');"
							class="link_page">3</a> <a href="javascript:PageTbl('4|4');"
							class="link_page">4</a> <a href="javascript:PageTbl('5|4');"
							class="link_page">5</a> <a href="javascript:PageTbl('6|4');"
							class="link_page">6</a> <a href="javascript:PageTbl('7|4');"
							class="link_page">7</a> <a href="javascript:PageTbl('8|4');"
							class="link_page">8</a> <a href="javascript:PageTbl('9|4');"
							class="link_page">9</a> <a href="javascript:PageTbl('10|4');"
							class="link_page">10</a> <a href="javascript:PageTbl('11|4');"
							class="ico_comm btn_next">다음 페이지</a> <a
							href="javascript:PageTbl('25|4');" class="ico_comm btn_lst">끝페이지</a>

					</div>



				</div>


			</div>

		</div>

	</div>



</body>


</html>