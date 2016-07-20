<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<!-- The Main CSS File -->
<link rel="stylesheet" href="./static/CSS/style.css">
<script src="./static/Javascript/jquery.min.js"></script>
<script src="./static/Javascript/index.js"></script>
</head>
<body onload="AllKeyWords()">
	<header>
		<div class="logo">
			<a href="index.jsp" Title="autoTest框架"> <img
				src="./static/Images/Testlogo.png" alt="Testlogo">
			</a>
		</div>
	</header>

	<aside class="sidebar">
		<ul class="tab_nav">
			<li class="active_tab i_32_dashboard"><a href="index.jsp"
				title="General Info"> <span class="tab_label">Home Page</span> <span
					class="tab_info">Frame Info</span>
			</a></li>
			<li class="i_32_charts"><a href="./static/UI.jsp"
				title="Visual Data"> <span class="tab_label">UI自动化</span> <span
					class="tab_info">Edit and Run</span>
			</a></li>
			<li class="i_32_inbox"><a href="./static/inbox.jsp"
				title="Your Messages"> <span class="tab_label">用例生成</span> <span
					class="tab_info">Interface Case</span>
			</a></li>
			<li class="i_32_ui"><a href="./static/Interface.jsp"
				title="Kit elements"> <span class="tab_label">接口测试</span> <span
					class="tab_info">Interface Run</span>
			</a></li>
			<li class="i_32_tables"><a href="./static/tables.jsp"
				title="Some Rows"> <span class="tab_label">调试工具</span> <span
					class="tab_info">Res Table</span>
			</a></li>
		</ul>
	</aside>
	<div class="contents2">
		<div class="grid_wrapper">
			<div class="g_6 contents_header">
				<h3 class="i_16_message tab_label">KeyWords</h3>
				<h3 id="Msg"
					style="position: relative; top: -45px; float: right; color: red;"></h3>
				<div>
					<span class="label">Your KeyWord Discribe And Use Demo</span>
				</div>
			</div>

			<div id="EditBox1">
				<div class="row1">
					添加关键字<a href="javascript:void(0)" title="关闭窗口" class="close_btn"
						id="closeBtn">X</a>
				</div>
				<form id="EditForm1" onsubmit="AjaxSubmit()" method="post">

					<div class="p_cli1">
						Id:<input id="id" name="id" type="text" value="NULL"
							class="c_input"
							onfocus='if(this.value=="NULL" || this.value=="undefined"){this.value=""}'
							onblur='if(this.value=="" || this.value=="undefined"){this.value="NULL"}'
							readonly />&nbsp type:<input id="type" name="type" type="text"
							value="NULL" class="c_input"
							onfocus='if(this.value=="NULL" || this.value=="undefined"){this.value=""}'
							onblur='if(this.value=="" || this.value=="undefined"){this.value="NULL"}' />&nbsp
						keyName:<input id="keyName" name="keyName" type="text"
							value="NULL" class="c_input"
							onfocus='if(this.value=="NULL" || this.value=="undefined"){this.value=""}'
							onblur='if(this.value=="" || this.value=="undefined"){this.value="NULL"}' />&nbsp
						describes:<input id="describes" name="describes" type="text"
							value="NULL" class="c_input"
							onfocus='if(this.value=="NULL" || this.value=="undefined"){this.value=""}'
							onblur='if(this.value=="" || this.value=="undefined"){this.value="NULL"}' />
						useCase:<input id="useCase" name="useCase" type="text"
							value="NULL" class="c_input"
							onfocus='if(this.value=="NULL" || this.value=="undefined"){this.value=""}'
							onblur='if(this.value=="" || this.value=="undefined"){this.value="NULL"}' />
					</div>
				</form>
				<div class="row2">
					<a
						href="javascript:AjaxSubmit(); javascript:document:closeBtn.click();"
						id="loginbtn">保存</a> <a href="#" id="Cancelbtn"
						onclick='document.getElementById("closeBtn").click();'>取消</a>
				</div>
			</div>
			
			<div id="msgBox">
					<div class="row1">
						异常信息！<a href="javascript:void(0)" title="关闭窗口" class="close_btn_msg"
							id="closeBtn_msg">X</a>
					</div>
					<form id="msgForm" name="msgForm" action="" method="post">
						<h3 style="text-align: center;">
							<br>
						  <font id="msgText" color="red">
							  服务器忙...
 						</font></h3>
					</form>
				</div>
			
			<div id="EditBox2">
				<div class="row1">
					关键字说明<a href="javascript:void(0)" title="关闭窗口" class="close_btn"
						id="closeBtn">X</a>
				</div>
				<form id="EditForm2" onsubmit="">

					<div class="p_cli1">
						<h3 id="keyName2" style="position: absolute; top: -50px;">关键字</h3>
						<textarea id="Describe2" style="width: 650px;height: 60px; position: relative; top: 5px;">关键字描述</textarea>
						<textarea id="useCase2" style="width: 650px; height: 100px; position: relative; top: 20px;">关键字用法</textarea>
					</div>
				</form>
			</div>
			
			<div id="delBox">
				<div class="row1">
					删除关键字<a href="javascript:void(0)" title="关闭窗口" class="close_btn"
						id="closeBtn">X</a>
				</div>
				<form id="delForm" name="delForm" action="" method="post">
					<h3 style="text-align: center;">
						<br> <font id="delText" color="red">
							删除操作是不可逆的，你确定删除这个关键字？ </font>
					</h3>
				</form>
				<div class="row2">
					<a href="javascript:document:closeBtn.click();" id="loginbtn"
						onclick='delKey(document.getElementById("delForm").name)'>删除</a> <a
						href="#" id="Cancelbtn"
						onclick='document.getElementById("closeBtn").click();'>取消</a>
				</div>
			</div>

			<div class="g_t">
				<form id="CheckForm" method="get">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_charts">Options:&nbsp&nbsp</h4>
						<img title="添加用例场景" src="./static/Images/Icons/16/add.png"
							style="position: relative; top: 2px; left: 20px; cursor: pointer;"
							onclick='pops("pop1");GetKey("idadd",this.name);' /> <input
							id="searchText" type="text" value="Search" class="c_input_Search"
							onkeydown='if(event.keyCode==13){AllKeyWords()}'
							onfocus='if(this.value=="Search"){this.value=""}'
							onblur='if(this.value==""){this.value="Search"}' /> <img
							id="searchImg" title="搜索 "
							src="./static/Images/Icons/16/Search.png"
							style="position: relative; top: 11px; left: 125px; cursor: pointer; float: right;"
							onclick='AllKeyWords()' />
					</div>
					<section id="conter">
						<section id="help-left">
							<a href="#" id="pop1"> </a> <a href="#" id="del"> </a> <a href="#" id="pop2"> </a>
							<a href="#" id="pop_msg"> </a>
							<div id="tables"
								style="width: 100%; position: absolute; overflow: auto; height: 98%;"></div>
						</section>

						<section id="help-right"></section>

					</section>

				</form>
			</div>
		</div>
	</div>

</body>
</html>