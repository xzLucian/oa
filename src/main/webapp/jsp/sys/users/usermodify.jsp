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
			<strong>你现在所在的位置是:</strong> <span>用户管理 >> 用户修改页面</span>
		</div>
		<div class="providerAdd">
			<form id="userForm" name="userForm" method="post" action="/sys/users/doUpdateEmp">
				<input type="hidden" name="method" value="modifyexe">
				<input type="hidden" name="id" value="${employee.id }" />
				<div>
					<label for="username">用户名称：</label>
					<input type="text" name="username" id="userName" value="${employee.username}">

					<font color="red"></font>
				</div>
				<div>
					<label>用户性别：</label>

					<select name="sex" id="gender">
						<c:if test="${employee.sex eq '男'}">
						<option value="男" selected="selected">男</option>
						<option value="女">女</option>
						</c:if>
						<c:if test="${employee.sex eq '女'}">
							<option value="男">男</option>
							<option value="女" selected="selected">女</option>
						</c:if>
					</select>
				</div>
				<div>
					<label for="birthday">出生日期：</label> <input type="text" Class="Wdate"
						id="birthday" name="birthday" value="${employee.birthday}" readonly="readonly"
						onclick="WdatePicker();"> <font color="red"></font>
				</div>

				<div>
					<label for="phone">用户电话：</label> <input type="text"
						name="phone" id="phone" value="${employee.phone}"> <font color="red"></font>
				</div>
				<div>
					<label for="address">用户地址：</label> <input type="text"
						name="address" id="address" value="${employee.address}">
				</div>
				<div>
					<label>用户角色：</label>
					<!-- 列出所有的角色分类 -->
<%--					<input type="hidden" value="${user.userRole }" id="rid" /> --%>
					<select name="roleId" id="userRole">
						<c:forEach items="${listRole}" var="role">
							<c:choose>
								<c:when test="${employee.roleId eq role.roleId}">
									<option value="${role.roleId}" selected="selected">${role.roleName}</option>
								</c:when>
								<c:otherwise>
									<option value="${role.roleId}">${role.roleName}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
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