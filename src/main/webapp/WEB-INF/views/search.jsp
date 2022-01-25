<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<!--<![endif]-->
<head>
	<title>page test mirae</title> <!-- ������ �� �κп� ��� -->
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" /> <!-- �� ���������� ����ڰ� �� �� �ִ� ������ ����Ʈ�� ����. ���������� �ش� �������� ������ ���� ���� ��� ������ ���� ���� ��ħ�� ����. -->
	<meta name="format-detection" content="telephone=no" /> <!-- �˻������� ���� �� �������� ���õ� �޸��� ������ Ű���� ����� ����� -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="���� ���� �˻� �ý���" /> <!-- description : ���������� ���� ������ �����. �˻������� �˻� ����� �̷��� ������ �Բ� ǥ���� �� ���� -->
	<link rel="stylesheet" href="resources/css/common.css" /> <!-- stylesheet�� ����� �ܺ� ���ҽ��� �ҷ��� --> <!-- link �±��� rel�Ӽ��� ���繮���� �ܺ� ���ҽ� ������ ���� ���踦 ���. rel�Ӽ��� <link> ��ҿ� �ݵ�� ��õǾ�� �ϴ� �ʼ� �Ӽ� -->
	<!-- /resources�� �ȵǴ� ������ -> servlet-context.xml���� resources mapping�� ������ �޾Ƽ� -->
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
	<!-- ���谪���� �� ������ �Ѵ� -->
	<form id="historyForm" name="historyForm" action="searchpo.do" method="post">
        <input type="hidden" id="category" name="category" value="<c:out value="${params.category}" />">
        <!-- <c:out value="${params.category}" />" 
        		- �ؼ� : param�� ��Ʈ�ѷ����� @ModelAttribute("param")���� ���� ������ ��
        		- 	  : ��, SearchParamVo.category�� vo��ü�� �Ķ���ͷ� ������ �� �� �ְ� ��
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

	<div id="wrap" class="user_version"> <!-- body�� ��ü 'div id=wrap' -->
		<p id="skipnavi"><a href="#contents">���� �ٷΰ���</a></p>
		<div id="header_wrap">
			<div id="header">
				<h1><a href="search.html"><img src="resources/images/logo_n.png" alt="��󳲵�"></a></h1>
				<div class="search_wrap">
					<form>
	                    <fieldset>
	                        <legend>���հ˻�</legend>
	                        <div class="search_area">
								<div class="selectStyle">
									<span class="txt">���հ˻�</span>
									<select title="�˻�Ÿ�� ����">
										<option value="type1">���հ˻�</option>
									</select>
								</div>
								<input type="search" title="�˻��� �Է�" class="inptxt" />
								<button type="submit" class="btn_search"><span class="hide">�˻�</span></button>
							</div>
							<div class="srhchk"><input type="checkbox" id="srhchk" name=""><label for="srhchk">����� ��˻�</label></div>
	                    </fieldset>
	                </form>
				</div>

				<div class="laytit"><a href="#">�󼼰˻�</a></div>

			</div>
		</div>

		<div class="search_detail">
			<form>
			<fieldset>
				<legend>�󼼰˻����</legend>

				<ul>
					<li><strong class="tit_check"><a href="#">����</a></strong>
						<div class="sub">
						<ul>
							<li><a href="#">��Ȯ����</a></li>
							<li><a href="#">�ֽż�</a></li>
						</ul>
						</div>
					</li>
					<li><strong class="tit_check"><a href="#">�Ⱓ</a></strong>
						<div class="sub sub1">
						<ul>
							<li><a href="#">�ֱ�1��</a></li>
							<li><a href="#">�ֱ�1��</a></li>
							<li><a href="#">�ֱ�3��</a></li>
							<li><a href="#">�ֱ�1��</a></li>
							<li class="selectdv">
								<span class="select_date">�����Է�</span>
								<div><input type="text" class="datepicker" title="��¥ ����" /></div>
								<input type="text" class="datepicker" title="��¥ ����" />
								<div class="subBtn"><a href="#">�����ϱ�</a></div>
							</li>
						</ul>
						</div>
					</li>
					<li><strong class="tit_check"><a href="#">����</a></strong>
						<div class="sub">
						<ul>
							<li><a href="#">��ü</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">÷������</a></li>
						</ul>
						</div>
					</li>
					<li><strong class="tit_check"><a href="#">�󼼰˻�</a></strong>
						<div class="sub sub4">
							<div class="ipt_tp">
								<input name="dquery" type="text" class="subinput" value="" onkeypress="javascript:pressCheck((event),this);" placeholder="��󳲵� ���ο��ǡ� +�ݼ��� -���ڸ�">
							</div>
							<ul>
								<li>
									<label for="dtkeyword1">�⺻�˻���</label>
									<input type="text" id="dtkeyword1" name="" value="" title="�⺻�˻���">
								</li>
								<li>
									<label for="dtkeyword2">��Ȯ�� ��ġ�ϴ� �ܾ�/���� ("")</label>
									<input type="text" id="dtkeyword2" title="��ġ�˻�">
								</li>
								<li>
									<label for="dtkeyword3">�ݵ�� �����ϴ� �ܾ� (����)</label>
									<input type="text" id="dtkeyword3" value="" title="���԰˻�">
								</li>
								<li>
									<label for="dtkeyword4">�����ϴ� �ܾ� (!)</label>
									<input type="text" id="dtkeyword4" value="" title="���ܰ˻�">
								</li>
							</ul>
							<p class="srhnoti"> * ���� ���� �ܾ �Է��� ���� ��ǥ(,)�� �����ؼ� �Է��ϼ���.</p>
							<div class="dbtn">
								<a href="#" onclick="javascript:doSearch();return false;" class="srh">�˻�</a>
								<a href="#" class="close">�ݱ�</a>
								<a href="#" class="clear">�ʱ�ȭ</a>
							</div>
						</div>
					</li>
				</ul>
			</fieldset>
			</form>
		</div>

		<div id="container">
	
			<div class="searchRgt">
			�˻��� <strong>���ο���</strong>�� ���� �˻� ����Դϴ�.  <em>( 11,649�� )</em>
			</div>

			<div class="tab-ui">
			<ul>
				<li><a href="#searchTab1" class="on">���հ˻�</a></li>
				<li><a href="#searchTab2">�¶��κ���<span>(10)</span></a></li>
				<li><a href="#searchTab3">��-����<span>(10)</span></a></li>
				<li><a href="#searchTab4">��������ȹ<span>(10)</span></a></li>
			</ul>
			</div>

			<!-- ���հ˻� -->
			<div id="searchTab1" class="tabcont active">
				<div class="search_result">
					<h2>�¶��κ���(10)</h2>
					<ul class="search_result_list">
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_xls.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_xls.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_xls.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">�¶��κ��� ������</a>
				</div>
				<div class="search_result">
					<h2>�³���(10)</h2>
					<ul class="search_result_list">
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">�¶��κ��� ������</a>
				</div>
			</div>
			<!-- //���հ˻� -->

			<!-- �¶��κ��� -->
			<div id="searchTab2" class="tabcont">
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">ó�����</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">����</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">����</span></a>
					<a href="#" class="btn_page_last"><span class="hide">���������</span></a>
				</div>
			</div>
			<!-- //�¶��κ��� -->

			<!-- ��-���� -->
			<div id="searchTab3" class="tabcont">
				<div class="subcont">
				<form>
				<fieldset>
					<legend>��-���� �󼼰˻����</legend>
					<ul>
						<li>
							<span class="use_check"><input type="checkbox" id="subct1" /><label for="subct1">���깮��(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subct2" /><label for="subct2">�����������(30)</label></span>
						</li>
					</ul>
				</fieldset>
				</form>
				</div>
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">ó�����</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">����</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">����</span></a>
					<a href="#" class="btn_page_last"><span class="hide">���������</span></a>
				</div>
			</div>
			<!-- //��-���� -->

			<!-- ��������ȹ -->
			<div id="searchTab4" class="tabcont">
				<div class="subcont">
				<form>
				<fieldset>
					<legend>��������ȹ �󼼰˻����</legend>
					<ul>
						<li>
							<span class="use_check"><input type="checkbox" id="subcb1" /><label for="subcb1">�õ�������(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb2" /><label for="subcb2">��������(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb3" /><label for="subcb3">���û���(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb4" /><label for="subcb4">��������(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb5" /><label for="subcb5">�ֿ���ǥ(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcb6" /><label for="subcb6">������ȹ(30)</label></span>
						</li>
					</ul>
				</fieldset>
				</form>
				</div>
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="resources/images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
				</ul>
				<div class="paging">
					<a href="#" class="btn_page_first"><span class="hide">ó�����</span></a>
					<a href="#" class="btn_page_prev"><span class="hide">����</span></a>
					<span class="nums">
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_page_next"><span class="hide">����</span></a>
					<a href="#" class="btn_page_last"><span class="hide">���������</span></a>
				</div>
			</div>
			<!-- //��������ȹ -->

			<div class="rightdv">
				<div class="dvw">
				
					<div class="section first">
						<div class="tit"><span>���� ã��</span> �˻���</div>
						<ol>
							<li><span>1</span>�ڷγ�19</li>
							<li><span>2</span>����˻�</li>
							<li><span>3</span>������</li>
						</ol>
					</div>

					<div class="section">
						<div class="tit"><span>���� ã��</span> �˻���</div>
						<ol class="sec">
							<li><span class="chk">1</span>�ڷγ�19</li>
							<li><span class="chk">2</span>����˻�</li>
							<li><span class="chk">3</span>������</li>
							<li><span>4</span>������</li>
							<li><span>5</span>������</li>
							<li><span>6</span>������</li>
							<li><span>7</span>������</li>
							<li><span>8</span>������</li>
							<li><span>9</span>������</li>
							<li><span>10</span>������</li>
						</ol>
					</div>
				
				</div>
			</div>

		</div>

		<div id="footer">
			Copyright &copy; 2019 Gyeongsangnamdo. All rights reseved.
		</div>

		<div class="previewpop">
			<div class="head"><h3>÷������ �̸�����</h3></div>
			<div class="cont">
			����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����
			</div>
			<a href="#" class="popclose">�˾��ݱ�</a>
		</div>

		<div class="back"></div>
	</div>
</body>
</html>