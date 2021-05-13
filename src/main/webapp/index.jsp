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
<title>Lucian办公自动化管理系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/public.css" />
<style type="text/css">
body {
	background: #4287c2;
}
</style>
</head>
<%
	String images = request.getContextPath() + "/images";
	session.setAttribute("images", images);
%>
<body>
	<jsp:include page="./common/indexTop.jsp"></jsp:include>
	<div class="main">
		<!--主体内容-->
		<section class="publicMian ">
			<!-- 左侧边栏 -->
			<jsp:include page="./common/indexSidebar.jsp" />
			<!-- 右侧内容 -->
			<%-- 	<jsp:include page="./common/indexRightbar.jsp" /> --%>
			<iframe name="mainFrame" frameborder="0" scrolling="no" width="100%"
				height="1000px" src="${path}welcome.jsp"></iframe>
		</section>
	</div>
	<jsp:include page="./common/indexBottom.jsp"></jsp:include>
</body>
</html>
