<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<header class="publicHeader">
	<h1>OA日常办公管理系统</h1>
	<div class="publicHeaderR">
		<p>
			<span>下午好！</span><span style="color: #fff21b"> ${emps.username}</span> , 欢迎你！
		</p>
		<a href="sys/users/logout">退出</a>
	</div>
</header>
<!--时间-->
<section class="publicTime">
	<span id="time">2021年1月1日 11:11 星期一</span> <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE11+）</a>
</section>
<script type="text/javascript" src="<%=path %>js/time.js"></script>