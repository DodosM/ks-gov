<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!-- 헤더 시작 -->
		<div id="header_wrap">
			<div id="header">
				<h1><a href="/ksearch"><img src="resources/images/logo_n.png" alt="경상남도"></a></h1> <!-- 로고를 클릭 했을 때, /ksearch로 간다 -->
				<div class="search_wrap">
					<form>
	                    <fieldset> <!-- <form>요소에서 연관된 요소들을 하나의 그룹으로 묶을 때 사용 -->
	                        <legend>통합검색</legend> <!-- fieldset요소의 캡션(caption)을 정의 할 때 사용 -->
	                        <div class="search_area">
								<div class="selectStyle">
									<span class="txt">통합검색</span>
									<select title="검색타입 선택">
										<option value="type1">통합검색</option>
										<option value="type2">온라인보고</option>
										<option value="type3">온-나라</option>
										<option value="type3">과제·계획</option>
									</select>
								</div>
								<input type="search" title="<c:out value='${params.kwd}' />" class="inptxt" />
								<button type="submit" class="btn_search"><span class="hide">검색</span></button>
							</div>
							
							<!-- ======== 아래 class="srhchk"js에서 구현해야하는 곳 : api받아와야 한다. append ======== -->
							<div class="srhchk">
								<input type="checkbox" id="srhchk" name="">
								<label for="srhchk">결과내 재검색</label>								
							</div>							
							<!-- ================================================ -->
	                    </fieldset>
	                </form>
				</div>
				<div class="laytit"><a href="#">상세검색</a></div>
			</div>
		</div>
		<!-- //헤더 끝 -->

		<!-- 상세보기 시작 -->
		<div class="search_detail">
			<form>
			<fieldset>
				<legend>상세검색양식</legend>

				<ul>
					<li><strong class="tit_check"><a href="#">정렬</a></strong>
						<div class="sub">
						<ul>
							<li><a href="#">정확도순</a></li>
							<li><a href="#">최신순</a></li>
						</ul>
						</div>
					</li>
					<li><strong class="tit_check"><a href="#">기간</a></strong>
						<div class="sub sub1">
						<ul>
							<li><a href="#">최근1주</a></li>
							<li><a href="#">최근1달</a></li>
							<li><a href="#">최근3달</a></li>
							<li><a href="#">최근1년</a></li>
							<li class="selectdv">
								<span class="select_date">직접입력</span>
								<div><input type="text" class="datepicker" title="날짜 선택" /></div>
								<input type="text" class="datepicker" title="날짜 선택" />
								<div class="subBtn"><a href="#">적용하기</a></div>
							</li>
						</ul>
						</div>
					</li>
					<li><strong class="tit_check"><a href="#">영역</a></strong>
						<div class="sub">
						<ul>
							<li><a href="#">전체</a></li>
							<li><a href="#">제목</a></li>
							<li><a href="#">내용</a></li>
							<li><a href="#">첨부파일</a></li>
						</ul>
						</div>
					</li>
					<li><strong class="tit_check"><a href="#">상세검색</a></strong>
						<div class="sub sub4">
							<div class="ipt_tp">
								<input name="dquery" type="text" class="subinput" value="" onkeypress="javascript:pressCheck((event),this);" placeholder="경상남도 “민원실” +콜센터 -일자리">
							</div>
							<ul>
								<li>
									<label for="dtkeyword1">기본검색어</label>
									<input type="text" id="dtkeyword1" name="" value="" title="기본검색어">
								</li>
								<li>
									<label for="dtkeyword2">정확히 일치하는 단어/문장 ("")</label>
									<input type="text" id="dtkeyword2" title="일치검색">
								</li>
								<li>
									<label for="dtkeyword3">반드시 포함하는 단어 (공백)</label>
									<input type="text" id="dtkeyword3" value="" title="포함검색">
								</li>
								<li>
									<label for="dtkeyword4">제외하는 단어 (!)</label>
									<input type="text" id="dtkeyword4" value="" title="제외검색">
								</li>
							</ul>
							<p class="srhnoti"> * 여러 개의 단어를 입력할 때는 쉼표(,)로 구분해서 입력하세요.</p>
							<div class="dbtn">
								<a href="#" onclick="javascript:doSearch();return false;" class="srh">검색</a>
								<a href="#" class="close">닫기</a>
								<a href="#" class="clear">초기화</a>
							</div>
						</div>
					</li>
				</ul>
			</fieldset>
			</form>
		</div>
		<!-- //상세보기 끝 -->
