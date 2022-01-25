<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<!--<![endif]-->
<head>
	<title>page test mirae</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" /> <!-- 웹 페이지에서 사용자가 볼 수 있는 영역인 뷰포트를 제어. 브라우저에게 해당 페이지의 면적과 비율 등을 어떻게 제어할 지에 대한 지침을 제공. -->
	<meta name="format-detection" content="telephone=no" /> <!-- 검색엔진을 위해 웹 페이지와 관련된 콤마로 구분한 키워드 목록을 명시함 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="통합 파일 검색 시스템" /> <!-- description : 웹페이지에 대한 설명을 명시함. 검색엔진은 검색 결과에 이러한 설명을 함께 표시할 수 있음 -->
	<link rel="stylesheet" href="resources/css/common.css" /> <!-- stylesheet로 사용할 외부 리소스를 불러옴 --> <!-- link 태그의 rel속성은 현재문서와 외부 리소스 사이의 연관 관계를 명시. rel속성은 <link> 요소에 반드시 명시되어야 하는 필수 속성 -->
	<!-- /resources가 안되는 이유는 -> servlet-context.xml에서 resources mapping에 영향을 받아서 -->
	<script src="resources/js/lib/jquery-1.8.3.min.js"></script>
	<!--[if lt IE 9]>
		<script src="js/lib/html5.js"></script>
		<script src="js/lib/respond.min.js"></script>
	<![endif]-->
	<script src="resources/js/lib/jquery-ui.js"></script>
	<script src="resources/js/lib/icheck.min.js"></script>
    <script src="resources/js/common.js"></script>
</head>
<body>
	<div id="wrap" class="user_version">
		<p id="skipnavi"><a href="#contents">본문 바로가기</a></p>
		<div id="header_wrap">
			<div id="header">
				<!-- 삭제
				<div id="util_area">
					<ul class="util_list">
						<li class="user"><strong>홍길동</strong><span>님</span></li>
						<li class="logout"><a href="#">로그아웃</a></li>
						<li class="config"><a href="#">개인설정</a></li>
						<li class="btn_link none"><a href="#">관리자</a></li>
						<li class="btn_link"><a href="#">부서관리자</a></li>
						<li class="btn_link"><a href="#">업무관리자</a></li>
						<li class="btn_link"><a href="#">개인정보</a></li>
					</ul>
				</div>
				-->

				<h1><a href="search.html"><img src="resources/images/logo_n.png" alt="경상남도"></a></h1>
				<div class="search_wrap">
					<form>
	                    <fieldset>
	                        <legend>통합검색</legend>
	                        <div class="search_area">
								<div class="selectStyle">
									<span class="txt">통합검색</span>
									<select title="검색타입 선택">
										<option value="type1">통합검색</option>
									</select>
								</div>
								<input type="search" title="검색어 입력" class="inptxt" />
								<button type="submit" class="btn_search"><span class="hide">검색</span></button>
							</div>
							<div class="srhchk"><input type="checkbox" id="srhchk" name=""><label for="srhchk">결과내 재검색</label></div>
	                    </fieldset>
	                </form>
				</div>

				<div class="laytit"><a href="#">상세검색</a></div>

			</div>
		</div>

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

		<div id="container">
	
			<div class="searchRgt">
			검색어 <strong>“민원”</strong>에 대한 검색 결과입니다.  <em>( 11,649건 )</em>
			</div>

			<div class="tab-ui">
			<ul>
				<li><a href="#searchTab1" class="on">통합검색</a></li>
				<li><a href="#searchTab2">온라인보고<span>(10)</span></a></li>
				<li><a href="#searchTab3">온-나라<span>(10)</span></a></li>
				<li><a href="#searchTab4">과제·계획<span>(10)</span></a></li>
				<li><a href="#searchTab5">일정·회의<span>(10)</span></a></li>
				<li><a href="#searchTab6">기타정보<span>(10)</span></a></li>
				<li><a href="#searchTab7">게시판<span>(10)</span></a></li>	
				<li><a href="#searchTab8">기록관<span>(10)</span></a></li>
				<li><a href="#searchTab9">이호조<span>(10)</span></a></li>
			</ul>
			</div>

			<!-- 통합검색 -->
			<div id="searchTab1" class="tabcont active">
				<div class="search_result">
					<h2>온라인보고(10)</h2>
					<ul class="search_result_list">
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_xls.png" alt="엑셀 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
								<dd class="date">보고일 : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_xls.png" alt="엑셀 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
								<dd class="date">보고일 : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_xls.png" alt="엑셀 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
								<dd class="date">보고일 : 2019-12-08</dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">온라인보고 더보기</a>
				</div>
				<div class="search_result">
					<h2>온나라(10)</h2>
					<ul class="search_result_list">
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="엑셀 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
								<dd class="date">보고일 : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="엑셀 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
								<dd class="date">보고일 : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="엑셀 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
								<dd class="date">보고일 : 2019-12-08</dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">온라인보고 더보기</a>
				</div>
			</div>
			<!-- //통합검색 -->

			<!-- 온라인보고 -->
			<div id="searchTab2" class="tabcont">
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">처음목록</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">이전</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">다음</span></a>
					<a href="#" class="btn_page_last"><span class="hide">마지막목록</span></a>
				</div>
			</div>
			<!-- //온라인보고 -->

			<!-- 온-나라 -->
			<div id="searchTab3" class="tabcont">
				<div class="subcont">
				<form>
				<fieldset>
					<legend>온-나라 상세검색양식</legend>
					<ul>
						<li>
							<span class="use_check"><input type="checkbox" id="subct1" /><label for="subct1">생산문서(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subct2" /><label for="subct2">대외접수문서(30)</label></span>
						</li>
					</ul>
				</fieldset>
				</form>
				</div>
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">보고일 : 2019-12-08</dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">처음목록</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">이전</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">다음</span></a>
					<a href="#" class="btn_page_last"><span class="hide">마지막목록</span></a>
				</div>
			</div>
			<!-- //온-나라 -->

			<!-- 과제·계획 -->
			<div id="searchTab4" class="tabcont">
				<div class="subcont">
				<form>
				<fieldset>
					<legend>과제·계획 상세검색양식</legend>
					<ul>
						<li>
							<span class="use_check"><input type="checkbox" id="subcb1" /><label for="subcb1">시도정과제(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb2" /><label for="subcb2">과제관리(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb3" /><label for="subcb3">지시사항(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb4" /><label for="subcb4">중장기과제(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb5" /><label for="subcb5">주요지표(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb6" /><label for="subcb6">업무계획(30)</label></span>
						</li>
					</ul>
				</fieldset>
				</form>
				</div>
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">지시일 : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="date">지시일 : 2019-12-08</dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">처음목록</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">이전</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">다음</span></a>
					<a href="#" class="btn_page_last"><span class="hide">마지막목록</span></a>
				</div>
			</div>
			<!-- //온-나라 -->

			<!-- 과제·계획 -->
			<div id="searchTab4" class="tabcont">
				<div class="subcont">
				<form>
				<fieldset>
					<legend>과제·계획 상세검색양식</legend>
					<ul>
						<li>
							<span class="use_check"><input type="checkbox" id="subcb1" /><label for="subcb1">시도정과제(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb2" /><label for="subcb2">과제관리(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb3" /><label for="subcb3">지시사항(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb4" /><label for="subcb4">중장기과제(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb5" /><label for="subcb5">주요지표(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb6" /><label for="subcb6">업무계획(30)</label></span>
						</li>
					</ul>
				</fieldset>
				</form>
				</div>
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
							<dd class="more"><a href="#" class="btnmore">더보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/mages/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">처음목록</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">이전</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">다음</span></a>
					<a href="#" class="btn_page_last"><span class="hide">마지막목록</span></a>
				</div>
			</div>
			<!-- //과제·계획 -->

			<!-- 일정·회의 -->
			<div id="searchTab5" class="tabcont">
				<div class="subcont">
				<form>
				<fieldset>
					<legend>일정·회의 상세검색양식</legend>
					<ul>
						<li>
							<span class="use_check"><input type="checkbox" id="subcc1" /><label for="subcc1">간부일정(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcc2" /><label for="subcc2">말과글(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcc3" /><label for="subcc3">회의관리(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcc4" /><label for="subcc4">행사관리(30)</label></span>
						</li>
					</ul>
				</fieldset>
				</form>
				</div>
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">간부명 : 도지사 | 일시 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">간부명 : 도지사 | 일시 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">간부명 : 도지사 | 일시 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">간부명 : 도지사 | 일시 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">주재자 : 김영0 | 회의일시 :  2019-11-28 12:00 ~ 13:00</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">처음목록</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">이전</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">다음</span></a>
					<a href="#" class="btn_page_last"><span class="hide">마지막목록</span></a>
				</div>
			</div>
			<!-- //과제·계획 -->

			<!-- 기타정보 -->
			<div id="searchTab6" class="tabcont">
				<div class="subcont">
				<form>
				<fieldset>
					<legend>기타정보 상세검색양식</legend>
					<ul>
						<li>
							<span class="use_check"><input type="checkbox" id="subcd1" /><label for="subcd1">정보의제(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcd2" /><label for="subcd2">직무편람(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcd3" /><label for="subcd3">건의사항(30)</label></span>
						</li>
					</ul>
				</fieldset>
				</form>
				</div>
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">처음목록</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">이전</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">다음</span></a>
					<a href="#" class="btn_page_last"><span class="hide">마지막목록</span></a>
				</div>
			</div>
			<!-- //기타정보 -->

			<!-- 게시판 -->
			<div id="searchTab7" class="tabcont">
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
							<dd class="date">등록일 : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a><a href="#" class="btn btn_preview">미리보기</a></dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">처음목록</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">이전</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">다음</span></a>
					<a href="#" class="btn_page_last"><span class="hide">마지막목록</span></a>
				</div>
			</div>
			<!-- //게시판 -->

			<!-- 기록관 -->
			<div id="searchTab8" class="tabcont">
				<div class="search_result">
					<h2>기록물 &gt; 철(10)</h2>
					<ul class="search_result_list2">
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">기록물 &gt; 철 더보기</a>
				</div>

				<div class="search_result">
					<h2>기록물 &gt; 건(10)</h2>
					<ul class="search_result_list2">
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">기록물 &gt; 건 더보기</a>
				</div>
				<div class="search_result">
					<h2>기록물 &gt; 전자문서(10)</h2>
					<ul class="search_result_list">
						<li>
							<dl>
								<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
								<dd class="desc">...여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장... 13:30-15:30 창원청사  13:30-15:30 창원청사  13:30-15:30 창원청사 </dd>
								<dd class="date">등록일 : 2019-11-25</dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="한글 파일" class="icon_file"> 1. 업무관리시스템 교육 세부일정(1).xlsx</a></dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">기록물 &gt; 전자문서 더보기</a>
				</div>
			</div>
			<!--//기록관 -->

			<!-- 이호조 -->
			<div id="searchTab9" class="tabcont">
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="descList">
							<ul>
								<li>* 예산현액(총계) : 49,066,000(원) * 예산현액(국비) : 0(원) * 예산현액(도비) : 49,066,000(원)</li>
								<li>* 예산현액(편성액) : 49,066,000(원) * 예산현액(이월액) : 0(원) * 예산현액(수입대체경비) : 0(원) * 지출액 : 43,494,000(원)</li>
							</ul>
							</dd>
							<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="descList">
							<ul>
								<li>* 예산현액(총계) : 49,066,000(원) * 예산현액(국비) : 0(원) * 예산현액(도비) : 49,066,000(원)</li>
								<li>* 예산현액(편성액) : 49,066,000(원) * 예산현액(이월액) : 0(원) * 예산현액(수입대체경비) : 0(원) * 지출액 : 43,494,000(원)</li>
							</ul>
							</dd>
							<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="descList">
							<ul>
								<li>* 예산현액(총계) : 49,066,000(원) * 예산현액(국비) : 0(원) * 예산현액(도비) : 49,066,000(원)</li>
								<li>* 예산현액(편성액) : 49,066,000(원) * 예산현액(이월액) : 0(원) * 예산현액(수입대체경비) : 0(원) * 지출액 : 43,494,000(원)</li>
							</ul>
							</dd>
							<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="descList">
							<ul>
								<li>* 예산현액(총계) : 49,066,000(원) * 예산현액(국비) : 0(원) * 예산현액(도비) : 49,066,000(원)</li>
								<li>* 예산현액(편성액) : 49,066,000(원) * 예산현액(이월액) : 0(원) * 예산현액(수입대체경비) : 0(원) * 지출액 : 43,494,000(원)</li>
							</ul>
							</dd>
							<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="descList">
							<ul>
								<li>* 예산현액(총계) : 49,066,000(원) * 예산현액(국비) : 0(원) * 예산현액(도비) : 49,066,000(원)</li>
								<li>* 예산현액(편성액) : 49,066,000(원) * 예산현액(이월액) : 0(원) * 예산현액(수입대체경비) : 0(원) * 지출액 : 43,494,000(원)</li>
							</ul>
							</dd>
							<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">일하는 방식 개선을 위한 업무관리시스템 활용교육계획 안내</a></dt>
							<dd class="descList">
							<ul>
								<li>* 예산현액(총계) : 49,066,000(원) * 예산현액(국비) : 0(원) * 예산현액(도비) : 49,066,000(원)</li>
								<li>* 예산현액(편성액) : 49,066,000(원) * 예산현액(이월액) : 0(원) * 예산현액(수입대체경비) : 0(원) * 지출액 : 43,494,000(원)</li>
							</ul>
							</dd>
							<dd class="date">일반회계 | 운영지원과 | 자체 | 2019-11-15</dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">처음목록</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">이전</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">다음</span></a>
					<a href="#" class="btn_page_last"><span class="hide">마지막목록</span></a>
				</div>
			</div>
			<!--//이호조 -->

			<div class="rightdv">
				<div class="dvw">
				
					<div class="section first">
						<div class="tit"><span>내가 찾은</span> 검색어</div>
						<ol>
							<li><span>1</span>코로나19</li>
							<li><span>2</span>비대면검사</li>
							<li><span>3</span>지원금</li>
						</ol>
					</div>

					<div class="section">
						<div class="tit"><span>내가 찾은</span> 검색어</div>
						<ol class="sec">
							<li><span class="chk">1</span>코로나19</li>
							<li><span class="chk">2</span>비대면검사</li>
							<li><span class="chk">3</span>지원금</li>
							<li><span>4</span>지원금</li>
							<li><span>5</span>지원금</li>
							<li><span>6</span>지원금</li>
							<li><span>7</span>지원금</li>
							<li><span>8</span>지원금</li>
							<li><span>9</span>지원금</li>
							<li><span>10</span>지원금</li>
						</ol>
					</div>
				
				</div>
			</div>

		</div>

		<div id="footer">
			Copyright &copy; 2019 Gyeongsangnamdo. All rights reseved.
		</div>

		<div class="previewpop">
			<div class="head"><h3>첨부파일 미리보기</h3></div>
			<div class="cont">
			여성가족정책관 저출생고령사회정책관 도정혁신추진단 기획조정실 정책기획관 대외협력담당관 예산담당관 법무담당관 문화관광체육국 문화예술과 12월 3일(화) 13:30-15:30 창원청사 전산교육장
			</div>
			<a href="#" class="popclose">팝업닫기</a>
		</div>

		<div class="back"></div>
	</div>
</body>
</html>