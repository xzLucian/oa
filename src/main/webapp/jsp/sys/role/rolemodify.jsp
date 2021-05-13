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
			<strong>你现在所在的位置是:</strong> <span>角色管理 >> 角色修改页面</span>
		</div>
		<div class="providerAdd">
			<form id="roleForm" name="roleForm" method="post" action="/sys/role/doUpdateRole">
				<input type="hidden" name="method" value="modifyexe">
				<input type="hidden" name="roleId" value="${role.roleId }" />
				<div>
					<label for="roleName">角色名称：</label>
					<input type="text" name="roleName" id="roleName" value="${role.roleName}" />
					<font color="red"></font>
				</div>
				<div>
					<label>角色状态：</label>
					<select name="roleState" id="roleState">
						<c:if test="${role.roleState eq '启用'}">
							<option value="启用" selected="selected">启用</option>
							<option value="禁用">禁用</option>
						</c:if>
						<c:if test="${role.roleState eq '禁用'}">
							<option value="启用">启用</option>
							<option value="禁用" selected="selected">禁用</option>
						</c:if>
					</select>
				</div>
				<div>
					<label for="roleCreatetime">创建时间：</label>
					<input type="text" Class="Wdate" id="roleCreatetime" name="roleCreatetime" value="${role.roleCreatetime}" readonly="readonly"
						onclick="WdatePicker();"> <font color="red"></font>
				</div>

				<div>
					<label for="roleEmpId">创建人：</label> <input type="text"
						name="roleEmpId" id="roleEmpId" value="${role.roleEmpId}"> <font color="red"></font>
				</div>
				<div>
					<label for="roleDesc">角色描述：</label> <input type="text"
						name="roleDesc" id="roleDesc" value="${role.roleDesc}">
				</div>
				<div>
					<label for="roleDepartmentId">部门名：</label>
					<input type="text" name="roleDepartmentId" id="roleDepartmentId" value="${role.roleDepartmentId}">
				</div>
				<div class="providerAddBtn">
					<input type="submit" name="save" id="save" value="保存" /> <input
						type="button" id="back" name="back" value="返回" onclick="history.back();"/>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="calendar/WdatePicker.js"></script>
	<script type="text/javascript" src="js/userlist.js"></script>
</body>
</html>