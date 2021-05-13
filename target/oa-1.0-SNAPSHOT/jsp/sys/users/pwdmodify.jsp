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
			<strong>你现在所在的位置是:</strong> <span>密码修改页面</span>
		</div>
		<div class="providerAdd">
			<form id="userForm" name="userForm" method="post"
				action="${pageContext.request.contextPath }/jsp/user.do">
				<input type="hidden" name="method" value="savepwd">
				<div class="">
					<label for="oldPassword">旧密码：</label> <input type="password"
						name="oldpassword" id="oldpassword" value=""> <font
						color="red"></font>
				</div>
				<div>
					<label for="newPassword">新密码：</label> <input type="password"
						name="newpassword" id="newpassword" value=""> <font
						color="red"></font>
				</div>
				<div>
					<label for="reNewPassword">确认新密码：</label> <input type="password"
						name="rnewpassword" id="rnewpassword" value=""> <font
						color="red"></font>
				</div>
				<div class="providerAddBtn">
					<!--<a href="#">保存</a>-->
					<input type="button" name="save" id="save" value="保存"
						class="input-button">
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="calendar/WdatePicker.js"></script>
</body>
</html>