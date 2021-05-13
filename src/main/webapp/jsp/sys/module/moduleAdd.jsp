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
<!--主体内容-->
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong> <span>菜单管理 >> 菜单添加页面</span>
    </div>
    <div class="providerAdd">
        <form id="moduleForm" name="moduleForm" method="post" action="sys/module/addModule">
            <input type="hidden" name="method" value="add">
            <div>
                <label for="moduleId">模块编号：</label>
                <input type="text" name="moduleId" id="moduleId" value=""> <font color="red"></font>
            </div>
            <div>
                <label for="moduleName">模块名称：</label>
                <input type="text" name="moduleName" id="moduleName" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="moduleMurl">模块地址：</label>
                <input type="text" name="moduleMurl" id="moduleMurl" value=""> <font color="red"></font>
            </div>
            <div>
                <label>模块状态：</label>
                <select name="moduleState" id="moduleState">
                <option value="启用" selected="selected">启用</option>
                <option value="禁用">禁用</option>
                </select>
            </div>
            <div>
                <label for="moduleCreatetime">创建日期：</label>
                <input type="text" Class="Wdate" id="moduleCreatetime" name="moduleCreatetime" readonly="readonly" onclick="WdatePicker();"> <font color="red"></font>
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
</body>
</html>
