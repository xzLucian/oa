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
<title>系统登录 - OA</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript">
	/* if(top.location!=self.location){
	      top.location=self.location;
	 } */
</script>
</head>
<body class="login_bg">
	<section class="loginBox">
		<header class="loginHeader">
			<h1>OA日常办公管理系统</h1>
		</header>
		<section class="loginCont">
			<form class="loginForm" action="<%=path%>sys/users/login"
				name="actionForm" id="actionForm" method="post">
				<span style="color: #8f0f51; font-size: 16px">${msg}</span>
				<div class="inputbox">
					<label for="user">用户名：</label> <input type="text"
						class="input-text" id="userCode" value="admin" name="username"
						placeholder="请输入用户名" />
				</div>
				<div class="inputbox">
					<label for="mima">密码：</label> <input type="password"
						id="userPassword" name="password" value="admin"
						placeholder="请输入密码" />
				</div>
				<div class="subBtn">
					<input type="submit" value="登录" /> <input type="reset" value="重置" />
				</div>
			</form>
		</section>
	</section>
</body>
</html>

