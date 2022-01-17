<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<!--<![endif]-->
<head>
	<title>page test mirae</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta name="format-detection" content="telephone=no" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="���� ���� �˻� �ý���" />
	<link rel="stylesheet" href="css/common.css" />
	<script src="js/lib/jquery-1.8.3.min.js"></script>
	<!--[if lt IE 9]>
		<script src="js/lib/html5.js"></script>
		<script src="js/lib/respond.min.js"></script>
	<![endif]-->
	<script src="js/lib/jquery-ui.js"></script>
	<script src="js/lib/icheck.min.js"></script>
    <script src="js/common.js"></script>
</head>
<body>
	<div id="wrap" class="user_version">
		<p id="skipnavi"><a href="#contents">���� �ٷΰ���</a></p>
		<div id="header_wrap">
			<div id="header">
				<!-- ����
				<div id="util_area">
					<ul class="util_list">
						<li class="user"><strong>ȫ�浿</strong><span>��</span></li>
						<li class="logout"><a href="#">�α׾ƿ�</a></li>
						<li class="config"><a href="#">���μ���</a></li>
						<li class="btn_link none"><a href="#">������</a></li>
						<li class="btn_link"><a href="#">�μ�������</a></li>
						<li class="btn_link"><a href="#">����������</a></li>
						<li class="btn_link"><a href="#">��������</a></li>
					</ul>
				</div>
				-->

				<h1><a href="search.html"><img src="images/logo_n.png" alt="��󳲵�"></a></h1>
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
				<li><a href="#searchTab5">������ȸ��<span>(10)</span></a></li>
				<li><a href="#searchTab6">��Ÿ����<span>(10)</span></a></li>
				<li><a href="#searchTab7">�Խ���<span>(10)</span></a></li>	
				<li><a href="#searchTab8">��ϰ�<span>(10)</span></a></li>
				<li><a href="#searchTab9">��ȣ��<span>(10)</span></a></li>
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
								<dd><a href="#" class="filename"><img src="images/icon_xls.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="images/icon_xls.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="images/icon_xls.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
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
								<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
								<dd class="date">������ : 2019-12-08</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="���� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
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
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
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
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
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
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="date">������ : 2019-12-08</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
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
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
							<dd class="more"><a href="#" class="btnmore">������</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
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

			<!-- ������ȸ�� -->
			<div id="searchTab5" class="tabcont">
				<div class="subcont">
				<form>
				<fieldset>
					<legend>������ȸ�� �󼼰˻����</legend>
					<ul>
						<li>
							<span class="use_check"><input type="checkbox" id="subcc1" /><label for="subcc1">��������(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcc2" /><label for="subcc2">������(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcc3" /><label for="subcc3">ȸ�ǰ���(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcc4" /><label for="subcc4">������(30)</label></span>
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
							<dd class="date">���θ� : ������ | �Ͻ� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">���θ� : ������ | �Ͻ� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">���θ� : ������ | �Ͻ� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">���θ� : ������ | �Ͻ� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">������ : �迵0 | ȸ���Ͻ� :  2019-11-28 12:00 ~ 13:00</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
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

			<!-- ��Ÿ���� -->
			<div id="searchTab6" class="tabcont">
				<div class="subcont">
				<form>
				<fieldset>
					<legend>��Ÿ���� �󼼰˻����</legend>
					<ul>
						<li>
							<span class="use_check"><input type="checkbox" id="subcd1" /><label for="subcd1">��������(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcd2" /><label for="subcd2">�������(30)</label></span>
							<span class="use_check"><input type="checkbox" id="subcd3" /><label for="subcd3">���ǻ���(30)</label></span>
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
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
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
			<!-- //��Ÿ���� -->

			<!-- �Խ��� -->
			<div id="searchTab7" class="tabcont">
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
							<dd class="date">����� : 2019-11-25</dd>
							<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a><a href="#" class="btn btn_preview">�̸�����</a></dd>
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
			<!-- //�Խ��� -->

			<!-- ��ϰ� -->
			<div id="searchTab8" class="tabcont">
				<div class="search_result">
					<h2>��Ϲ� &gt; ö(10)</h2>
					<ul class="search_result_list2">
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">��Ϲ� &gt; ö ������</a>
				</div>

				<div class="search_result">
					<h2>��Ϲ� &gt; ��(10)</h2>
					<ul class="search_result_list2">
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">��Ϲ� &gt; �� ������</a>
				</div>
				<div class="search_result">
					<h2>��Ϲ� &gt; ���ڹ���(10)</h2>
					<ul class="search_result_list">
						<li>
							<dl>
								<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
								<dd class="desc">...����������å�� �������ɻ�ȸ��å�� �������������� ��ȹ������ ��å��ȹ�� ������´��� ������� �������� ��ȭ����ü���� ��ȭ������ 12�� 3��(ȭ) 13:30-15:30 â��û�� ���걳����... 13:30-15:30 â��û��  13:30-15:30 â��û��  13:30-15:30 â��û�� </dd>
								<dd class="date">����� : 2019-11-25</dd>
								<dd><a href="#" class="filename"><img src="images/icon_han.png" alt="�ѱ� ����" class="icon_file"> 1. ���������ý��� ���� ��������(1).xlsx</a></dd>
							</dl>
						</li>
					</ul>
					<a href="#" class="btn_more">��Ϲ� &gt; ���ڹ��� ������</a>
				</div>
			</div>
			<!--//��ϰ� -->

			<!-- ��ȣ�� -->
			<div id="searchTab9" class="tabcont">
				<ul class="search_result_list">
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="descList">
							<ul>
								<li>* ��������(�Ѱ�) : 49,066,000(��) * ��������(����) : 0(��) * ��������(����) : 49,066,000(��)</li>
								<li>* ��������(����) : 49,066,000(��) * ��������(�̿���) : 0(��) * ��������(���Դ�ü���) : 0(��) * ����� : 43,494,000(��)</li>
							</ul>
							</dd>
							<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="descList">
							<ul>
								<li>* ��������(�Ѱ�) : 49,066,000(��) * ��������(����) : 0(��) * ��������(����) : 49,066,000(��)</li>
								<li>* ��������(����) : 49,066,000(��) * ��������(�̿���) : 0(��) * ��������(���Դ�ü���) : 0(��) * ����� : 43,494,000(��)</li>
							</ul>
							</dd>
							<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="descList">
							<ul>
								<li>* ��������(�Ѱ�) : 49,066,000(��) * ��������(����) : 0(��) * ��������(����) : 49,066,000(��)</li>
								<li>* ��������(����) : 49,066,000(��) * ��������(�̿���) : 0(��) * ��������(���Դ�ü���) : 0(��) * ����� : 43,494,000(��)</li>
							</ul>
							</dd>
							<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="descList">
							<ul>
								<li>* ��������(�Ѱ�) : 49,066,000(��) * ��������(����) : 0(��) * ��������(����) : 49,066,000(��)</li>
								<li>* ��������(����) : 49,066,000(��) * ��������(�̿���) : 0(��) * ��������(���Դ�ü���) : 0(��) * ����� : 43,494,000(��)</li>
							</ul>
							</dd>
							<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="descList">
							<ul>
								<li>* ��������(�Ѱ�) : 49,066,000(��) * ��������(����) : 0(��) * ��������(����) : 49,066,000(��)</li>
								<li>* ��������(����) : 49,066,000(��) * ��������(�̿���) : 0(��) * ��������(���Դ�ü���) : 0(��) * ����� : 43,494,000(��)</li>
							</ul>
							</dd>
							<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a href="#">���ϴ� ��� ������ ���� ���������ý��� Ȱ�뱳����ȹ �ȳ�</a></dt>
							<dd class="descList">
							<ul>
								<li>* ��������(�Ѱ�) : 49,066,000(��) * ��������(����) : 0(��) * ��������(����) : 49,066,000(��)</li>
								<li>* ��������(����) : 49,066,000(��) * ��������(�̿���) : 0(��) * ��������(���Դ�ü���) : 0(��) * ����� : 43,494,000(��)</li>
							</ul>
							</dd>
							<dd class="date">�Ϲ�ȸ�� | ������� | ��ü | 2019-11-15</dd>
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
			<!--//��ȣ�� -->

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