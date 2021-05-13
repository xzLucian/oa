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
			<strong>你现在所在的位置是:</strong> <span>职位管理页面 >> 职位信息查看页面</span>
		</div>
		<div class="providerView">
			<p>
				<strong>角色编号：</strong><span>${r.roleId}</span>
			</p>
			<p>
				<strong>角色名称：</strong><span>${r.roleName}</span>
			</p>
			<p>
				<strong>角色状态：</strong> <span>${r.roleState}</span>
			</p>
			<p>
				<strong>创建日期：</strong><span>${r.roleCreatetime}</span>
			</p>
			<p>
				<strong>创建人：</strong><span>${r.roleEmpId}</span>
			</p>
			<p>
				<strong>角色描述：</strong><span>${r.roleDesc}</span>
			</p>
			<p>
				<strong>部门名：</strong><span>${r.roleDepartmentId}</span>
			</p>
			<div class="providerAddBtn">
				<input type="button" id="back" name="back" value="返回" onclick="javascript:history.go(-1)" />
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="calendar/WdatePicker.js"></script>
	<script type="text/javascript" src="js/userlist.js"></script>
</body>
</html>