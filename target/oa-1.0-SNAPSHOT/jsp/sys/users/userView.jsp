<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=path%>">
<title>OA日常办公管理系统</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/public.css" />
</head>
<body>
	<div class="right">
		<div class="location">
			<strong>你现在所在的位置是:</strong> <span>用户管理页面 >> 用户信息查看页面</span>
		</div>
		<div class="providerView">
			<p>
				<strong>编号：</strong><span>${emp.id }</span>
			</p>
			<p>
				<strong>员工编号：</strong><span>${emp.employeeId }</span>
			</p>
			<p>
				<strong>账户名：</strong> <span> ${emp.username } </span>
			</p>
			<p>
				<strong>密码：</strong><span>${emp.password }</span>
			</p>
			<p>
				<strong>角色编号：</strong><span>${emp.roleId }</span>
			</p>
			<p>
				<strong>员工名：</strong><span>${emp.employeeName }</span>
			</p>
			<p>
				<strong>性别：</strong><span>${emp.sex }</span>
			</p>
			<p>
				<strong>出生日期：</strong><span>${emp.birthday }</span>
			</p>
			<p>
				<strong>政治面貌：</strong><span>${emp.politicsStatas }</span>
			</p>
			<p>
				<strong>婚姻状态：</strong><span>${emp.marriage }</span>
			</p>
			<p>
				<strong>地址：</strong><span>${emp.address }</span>
			</p>
			<p>
				<strong>邮箱：</strong><span>${emp.email }</span>
			</p>
			<p>
				<strong>联系方式：</strong><span>${emp.phone }</span>
			</p>
			<p>
				<strong>身份证号：</strong><span>${emp.idNumber }</span>
			</p>
			<p>
				<strong>银行卡号：</strong><span>${emp.bankcard }</span>
			</p>
			<div class="providerAddBtn">
				<input type="button" id="back" name="back" value="返回" onclick="javascript:history.go(-1)">
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="calendar/WdatePicker.js"></script>
	<script type="text/javascript" src="js/userlist.js"></script>
	
</body>
</html>