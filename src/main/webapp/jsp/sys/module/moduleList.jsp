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
			<strong>你现在所在的位置是:</strong> <span>菜单管理</span>
		</div>
		<div class="search">
			<form method="get" action="<%=path%>sys/module/searchModule">
				<span>菜单名：</span> 
				<input name="queryname" id="queryName" class="input-text" type="text" value="${queryname}">
				 <input value="查 询" type="submit" id="searchbutton">
				  <a href="/jsp/sys/module/moduleAdd.jsp">添加菜单</a>
			</form>
		</div>
		<!--用户-->
		<table class="providerTable" cellpadding="0" cellspacing="0">
			<tr class="firstTr">
				<th width="10%">菜单编码</th>
				<th width="10%">菜单名</th>
				<th width="30%">菜单地址</th>
				<th width="10%">状态</th>
				<th width="10%">创建时间</th>
				<th width="30%">操作</th>
			</tr>
			<c:forEach items="${pageInfo.list}" var="m">
				<tr>
					<td><span>${m.moduleId}</span></td>
					<td><span>${m.moduleName}</span></td>
					<td><span>${m.moduleMurl}</span></td>
					<td><span>${m.moduleState}</span></td>
					<td><span>${m.moduleCreatetime} </span>
					<td>
						<span>
						   <a class="viewModule" href="/sys/module/viewModule?id=${m.moduleId}">
						     <img src="images/read.png" alt="查看" title="查看" />
						   </a>
						</span> 
						<span>
						   <a class="modifyModule" href="/sys/module/selectModule?id=${m.moduleId}">
						      <img src="images/xiugai.png" alt="修改" title="修改" /></a>
						</span>
						<span>
						   <a class="deleteModule" href="/sys/module/delModule?id=${m.moduleId}">
						     <img src="images/schu.png" alt="删除" title="删除" />
						   </a>
						</span>
					</td>
				</tr>
			</c:forEach>
		</table>
		<!-- 分页 -->
		<div class="page-bar">
			<c:if test="${pageInfo.pageNum>1}">
				<a href="javascript:goPage('',1);">首页</a>
				<a href="javascript:goPage('',<c:out value="${pageInfo.pageNum-1}"/>);">上一页</a>
			</c:if>
			<c:if test="${pageInfo.pageNum<=1}">首页&nbsp;&nbsp;上一页</c:if>
			<c:if test="${pageInfo.pageNum<pageInfo.pages}">
				<a href="javascript:goPage('',<c:out value="${pageInfo.pageNum+1}" />);">下一页</a>
				<a href="javascript:goPage('',<c:out value="${pageInfo.pages}"/>);">最后一页</a>
			</c:if>
			<c:if test="${pageInfo.pageNum>=pageInfo.pages}">下一页&nbsp;&nbsp;尾页</c:if>
			&nbsp;&nbsp; &nbsp;&nbsp;第 ${pageInfo.pageNum}页/共
			${pageInfo.pages}页&nbsp;&nbsp;共${pageInfo.total }条记录
		</div>
	</div>
	<script type="text/javascript">
		function goPage(frm, pageno) {
			var name = document.getElementById("queryName").value;
			location.href = "/sys/module/findAllModule?pageno=" + pageno+"&queryname="+name;
		}
	</script>
	<!--点击删除按钮后弹出的页面-->
	<div class="zhezhao"></div>
	<div class="remove" id="removeUse">
		<div class="removerChid">
			<h2>提示</h2>
			<div class="removeMain">
				<p>你确定要删除该用户吗？</p>
				<a href="#" id="yes">确定</a> <a href="#" id="no">取消</a>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="calendar/WdatePicker.js"></script>
	<script type="text/javascript" src="js/userlist.js"></script>
</body>
</html>