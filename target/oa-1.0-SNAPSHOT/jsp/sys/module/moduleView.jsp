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
        <strong>你现在所在的位置是:</strong> <span>菜单管理页面 >> 菜单信息查看页面</span>
    </div>
    <div class="providerView">
        <p>
            <strong>模块编号：</strong><span>${m.moduleId}</span>
        </p>
        <p>
            <strong>模块名称：</strong><span>${m.moduleName}</span>
        </p>
        <p>
            <strong>模块地址：</strong> <span> ${m.moduleMurl} </span>
        </p>
        <p>
            <strong>状态：</strong><span>${m.moduleState}</span>
        </p>
        <p>
            <strong>创建时间：</strong><span>${m.moduleCreatetime}</span>
        </p>

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