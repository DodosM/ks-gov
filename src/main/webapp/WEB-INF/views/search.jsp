<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- apit (qeury-{brbrbr}.jsp를 가져온다 -->
<c:forTokens var="target" items="sample,board" delims=",">
    <c:if test="${params['category'] == target || params['category'] == 'total'}"> <!-- searchController에서 model로 받아온 params변수의 vo에 category는 total로 박혀있다 -->
        <jsp:include page="/WEB-INF/views/query/query-${target}.jsp"/>
    </c:if>
</c:forTokens>

<!DOCTYPE html>
<html lang="ko">
<!--<![endif]-->
<head>
	<title>page test mirae</title> <!-- 브라우저 탭 부분에 뜬다 -->
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
	<!-- script태그를 마무리 할 때 <script /> 안됨 -->
	<script src="resources/js/lib/jquery-ui.js"></script>
	<script src="resources/js/lib/icheck.min.js"></script>
    <script src="resources/js/common.js"></script>

    <!-- ======konan js====== -->
    <script src="resources/js/konan/search.js"></script>
    
    <!-- ==================== -->
    
</head>

<body>
	<!-- 숨김값으로 폼 제출을 한다 (검색을 위한 form 값) -->
	<form id="historyForm" name="historyForm" action="searchpo.do" method="post">
        <input type="hidden" id="category" name="category" value="<c:out value="${params.category}" />">
        <!-- <c:out value="${params.category}" />" 
        		- 해석 : param은 컨트롤러에서 @ModelAttribute("param")으로 받을 값으로 씀
        		- 	  : 즉, SearchParamVo.category로 vo객체를 파라미터로 가져다 쓸 수 있게 됨
        -->
        <input type="hidden" id="kwd" name="kwd" value="<c:out value="${params.kwd}" />">
        <input type="hidden" id="preKwds" name="preKwds" value="<c:out value="${params.preKwds}" />">
        <input type="hidden" id="date" name="date" value="<c:out value="${params.date}" />">
        <input type="hidden" id="startDate" name="startDate" value="<c:out value="${params.startDate}" />">
        <input type="hidden" id="endDate" name="endDate" value="<c:out value="${params.endDate}" />">
        <input type="hidden" id="page" name="page" value="<c:out value="${params.page}" />">
         <input type="hidden" id="pageSize" name="pageSize" value="<c:out value="${params.pageSize}" />">
        <input type="hidden" id="offset" name="offset" value="<c:out value="${params.offset}" />">
        <input type="hidden" id="resrch" name="resrch" value="<c:out value="${params.resrch}" />">
        <input type="hidden" id="sort" name="sort" value="<c:out value="${params.sort}" />">
        <input type="hidden" id="sortNm" name="sortNm" value="<c:out value="${params.sortNm}" />">
        <input type="hidden" id="fields" name="fields" value="<c:out value="${params.fields}" />">
        <input type="hidden" id="detail" name="detail" value="<c:out value="${params.detail}" />">
        <input type="hidden" id="basickwd" name="basickwd" value="<c:out value="${params.basickwd}" />">
        <input type="hidden" id="exactkwd" name="exactkwd" value="<c:out value="${params.exactkwd}" />">
        <input type="hidden" id="inkwd" name="inkwd" value="<c:out value="${params.inkwd}" />">
        <input type="hidden" id="notkwd" name="notkwd" value="<c:out value="${params.notkwd}" />">
        <input type="hidden" id="autospc" name="autospc" value="">
        <input type="hidden" id="tr_code" name="tr_code" value="<c:out value="${params.tr_code}" />">
        <input type="hidden" id="srch_opt" name="srch_opt" value="<c:out value="${params.srch_opt}" />">
    </form>


	<div id="wrap" class="user_version"> <!-- body의 전체 'wrap' -->
		<p id="skipnavi"><a href="#contents">본문 바로가기</a></p> <!-- 화면단에 보이지 않음 -->
		
		<header id="header"> <!-- header&상세보기 검색페이지 -->
		<jsp:include page="/WEB-INF/views/include/topSearch.jsp" />
		</header>
	
		<div id="container">	
			<div class="searchRgt">
			검색어 <strong><c:out value="${params.kwd}" /></strong>에 대한 검색 결과입니다.  <em>( 11,649건 )</em>
			</div>

			<div class="tab-ui">
			<ul>
				<li><a href="#searchTab1" class="on">통합검색</a></li>
				<li><a href="#searchTab2">온라인보고<span>(10)</span></a></li>
				<li><a href="#searchTab3">온-나라<span>(10)</span></a></li>
				<li><a href="#searchTab4">과제·계획<span>(10)</span></a></li>
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
			<!-- //과제·계획 -->

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