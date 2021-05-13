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
        <strong>你现在所在的位置是:</strong> <span>部门管理页面 >> 部门信息查看页面</span>
    </div>
    <div class="providerView">
        <p>
            <strong>部门编号：</strong><span>${dept.departmentId }</span>
        </p>
        <p>
            <strong>部门名称：</strong><span>${dept.departmentName}</span>
        </p>
        <p>
            <strong>部门人数：</strong> <span> ${dept.departmentNumber} </span>
        </p>
        <p>
            <strong>联系方式：</strong><span>${dept.departmentTelephone}</span>
        </p>
        <p>
        <div class="providerAddBtn">
            <input type="button" id="back" name="back" value="返回" onclick="javascript:history.go(-1)">
        </div>
    </div>
</div>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="calendar/WdatePicker.js"></script>
<script type="text/javascript" src="js/userlist.js"></script>

</body>
</html>