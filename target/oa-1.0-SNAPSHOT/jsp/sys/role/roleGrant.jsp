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
<style type="text/css">
#treeMenu ul {
	list-style: none;
	margin-left: 50px;
}

#treeMenu li {
	width: 150px;
	float: left;
	text-align: left;
}

#treeMenu li label {
	cursor: pointer;
}

.hidden {
	display: none;
}
</style>
</head>
<body>
	<div class="right">
		<div class="location">
			<strong>你现在所在的位置是:</strong> <span>角色管理页面 >> 角色授权</span>
		</div>
		<div class="search">
			<form method="get" action="">
				<a href="javascript:void(0)" onclick="doSubmit()">保存</a>
			</form>
		</div>
		<form action="sys/role/roleGrant?rid=${emp.roleId}" method="post"
			id="mySearch">
			<input type="hidden" name="roleId" value="${role.roleId }" />
			<table class="providerTable">
				<tr>
					<th width="10%">角色名称</th>
					<td>${role.roleName}</td>
				</tr>
				<tr>
					<th>赋权</th>
					<td>
						<ul id="treeMenu" class="forminfo">
							<c:forEach items="${mlist}" var="root" varStatus="i">
								<li>
								    <input type="checkbox" name="mids" id="mids${i.index}" value="${root.moduleId}"
									<c:forEach items="${mclist}" var="croot">
										<c:if test="${root.moduleId==croot.moduleId }">checked</c:if>
									</c:forEach> />
									<label for="mids${i.index}"> ${root.moduleName}</label>
							    </li>
							</c:forEach>
						</ul>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
		function doSubmit() {
			document.getElementById("mySearch").submit();
		}
	</script>
</body>
</html>