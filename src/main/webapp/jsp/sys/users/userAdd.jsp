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
<input type="hidden" id="path" value="<%=request.getContextPath()%>"/>
	<!--主体内容-->
	<div class="right">
		<div class="location">
			<strong>你现在所在的位置是:</strong> <span>用户管理 >> 用户添加页面</span>
		</div>
		<div class="providerAdd">
			<form id="userForm" name="userForm" method="post" action="sys/users/addEmp">
				<!--div的class 为error是验证错误，ok是验证成功-->
				<div>
					<label for="employee_id">员工编码：</label> <input type="text"
						name="employeeId" id="employee_id" value="">
					<!-- 放置提示信息 -->
					<font color="red"></font>
				</div>
				<div>
					<label for="loginuser">账户名：</label> <input type="text"
						name="username" id="loginuser" value=""> <font color="red"></font>
				</div>
				<div>
					<label for="userPassword">密码：</label> <input type="password"
						name="password" id="userPassword" value=""> <font
						color="red"></font>
				</div>
				<div>
					<label for="ruserPassword">再次确认密码：</label> <input type="password"
						name="ruserPassword" id="ruserPassword" value=""> <font
						color="red"></font>
				</div>
				<div>
					<label for="userRole">角色名称：</label>
					<select name="roleId" id="userRole">
						<c:forEach items="${listRole}" var="role">
							<option value="${role.roleId}">${role.roleName}</option>
						</c:forEach>
					</select> <font color="red"></font>
				</div>
				<div>
					<label for="userName">员工名：</label> <input type="text"
						name="employeeName" id="userName" value=""> <font color="red"></font>
				</div>
				<div>
					<label>员工性别：</label> <select name="sex" id="gender">
						<option value="男" selected="selected">男</option>
						<option value="女">女</option>
					</select>
				</div>
				<div>
					<label for="birthday">出生日期：</label> <input type="text"
						Class="Wdate" id="birthday" name="birthday" readonly="readonly"
						onclick="WdatePicker();"> <font color="red"></font>
				</div>
				<div>
					<label for="politics_statas">政治面貌：</label> <input type="text" name="politicsStatas"
						id="politics_statas" value=""> <font color="red"></font>
				</div>
				<div>
					<label for="marriage">婚姻状态：</label> <input type="text" name="marriage"
						id="marriage" value=""> <font color="red"></font>
				</div>

				<div>
					<label for="address">地址：</label> <input name="address" id="address"
						value="">
				</div>
				<div>
					<label for="email">邮箱：</label> <input name="email" id="email"
						value="">
				</div>
								<div>
					<label for="phone">联系方式：</label> <input type="text" name="phone"
						id="phone" value=""> <font color="red"></font>
				</div>
				<div>
					<label for="id_number">身份证号：</label> <input name="idNumber" id="id_number"
						value="">
				</div>
				<div>
					<label for="bankcard">银行卡号：</label> <input name="bankcard" id="bankcard"
						value="">
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
	<script type="text/javascript" src="js/useradd.js"></script> 
</body>
</html>