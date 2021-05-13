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
<!--主体内容-->
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>角色管理 >> 角色添加页面</span>
	</div>
	<div class="providerAdd">
		<form id="moduleForm" name="moduleForm" method="post" action="/sys/role/addRole">
			<input type="hidden" name="method" value="add">
			<div>
				<label for="roleId">角色编号：</label>
				<input type="text" name="roleId" id="roleId" value=""> <font color="red"></font>
			</div>
			<div>
				<label for="roleName">角色名称：</label>
				<input type="text" name="roleName" id="roleName" value="">
				<font color="red"></font>
			</div>
			<div>
				<label>角色状态：</label>
				<select name="roleState" id="roleState">
					<option value="启用" selected="selected">启用</option>
					<option value="禁用">禁用</option>
				</select>
			</div>
			<div>
				<label for="roleCreatetime">创建日期：</label>
				<input type="text" Class="Wdate" id="roleCreatetime" name="roleCreatetime" readonly="readonly" onclick="WdatePicker();"> <font color="red"></font>
			</div>
			<div>
				<label for="roleEmpId">职位创建人：</label>
				<input type="text" name="roleEmpId" id="roleEmpId" value=""> <font color="red"></font>
			</div>
			<div>
				<label for="roleDesc">部门描述：</label>
				<input type="text" name="roleDesc" id="roleDesc" value=""> <font color="red"></font>
			</div>
			<div>
				<label for="roleDepartmentId">部门名：</label>
				<input type="text" name="roleDepartmentId" id="roleDepartmentId" value=""> <font color="red"></font>
			</div>
			<div class="providerAddBtn">
				<input type="submit" name="add" id="add" value="保存"> <input
					type="button" id="back" name="back" value="返回"
					onclick="history.back();">
			</div>
		</form>
	</div>
</div>


<script type="text/javascript" src="<%=path%>js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=path%>js/common.js"></script>
<script type="text/javascript" src="<%=path%>calendar/WdatePicker.js"></script>
</body>
</html>
